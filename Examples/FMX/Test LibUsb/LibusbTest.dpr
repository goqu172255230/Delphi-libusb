program LibusbTest;

uses
  System.StartUpCopy,
  FMX.Forms,
  libusb1 in '..\..\..\Src\libusb1.pas',
  libusb1helper in '..\..\..\Src\libusb1helper.pas',
  main in 'main.pas' {fmmain},
  testlibusb in 'testlibusb.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfmmain, fmmain);
  Application.Run;
end.
