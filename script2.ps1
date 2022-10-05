$files = Import-Csv -Path 'C:\Users\Administrator\herhaling\bestand.csv'

foreach ($file in $files)
{
    if (Test-Path -Path ($file.PATH+'\'+$file.NAME))
    {
    'Het bestaat al.'
    }
    
    else
    {
        if ($file.ISFILE -eq 'yes')
        {
        New-Item -Path $file.PATH -ItemType file -Name $file.NAME -Force
        }
        elseif ($file.ISFOLDER -eq 'yes')
        {
        New-Item -Path $file.PATH -ItemType directory -Name $file.NAME
        }
    }
}