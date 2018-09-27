program Fxloadproj;

uses
  System.StartUpCopy,
  FMX.Forms,
  main in 'main.pas' {fmmain},
  libusb1 in '..\Libusb1Src\libusb1.pas',
  fxload in 'fxload.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmmain, fmmain);
  Application.Run;
end.
