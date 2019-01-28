# .NET 3.5 Feature Installer for Windows 10 x86/x64

* Standalone Offline Installer to enable (install .NET Framework 3.5 feature for Windows 10

* Windows 10 images already contain language resources for .NET 3.5  
this is basically an AIO for microsoft-windows-netfx3-ondemand-package.cab for both architectures.

* Important: only/best workable on a freshly installed system with no updates applied.

* Usage:  
- Run as administrator  
- Click Next to begin the process  
- Wait for the extraction process to complete  
- Wait for the installation/adding process to complete  

* Command line switches:
```
/ai  
Passive mode, shows operation progress but requires no user interaction.

/ais  
Quiet mode, no user input required, only extraction dialog is shown.

/ais /gm2  
Silent mode, no user input required or any output shown.
```

* Note: NET35.cmd needs to be updated for each new Windows 10 build.

* Credits for the GUI module by [ricktendo64](https://forums.mydigitallife.net/members/28038/).

* Older releases:  

Windows 10 builds 17134/16299/15063/14393  
```
  File: dotNetFx35_WX_6_x86_x64.exe  
  SHA1: f52a6aee447d39f35dace3d15f76d39019c65bec  
SHA256: 3960b5cdcca5fb378bd3616170ced0f0dd39707513f2fa8e82e9c71b62002d8d
```

(https://drive.google.com/open?id=13udwgPrbRSsiZKfrdXddTmeMhJG7bcgL)  
(https://mega.nz/#!H403xDqb!CHdgLmDI5zVJywIKRjlZMvRVowYsZkMzoO-sdFe2sW0)  

switches:  
```
Automatically install the package and display progress:  
dotNetFx35_WX_6_x86_x64.exe /SILENT /NORESTART  

Silently install the package and display no progress:  
dotNetFx35_WX_6_x86_x64.exe /VERYSILENT /NORESTART
```
