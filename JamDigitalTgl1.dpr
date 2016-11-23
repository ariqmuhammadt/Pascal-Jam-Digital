program JamDigitalTgl1;

uses
  Forms,
  JamDigital in 'JamDigital.pas' {FJam},
  JamDigitalTgl in '..\JamDigitalTgl.pas' {FFoto};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFJam, FJam);
  Application.CreateForm(TFFoto, FFoto);
  Application.Run;
end.
