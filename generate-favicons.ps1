Add-Type -AssemblyName System.Drawing

# ── Config ────────────────────────────────────────────────────────────────
$NAVY  = [System.Drawing.Color]::FromArgb(255, 11, 29, 53)   # #0b1d35
$WHITE = [System.Drawing.Color]::White
$outDir = "c:\Users\stefa\Documents\Neptune Claude\neptune-site\assets\favicon"
New-Item -ItemType Directory -Force -Path $outDir | Out-Null

# ── Diagonal stroke helper ─────────────────────────────────────────────────
# Returns a PointF[] parallelogram for a thick angled line (x1,y1)→(x2,y2)
# All inputs are 0–1 normalised coords; $sc is pixels-per-unit
function Get-StrokePoly([double]$x1,[double]$y1,[double]$x2,[double]$y2,[double]$hw,[double]$sc) {
    $dx  = $x2 - $x1; $dy = $y2 - $y1
    $len = [Math]::Sqrt($dx*$dx + $dy*$dy)
    $ox  = ($dy / $len) * $hw * $sc   # perpendicular offset x
    $oy  = -($dx / $len) * $hw * $sc  # perpendicular offset y
    # Winding: right-side, right-tip, left-tip, left-side (no bowtie)
    return [System.Drawing.PointF[]]@(
        [System.Drawing.PointF]::new([float]($x1*$sc + $ox), [float]($y1*$sc + $oy)),
        [System.Drawing.PointF]::new([float]($x2*$sc + $ox), [float]($y2*$sc + $oy)),
        [System.Drawing.PointF]::new([float]($x2*$sc - $ox), [float]($y2*$sc - $oy)),
        [System.Drawing.PointF]::new([float]($x1*$sc - $ox), [float]($y1*$sc - $oy))
    )
}

# ── Trident bitmap generator ───────────────────────────────────────────────
#
# Neptune mark: horizontal trident pointing RIGHT
#   - right vertical spine (connector)
#   - upper-left diagonal prong from connector (~25° below horizontal going left)
#   - lower-left diagonal prong (exact mirror)
#   - centre horizontal shaft + right-pointing arrowhead
#
# Geometry tuned so prong-root polygon corners land exactly on the
# connector top/bottom edges → no "ear" artefacts at the junction.
function New-TridentBitmap([int]$size) {

    $rSize = if ($size -lt 64) { 512 } else { [Math]::Max($size, 512) }
    $sc    = [double]$rSize

    $bmp = New-Object System.Drawing.Bitmap($rSize, $rSize, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g   = [System.Drawing.Graphics]::FromImage($bmp)
    $g.SmoothingMode   = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g.PixelOffsetMode = [System.Drawing.Drawing2D.PixelOffsetMode]::HighQuality
    $g.Clear($NAVY)
    $brush = New-Object System.Drawing.SolidBrush($WHITE)

    # ── Geometry (all normalised 0–1) ──────────────────────────────────────

    # Stroke weight (proportional; slightly boosted for tiny icons)
    $sw = if ($size -le 32) { 0.096 } else { 0.082 }
    $hw = $sw * 0.5   # half-width for perpendicular offset

    # Connector (right vertical spine)
    $cL = 0.522;  $cR = $cL + $sw
    $cT = 0.152;  $cB = 0.848
    $cX = ($cL + $cR) * 0.5   # ≈ 0.563

    # Prong direction: 25° below/above horizontal going left
    # dx = 0.112 – cX ≈ –0.451, dy = 0.448 × tan(25°) ≈ 0.210
    $pTipX = 0.112
    $dx = $pTipX - $cX                            # ≈ –0.451
    $dyDown = [Math]::Abs($dx) * [Math]::Tan(25.0 * [Math]::PI / 180.0)  # ≈ 0.210
    $pLen  = [Math]::Sqrt($dx*$dx + $dyDown*$dyDown)

    # Perpendicular half-offset in the Y direction (used to correct prong root Y
    # so the "outer" polygon corner lands exactly on the connector top/bottom edge)
    $oyNorm = ([Math]::Abs($dx) / $pLen) * $hw   # ≈ 0.040

    # Prong roots: pushed inward from the connector edge by $oyNorm so the
    # upper-outer corner is flush with the connector top (and lower-outer with bottom)
    $upY1 = $cT + $oyNorm;  $upY2 = $upY1 + $dyDown   # upper prong root → tip
    $loY1 = $cB - $oyNorm;  $loY2 = $loY1 - $dyDown   # lower prong root → tip

    # Centre shaft
    $shL = $cL;  $shR = 0.760
    $shT = 0.5 - $hw;  $shB = 0.5 + $hw

    # Arrowhead (right-pointing triangle, spans ~2.8× shaft half-height each side)
    $ahBase = $shR;  $ahTip = 0.888
    $ahTop  = 0.5 - $sw * 1.45;  $ahBot = 0.5 + $sw * 1.45

    # ── Draw order: prongs first, then connector on top (covers root junction) ──

    $g.FillPolygon($brush, (Get-StrokePoly $cX $upY1 $pTipX $upY2 $hw $sc))  # upper prong
    $g.FillPolygon($brush, (Get-StrokePoly $cX $loY1 $pTipX $loY2 $hw $sc))  # lower prong

    # Connector (drawn after prongs to get clean edge at junction)
    $g.FillRectangle($brush, [float]($cL*$sc), [float]($cT*$sc),
                              [float]($sw*$sc), [float](($cB-$cT)*$sc))

    # Shaft
    $g.FillRectangle($brush, [float]($shL*$sc), [float]($shT*$sc),
                              [float](($shR-$shL)*$sc), [float](($shB-$shT)*$sc))

    # Arrowhead
    $g.FillPolygon($brush, [System.Drawing.PointF[]]@(
        [System.Drawing.PointF]::new([float]($ahBase*$sc), [float]($ahTop*$sc)),
        [System.Drawing.PointF]::new([float]($ahTip *$sc), [float](0.5    *$sc)),
        [System.Drawing.PointF]::new([float]($ahBase*$sc), [float]($ahBot *$sc))
    ))

    $g.Dispose(); $brush.Dispose()

    # Return at render size if no downscaling needed
    if ($size -eq $rSize) { return $bmp }

    # High-quality bicubic downsample
    $out = New-Object System.Drawing.Bitmap($size, $size, [System.Drawing.Imaging.PixelFormat]::Format32bppArgb)
    $g2  = [System.Drawing.Graphics]::FromImage($out)
    $g2.InterpolationMode  = [System.Drawing.Drawing2D.InterpolationMode]::HighQualityBicubic
    $g2.CompositingQuality = [System.Drawing.Drawing2D.CompositingQuality]::HighQuality
    $g2.SmoothingMode      = [System.Drawing.Drawing2D.SmoothingMode]::AntiAlias
    $g2.CompositingMode    = [System.Drawing.Drawing2D.CompositingMode]::SourceCopy
    $g2.DrawImage($bmp, [System.Drawing.Rectangle]::new(0, 0, $size, $size))
    $g2.Dispose(); $bmp.Dispose()
    return $out
}

# ── Save PNGs ─────────────────────────────────────────────────────────────
$fileSizes = [ordered]@{
    "favicon-16x16.png"          = 16
    "favicon-32x32.png"          = 32
    "apple-touch-icon.png"       = 180
    "android-chrome-192x192.png" = 192
    "android-chrome-512x512.png" = 512
}

$bitmaps = @{}
foreach ($fn in $fileSizes.Keys) {
    $sz  = $fileSizes[$fn]
    $bmp = New-TridentBitmap -size $sz
    $bmp.Save((Join-Path $outDir $fn), [System.Drawing.Imaging.ImageFormat]::Png)
    $bitmaps[$sz] = $bmp
    Write-Host "  Saved  $fn  ($sz x $sz)"
}

# ── Build favicon.ico (16×16 + 32×32, PNG-compressed, Vista+ format) ──────
function Get-PngBytes($bmp) {
    $ms = New-Object System.IO.MemoryStream
    $bmp.Save($ms, [System.Drawing.Imaging.ImageFormat]::Png)
    $b = $ms.ToArray()
    $ms.Dispose()
    return ,$b
}

$b16 = Get-PngBytes $bitmaps[16]
$b32 = Get-PngBytes $bitmaps[32]

$ms = New-Object System.IO.MemoryStream
$bw = New-Object System.IO.BinaryWriter($ms)

# ICO header (6 bytes)
$bw.Write([uint16]0)   # reserved
$bw.Write([uint16]1)   # type = ICO
$bw.Write([uint16]2)   # count

# Offsets: 6-byte header + 2 × 16-byte dir entries = 38
$off16 = [uint32]38
$off32 = [uint32]($off16 + $b16.Length)

# Directory entry: 16×16
$bw.Write([byte]16); $bw.Write([byte]16)
$bw.Write([byte]0);  $bw.Write([byte]0)
$bw.Write([uint16]1); $bw.Write([uint16]32)
$bw.Write([uint32]$b16.Length); $bw.Write($off16)

# Directory entry: 32×32
$bw.Write([byte]32); $bw.Write([byte]32)
$bw.Write([byte]0);  $bw.Write([byte]0)
$bw.Write([uint16]1); $bw.Write([uint16]32)
$bw.Write([uint32]$b32.Length); $bw.Write($off32)

# PNG data
$bw.Write($b16); $bw.Write($b32)
$bw.Flush()

$icoBytes = $ms.ToArray()
$bw.Dispose()
[System.IO.File]::WriteAllBytes((Join-Path $outDir "favicon.ico"), $icoBytes)
Write-Host "  Saved  favicon.ico  (16×16 + 32×32 embedded)"

# ── site.webmanifest ───────────────────────────────────────────────────────
@'
{
  "name": "Neptune Whole Home Filtration",
  "short_name": "Neptune",
  "description": "Melbourne's whole-home water filtration specialists.",
  "icons": [
    {
      "src": "/assets/favicon/android-chrome-192x192.png",
      "sizes": "192x192",
      "type": "image/png"
    },
    {
      "src": "/assets/favicon/android-chrome-512x512.png",
      "sizes": "512x512",
      "type": "image/png"
    }
  ],
  "theme_color": "#0b1d35",
  "background_color": "#0b1d35",
  "display": "standalone",
  "start_url": "/"
}
'@ | Out-File -FilePath (Join-Path $outDir "site.webmanifest") -Encoding utf8 -NoNewline
Write-Host "  Saved  site.webmanifest"

# ── Cleanup ────────────────────────────────────────────────────────────────
foreach ($k in $bitmaps.Keys) { $bitmaps[$k].Dispose() }

Write-Host ""
Write-Host "All files written to: $outDir"
Get-ChildItem $outDir | ForEach-Object { Write-Host "  $($_.Name)  ($([Math]::Round($_.Length/1KB,1)) KB)" }
