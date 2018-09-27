program Fxloadproj;

uses
  Vcl.Forms,
  main in 'main.pas' {Fmmain},
  fxload in 'fxload.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFmmain, Fmmain);
  Application.Run;
end.
