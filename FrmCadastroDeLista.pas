unit FrmCadastroDeLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TfCadastroDeListas = class(TForm)
    GroupBox1: TGroupBox;
    edtName: TEdit;
    lblName: TLabel;
    EdtPermissionReminder: TEdit;
    lblPermissionReminder: TLabel;
    CheckBox1: TCheckBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    edtFromName: TEdit;
    Label1: TLabel;
    edtFromEmail: TEdit;
    Label2: TLabel;
    edtSubject: TEdit;
    Label3: TLabel;
    edtLanguage: TEdit;
    Label4: TLabel;
    edtName2: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtAdress1: TEdit;
    LblAdress2: TLabel;
    edtAdress2: TEdit;
    edtCity: TEdit;
    Label8: TLabel;
    edtZip: TEdit;
    Label9: TLabel;
    Label11: TLabel;
    btnSalvar: TButton;
    edtStates: TEdit;
    edtCountry: TEdit;
    Label10: TLabel;
    Label12: TLabel;
    edtPhone: TEdit;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCadastroDeListas: TfCadastroDeListas;

implementation

{$R *.dfm}

uses uClasses;

procedure TfCadastroDeListas.btnSalvarClick(Sender: TObject);
begin
   ModalResult := mrOk;
end;

end.
