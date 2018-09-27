unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TFmmain = class(TForm)
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    Panel1: TPanel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
   function showscript:string;
    { Public declarations }
  end;

var
  Fmmain: TFmmain;

implementation
uses
fxload;

{$R *.dfm}

procedure TFmmain.Button1Click(Sender: TObject);
var
success:string;
begin
if opendialog1.execute then
                                                  //Extractfiledir(ParamStr(0))+pathdelim+'Yourfile.hex')

success:= fxloadfile(Extractfiledir(ParamStr(0))+pathdelim+'fxload.exe',opendialog1.filename);
 memo1.Lines.Add(success);
end;

procedure TFmmain.FormShow(Sender: TObject);
begin
  memo1.lines.clear;
 memo1.lines.add(showscript);
end;

 function TFmmain.showscript:string;
begin

result:=
'     Microsoft Windows [Version 10.0.17134.254]                 ' +#13#10+
'(c) 2018 Microsoft Corporation. All rights reserved.             '+#13#10+
' The example requires the various switched inputs to be included before running  '+#13#10+
'Usage: fxload [-v] [-V] [-t type] [-d vid:pid] [-p bus,addr] [-s loader] -i firmware ' +#13#10+
'  -i <path>       -- Firmware to upload                                          ' +#13#10+
'  -s <path>       -- Second stage loader                                        '+#13#10+
'  -t <type>       -- Target type: an21, fx, fx2, fx2lp, fx3                    ' +#13#10+
'  -d <vid:pid>    -- Target device, as an USB VID:PID                           ' +#13#10+
'  -p <bus,addr>   -- Target device, as a libusb bus number and device address path '  +#13#10+
'  -v              -- Increase verbosity                    '  +#13#10+
'  -q              -- Decrease verbosity (silent mode)   '  +#13#10+
'  -V              -- Print program version  ' +#13#10+
 '                                         '+#13#10+
 'example                                  '+#13#10+
 ' FXloadexe + -I yourfilename -t fx -d 2010:1089 vv   '+#13#10+
 ' step 1 change the Vid /Pid numbers   '+#13#10+
 ' step 2 run ';
end;


end.
