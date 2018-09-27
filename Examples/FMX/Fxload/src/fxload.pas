unit fxload;

interface
uses
Winapi.windows,Winapi.Shellapi,System.SysUtils,System.Types,
System.UITypes,System.Classes,System.Variants,VCL.Forms;

function fxloadfile(FXloadexe,filename:string):string;

implementation

function fxloadfile(FXloadexe,filename:string):string;
var
   SEInfo: TShellExecuteInfo;
   ExitCode: DWORD;
   ExecuteFile, ParamString, StartInString: string;
   Fulldirectory:string;
begin
result:= '';

  //eg ... FXloadexe +' -I ' +filename+ ' -t fx vv';
   Fulldirectory := FXloadexe ;
    ExecuteFile:=Fulldirectory;
   ParamString:= ' -I ' + filename + ' -t fx2 -d 2000:1265 vvv ';
   FillChar(SEInfo, SizeOf(SEInfo), 0) ;
   SEInfo.cbSize := SizeOf(TShellExecuteInfo) ;
   with SEInfo do begin
     fMask := SEE_MASK_NOCLOSEPROCESS;
     Wnd := Application.Handle;
     lpFile := PChar(ExecuteFile) ;
 lpParameters := PChar(ParamString) ;
     nShow := SW_SHOWNORMAL; //SW_HIDE;
   end;
   if ShellExecuteEx(@SEInfo) then begin
     repeat
       Application.ProcessMessages;
       GetExitCodeProcess(SEInfo.hProcess, ExitCode) ;
     until (ExitCode <> STILL_ACTIVE) or
Application.Terminated;
    result:='FXload completed' ;
   end
   else result:='Error Loading a File!' ;
end;

end.
