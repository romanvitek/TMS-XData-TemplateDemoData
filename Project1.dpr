program Project1;

uses
  Vcl.Forms,
  UServerContainer in 'units\UServerContainer.pas' {ServerContainer: TDataModule},
  UMain in 'units\UMain.pas' {MainForm},
  UDBSupport in 'units\UDBSupport.pas' {DBSupport: TDataModule},
  SystemService in 'units\SystemService.pas',
  SystemServiceImplementation in 'units\SystemServiceImplementation.pas',
  TZDB in 'TZDB.pas',
  PersonService in 'units\PersonService.pas',
  PersonServiceImplementation in 'units\PersonServiceImplementation.pas',
  DashboardService in 'units\DashboardService.pas',
  DashboardServiceImplementation in 'units\DashboardServiceImplementation.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'TMS XData Template Demo Data';
  Application.CreateForm(TServerContainer, ServerContainer);
  Application.CreateForm(TMainForm, MainForm);
  Application.CreateForm(TDBSupport, DBSupport);
  Application.Run;
end.
