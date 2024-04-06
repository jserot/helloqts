[Setup]
AppId={{5D1BF4DD-8593-48B4-96CA-0225513733D8}
AppName=hello
AppVersion=1.0
UsePreviousAppDir=false
DefaultDirName={commonpf}/hello
DefaultGroupName=hello
Compression=none
;Compression=lzma2
;SolidCompression=yes
OutputBaseFilename=hello_setup
OutputDir=.

[Files]
Source: "..\..\src\release\*"; DestDir: "{app}"; Flags: recursesubdirs
 
[Icons]

[Run]
Filename: "{app}\hello.exe"; Description: "Launch application"; Flags: postinstall nowait skipifsilent unchecked

[INI]

[UninstallDelete]

