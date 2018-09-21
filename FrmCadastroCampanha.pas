unit FrmCadastroCampanha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TCadastroDeCampanha = class(TForm)
    edtfrom_name: TEdit;
    edtreply_to: TEdit;
    edtSubject_line: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    edtTitle: TEdit;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CadastroDeCampanha: TCadastroDeCampanha;

implementation

{$R *.dfm}

procedure TCadastroDeCampanha.Button1Click(Sender: TObject);
begin
   ModalResult := mrOk;
end;

end.
