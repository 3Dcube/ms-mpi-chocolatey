$ErrorActionPreference = 'Stop';
$toolsDir = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
    packageName    = $env:ChocolateyPackageName
    fileType       = 'exe'
    file           = Join-Path $toolsDir 'MSMpiSetup.exe'

    softwareName   = 'Microsoft MPI (8.1.12438.1084)'

    silentArgs     = "-unattend -force -full"
    validExitCodes = @(0)
}

Install-ChocolateyInstallPackage @packageArgs
