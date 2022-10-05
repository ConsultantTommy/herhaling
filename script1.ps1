$files = Get-Content -Path 'C:\Users\Administrator\herhaling\bestand.txt'

foreach ($file in $files)
{
    if (Test-Path -Path $file)
    {
    'De mappen bestaan al'
    }
    else
    {
    New-Item -Path $file -ItemType directory
    }
}