#define MyAppName "Microsoft .NET Framework 3.5"
#define MyAppNameS "Microsoft .NET Framework 3.5 Setup"
#define MyAppProduct "Microsoft® .NET Framework"
#define MyAppVersion "3.5.30729.8833"
#define MyAppCompany "Microsoft Corporation"
#define MyAppCopyright "© Microsoft Corporation. All rights reserved."
#define MyAppExeName "dotnetfx35.exe"

[Setup]
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppCopyright={#MyAppCopyright}
VersionInfoDescription={#MyAppNameS}
VersionInfoProductName={#MyAppProduct}
VersionInfoCompany={#MyAppCompany}
VersionInfoVersion={#MyAppVersion}
CreateAppDir=no
OutputDir=.
OutputBaseFilename=dotNetFx35_WX_4_x86_x64
Compression=zip/1
InternalCompressLevel=ultra
SolidCompression=yes
PrivilegesRequired=admin
ArchitecturesAllowed=x86 x64
ArchitecturesInstallIn64BitMode=x64
Uninstallable=false
SetupIconFile=3000.ico
WizardImageFile=3001.bmp
WizardSmallImageFile=3002.bmp

[Files]
Source: "7za32.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
Source: "7za64.exe"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
Source: "NET35.cmd"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall
Source: "dotNetFx35.7z"; DestDir: "{tmp}"; Flags: ignoreversion deleteafterinstall

[Run]
Filename: "{tmp}\7za32.exe"; Parameters: "x ""{tmp}\dotNetFx35.7z"" -o""{tmp}\"" x86\* -r -aoa"; Check: not IsWin64; StatusMsg: "Extracting files..."; Flags: runhidden
Filename: "{tmp}\7za64.exe"; Parameters: "x ""{tmp}\dotNetFx35.7z"" -o""{tmp}\"" x64\* -r -aoa"; Check: IsWin64; StatusMsg: "Extracting files..."; Flags: runhidden
Filename: "{tmp}\NET35.cmd"; StatusMsg: "Processing installation..."; Flags: skipifsilent
Filename: "{tmp}\NET35.cmd"; Parameters: "/s"; StatusMsg: "Processing installation..."; Flags: runhidden skipifnotsilent

[Languages]
Name: "default"; MessagesFile: "compiler:Default.isl"