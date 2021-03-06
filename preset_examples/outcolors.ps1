param (
    [string]$preset = ""
)

function Out-Color()
{
    [enum]::GetValues([ConsoleColor]) | ForEach-Object {
        Write-Host -NoNewLine "$($_.value__) : $_`t"
        Write-Host "COLOR`t" -ForegroundColor $_ -NoNewLine
        Write-Host "`t" -BackgroundColor $_
    }
}

Write-Host "Displaying $preset preset"

Out-Color
