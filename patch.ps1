# This file will apply the patches to CyberChef, given the base URL of the
# CyberChef installation.
#
# Author: Jonathan Gregson <jonathan@jdgregson.com>

Param (
    [string]
    $CyberChefBasePath
)

if (Test-Path $CyberChefBasePath) {
    Write-Host "Replacing images..."
    Copy-Item -Force "$PSScriptRoot\images\*" "$CyberChefBasePath\images"

    Write-Host "Patching CSS..."
    if (Test-Path "$CyberChefBasePath\assets\main.css.bak") {
        Get-Content "$CyberChefBasePath\assets\main.css.bak" > "$CyberChefBasePath\assets\main.css"
    } else {
        Get-Content "$CyberChefBasePath\assets\main.css" > "$CyberChefBasePath\assets\main.css.bak"
    }
    $css = Get-Content "$CyberChefBasePath\assets\main.css"
    $css = $css -Replace "--title-background-colour: #333","--title-background-colour: #263238"
    $css = $css -Replace "--secondary-border-colour: #3c3c3c","--secondary-border-colour: #263238"
    $css = $css -Replace "--primary-border-colour: #444","--primary-border-colour: #263238"
    $css = $css -replace "--primary-background-colour: #1e1e1e","--primary-background-colour: #1b2226"
    $css = $css -replace "--primary-font-colour: #c5c5c5","--primary-font-colour: #4e6068"
    $css = $css -replace "--secondary-background-colour: #252525","--secondary-background-colour: #263238"
    $css = $css -replace "--op-list-operation-bg-colour: #333","--op-list-operation-bg-colour: #1b2226"
    $css = $css -replace "--op-list-operation-border-colour: #444","--op-list-operation-border-colour: #1b2226"
    $css = $css -replace "--op-list-operation-font-colour: #c5c5c5","--op-list-operation-font-colour: #4e6068"
    $css = $css -replace "--selected-operation-font-color: #c5c5c5","--selected-operation-font-color: #1b2226"
    $css = $css -replace "--selected-operation-bg-colour: #3f3f3f","--selected-operation-bg-colour: #05afc4"
    $css = $css -replace "--fc-operation-font-colour: #c5c5c5","--fc-operation-font-colour: #1b2226"
    $css = $css -replace "--fc-operation-bg-colour: #2d2d2d","--fc-operation-bg-colour: #05afc4"
    $css = $css -replace "--rec-list-operation-font-colour: #c5c5c5","--rec-list-operation-font-colour: #05afc4"
    $css = $css -replace "--rec-list-operation-bg-colour: #252525","--rec-list-operation-bg-colour: #263238"
    $css = $css -replace "--banner-font-colour: #c5c5c5","--banner-font-colour: #05afc4"
    $css = $css -replace "--title-colour: #fff","--title-colour: #05afc4"
    $css = $css -replace "--arg-label-colour: rgb\(25, 118, 210\)","--arg-label-colour: #05afc4"
    $css = $css -replace "--arg-background: #3c3c3c","--arg-background: #1b2226"
    $css = $css -replace "--btn-default-hover-border-colour: #205375","--btn-default-hover-border-colour: #05afc4"
    $css = $css -replace "--btn-success-border-colour: #0e639c","--btn-success-border-colour: #05afc4"
    $css = $css -replace "--btn-success-hover-bg-colour: #0e639c","--btn-success-hover-bg-colour: #08c7de"
    $css = $css -replace "--btn-success-hover-border-colour: #0e639c","--btn-success-hover-border-colour: #05afc4"
    $css = $css -replace "--btn-success-bg-colour: #073655","--btn-success-bg-colour: #05afc4"
    $css = $css -replace "--drop-file-border-colour: #0e639c","--drop-file-border-colour: #05afc4"
    $css = $css -replace "--code-background: #0e639c","--code-background: #05afc4"
    $css = $css -replace "--code-font-colour: #fff","--code-font-colour: #1b2226"
    $css = $css -replace "--disabled-bg-colour: #444","--disabled-bg-colour: #151c1f"
    $css = $css -replace "--breakpoint-bg-colour: #073655","--breakpoint-bg-colour: #05afc4"
    $css = $css -replace "--breakpoint-font-colour: #ddd","--breakpoint-font-colour: #1b2226"
    $css = $css -replace "--popover-background: #444","--popover-background: #1b2226"
    $css = $css -replace "--popover-border-colour: #555","--popover-border-colour: #263238"
    $css = $css -replace "--scrollbar-thumb: #424242","--scrollbar-thumb: #05afc4"
    $css = $css -replace "--scrollbar-track: #1e1e1e","--scrollbar-track: #0a464e"
    $css = $css -replace "--scrollbar-hover: #4e4e4e","--scrollbar-hover: #05afc4"
    $css = $css -replace "#rec-list .operation {","#rec-list .operation {`nmargin: 5px;`nborder: none !important;`n"
    $css = $css -replace ".hljs {",".break .form-group input {color: #05afc4 !important;}`n.hljs {"
    $css = $css -replace ".hljs {",".break .form-group .check {border: 0.125rem solid #1b2327 !important;}`n.hljs {"
    $css = $css -replace ".hljs {",".break .recip-icons .disable-icon, .break .recip-icons .breakpoint {color: #1b2327 !important;}`n.hljs {"
    $css = $css -replace ".hljs {",".close {color: #05afc4 !important;text-shadow: none !important;}`n.hljs {"
    $css = $css -replace ".hljs {",".close:hover {color: #05afc4 !important;}`n.hljs {"
    $css = $css -replace ".hljs {","::selection {background: #05afc4;color: #1b2226;}::-moz-selection {background: #05afc4;color: #1b2226;}`n.hljs {"
    $css = $css -replace ".hljs {","#input-highlighter, #output-highlighter {color: #4e6068 !important;}`n`n.hljs {"
    $css = $css -replace "color: #1976d2","color: #05afc4"
    $css = $css -replace "rgba\(0, 0, 0, 0.54\)","#05afc4"
    $css = $css -replace ".break .form-group \* { color: white !important; color: var\(--breakpoint-font-colour\) !important; }",".break .form-group * { color: #05afc4 !important; color: #4e6068 !important; }"
    $css > "$CyberChefBasePath\assets\main.css"

    Write-Host "Patching JavaScript..."
    if (Test-Path "$CyberChefBasePath\assets\main.js.bak") {
        Get-Content "$CyberChefBasePath\assets\main.js.bak" > "$CyberChefBasePath\assets\main.js"
    } else {
        Get-Content "$CyberChefBasePath\assets\main.js" > "$CyberChefBasePath\assets\main.js.bak"
    }
    $js = Get-Content "$CyberChefBasePath\assets\main.js"
    $js = $js -Replace "Bake!","Execute"
    $js | Set-Content -Encoding "ASCII" "$CyberChefBasePath\assets\main.js"
    Get-Content "$PSScriptRoot\patches.js" | Add-Content "$CyberChefBasePath\assets\main.js"

    Write-Host "Patching HTML..."
    if (-not(Test-Path "$CyberChefBasePath\index.html")) {
        Write-Error "index.html not found!"
        Exit
    }
    if (Test-Path "$CyberChefBasePath\index.html.bak") {
        Get-Content "$CyberChefBasePath\index.html.bak" | Set-Content -Encoding "ASCII" "$CyberChefBasePath\index.html"
    } else {
        Get-Content "$CyberChefBasePath\index.html" | Set-Content -Encoding "ASCII" "$CyberChefBasePath\index.html.bak"
    }
    $html = Get-Content "$CyberChefBasePath\index.html"
    $html = $html -Replace "<span>Bake!</span>","<span>Execute</span>"
    $html = $html -Replace ">Auto Bake<",">Auto Exec<"
    $html | Set-Content -Encoding "ASCII" "$CyberChefBasePath\index.html"

} else {
    Write-Warning "`"$CyberChefBasePath`" is not a valid path."
}
