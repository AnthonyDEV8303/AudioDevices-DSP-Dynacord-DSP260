#define DriverPath "C:\Users\Anthony\Desktop\Drivers"

[Setup]
AppName=Dynacord DSP260 Driver W10
AppVersion=1.0.1
AppPublisher=AnthonyDEV
AppPublisherURL=anthonydev8303@protonmail.com
DefaultDirName={tmp}
OutputDir=.
OutputBaseFilename=Dynacord DSP260 Driver W10
Compression=lzma2
SolidCompression=yes
PrivilegesRequired=admin
ArchitecturesInstallIn64BitMode=x64
DisableProgramGroupPage=yes
Uninstallable=no
SetupIconFile=C:\Users\Name*\Desktop\ICON.ico <-- change path

[Files]
Source: "{#DriverPath}\*"; DestDir: "{tmp}\drivers"; Flags: recursesubdirs

[Code]
function Is64BitWindows(): Boolean;
begin
  Result := IsWin64;
end;

procedure InstallDrivers();
var
  PnpUtilPath: string;
  ResultCode: Integer;
begin
  if Is64BitWindows() then
    PnpUtilPath := ExpandConstant('{win}\SysNative\pnputil.exe')
  else
    PnpUtilPath := ExpandConstant('{win}\System32\pnputil.exe');

  if FileExists(PnpUtilPath) then
  begin
    Exec(PnpUtilPath, '/add-driver "' + ExpandConstant('{tmp}\drivers\*.inf') + '" /subdirs /install', '', SW_HIDE, ewWaitUntilTerminated, ResultCode);
  end
  else
    MsgBox('Errore: pnputil.exe non trovato!', mbError, MB_OK);
end;

procedure CurStepChanged(CurStep: TSetupStep);
begin
  if CurStep = ssPostInstall then
    InstallDrivers();
end;
