program MailChimpVCL;

uses
  Vcl.Forms,
  FrmTeste in 'FrmTeste.pas' {Form1},
  uClasses in 'uClasses.pas',
  FrmCadastroDeLista in 'FrmCadastroDeLista.pas' {fCadastroDeListas},
  FrmCadastroCampanha in 'FrmCadastroCampanha.pas' {CadastroDeCampanha};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
