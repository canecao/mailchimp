unit FrmTeste;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, IPPeerClient, Data.Bind.Components,
  Data.Bind.ObjectScope, REST.Client, REST.Authenticator.Basic,
  REST.Response.Adapter, Datasnap.DBClient, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.DApt, Datasnap.Provider,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Buttons, Vcl.Mask, Vcl.ComCtrls, Vcl.AppEvnts,
  Vcl.Menus;

type
  TForm1 = class(TForm)
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    dsLIsta: TDataSource;
    dsListaContatos: TDataSource;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    btnBuscarLista: TBitBtn;
    Edit1: TEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    btnAdicionarLista: TBitBtn;
    btnRemoverLista: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    TrayIcon1: TTrayIcon;
    ApplicationEvents1: TApplicationEvents;
    dsClienteBanco: TDataSource;
    Label4: TLabel;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsCampanhas: TDataSource;
    BitBtn5: TBitBtn;
    FDMemTable1: TFDMemTable;
    FDMemTable1dfdfd: TStringField;
    DBLookupComboBox2: TDBLookupComboBox;
    MailchimpvclConnection: TFDConnection;
    Cad_clientefisicoTable: TFDQuery;
    Clientefisico_mailchimpTable: TFDQuery;
    dspClienteBanco: TDataSetProvider;
    Cad_clientefisicoTableCLIENTE: TIntegerField;
    Cad_clientefisicoTableNOME: TStringField;
    Cad_clientefisicoTableCPF: TStringField;
    Cad_clientefisicoTableDATA: TSQLTimeStampField;
    Cad_clientefisicoTableFANTASIA: TStringField;
    Cad_clientefisicoTableSERVICO: TIntegerField;
    Cad_clientefisicoTableLOJA: TStringField;
    Cad_clientefisicoTableCGC: TStringField;
    Cad_clientefisicoTableINDENTIDADE: TStringField;
    Cad_clientefisicoTableINSC_ES: TStringField;
    Cad_clientefisicoTablePAI: TStringField;
    Cad_clientefisicoTableMAE: TStringField;
    Cad_clientefisicoTableNASCIMENTO: TSQLTimeStampField;
    Cad_clientefisicoTableSEXO: TStringField;
    Cad_clientefisicoTableEST_CIV: TStringField;
    Cad_clientefisicoTableCONJUQUE_COMPRADOR: TStringField;
    Cad_clientefisicoTableNASCIMENTO_COMPRADOR: TDateField;
    Cad_clientefisicoTableTRABALHO: TStringField;
    Cad_clientefisicoTableCARGO: TStringField;
    Cad_clientefisicoTableTELEFONE: TStringField;
    Cad_clientefisicoTableRENDA: TCurrencyField;
    Cad_clientefisicoTableEND_RESID: TStringField;
    Cad_clientefisicoTableN: TStringField;
    Cad_clientefisicoTableBAIRRO: TStringField;
    Cad_clientefisicoTableCIDADE: TStringField;
    Cad_clientefisicoTableESTADO: TStringField;
    Cad_clientefisicoTableCEP: TStringField;
    Cad_clientefisicoTableTELEF: TStringField;
    Cad_clientefisicoTableTELEFONE2: TStringField;
    Cad_clientefisicoTablePROPR: TStringField;
    Cad_clientefisicoTableVLR_ALUGUEL: TCurrencyField;
    Cad_clientefisicoTableTEMPO_RESID: TIntegerField;
    Cad_clientefisicoTablePERTO: TStringField;
    Cad_clientefisicoTableEMPRESA: TStringField;
    Cad_clientefisicoTableENDERECO: TStringField;
    Cad_clientefisicoTableN_TRAB: TStringField;
    Cad_clientefisicoTableBAIRRO_TRAB: TStringField;
    Cad_clientefisicoTableCIDADE_TRAB: TStringField;
    Cad_clientefisicoTableESTADO_TRAB: TStringField;
    Cad_clientefisicoTableCEP_TRAB: TStringField;
    Cad_clientefisicoTableFAX: TStringField;
    Cad_clientefisicoTableTELEFONE_TRAB_: TStringField;
    Cad_clientefisicoTableRAMAL: TStringField;
    Cad_clientefisicoTableADMISAO: TSQLTimeStampField;
    Cad_clientefisicoTableCARGO_TIT: TStringField;
    Cad_clientefisicoTableRENDA_TIT: TCurrencyField;
    Cad_clientefisicoTableLIMITE: TCurrencyField;
    Cad_clientefisicoTableCOMBRAN_A: TStringField;
    Cad_clientefisicoTableCREDITO: TStringField;
    Cad_clientefisicoTableSPC: TStringField;
    Cad_clientefisicoTableINFORMANTE: TStringField;
    Cad_clientefisicoTableDATASPC: TSQLTimeStampField;
    Cad_clientefisicoTableJUROS_MORA: TCurrencyField;
    Cad_clientefisicoTableINFOR_LOJA1: TStringField;
    Cad_clientefisicoTableTEL1: TStringField;
    Cad_clientefisicoTableDATA_1_COMPRA1: TSQLTimeStampField;
    Cad_clientefisicoTableDATA_ULTIMA_COMPRA: TSQLTimeStampField;
    Cad_clientefisicoTableMAIOR_VALOR: TCurrencyField;
    Cad_clientefisicoTableSALDO_DEVEDOR: TCurrencyField;
    Cad_clientefisicoTableMEDIA_ATRASO: TStringField;
    Cad_clientefisicoTableINFOR_LOJA2: TStringField;
    Cad_clientefisicoTableTEL2: TStringField;
    Cad_clientefisicoTableDATA_1_COMPRA2: TSQLTimeStampField;
    Cad_clientefisicoTableDATA_ULTIMA_COMPRA2: TSQLTimeStampField;
    Cad_clientefisicoTableMAIOR_VALOR2: TCurrencyField;
    Cad_clientefisicoTableSALDO_DEVEDOR2: TCurrencyField;
    Cad_clientefisicoTableMEDIA_ATRASO2: TStringField;
    Cad_clientefisicoTableINFOR_LOJA3: TStringField;
    Cad_clientefisicoTableTEL3: TStringField;
    Cad_clientefisicoTableDATA_1_COMPRA3: TSQLTimeStampField;
    Cad_clientefisicoTableDATA_ULTIMA_COMPRA3: TSQLTimeStampField;
    Cad_clientefisicoTableMAIOR_VALOR3: TCurrencyField;
    Cad_clientefisicoTableSALDO_DEVEDOR_3: TCurrencyField;
    Cad_clientefisicoTableMEDIA_ATRASO3: TStringField;
    Cad_clientefisicoTableOBSERVACOES1: TStringField;
    Cad_clientefisicoTableOBSERVACOES2: TStringField;
    Cad_clientefisicoTableOBSERVACOES3: TStringField;
    Cad_clientefisicoTableOBSERVACOES4: TStringField;
    Cad_clientefisicoTableOBSERVACOES5: TStringField;
    Cad_clientefisicoTableOBSERVACOES6: TStringField;
    Cad_clientefisicoTableDATAMOD: TSQLTimeStampField;
    Cad_clientefisicoTableFIDELIDADE: TCurrencyField;
    Cad_clientefisicoTableULTIMADATAFIDELIDADE: TSQLTimeStampField;
    Cad_clientefisicoTableTIPOCLIENTE: TStringField;
    Cad_clientefisicoTableCEL: TStringField;
    Cad_clientefisicoTableESTADOFICHA: TStringField;
    Cad_clientefisicoTableOBSERVACAOGRANDE: TMemoField;
    Cad_clientefisicoTableDATAINICIO: TSQLTimeStampField;
    Cad_clientefisicoTableEMAIL: TStringField;
    Cad_clientefisicoTableCONTATO: TStringField;
    Cad_clientefisicoTableSALDOCREDITO: TBCDField;
    Cad_clientefisicoTableNUM_CONTA: TStringField;
    Cad_clientefisicoTableAGENCIA: TStringField;
    Cad_clientefisicoTableQLISA: TStringField;
    Cad_clientefisicoTableQESTAMPADA: TStringField;
    Cad_clientefisicoTableQDECOTADA: TStringField;
    Cad_clientefisicoTableQFECHADA: TStringField;
    Cad_clientefisicoTableQSIM: TStringField;
    Cad_clientefisicoTableQNAO: TStringField;
    Cad_clientefisicoTableQTELCASA: TStringField;
    Cad_clientefisicoTableQTELTRABALHO: TStringField;
    Cad_clientefisicoTableQTELCELULAR: TStringField;
    Cad_clientefisicoTableQEMAIL: TStringField;
    Cad_clientefisicoTableQOBS1: TStringField;
    Cad_clientefisicoTableQOBS2: TStringField;
    Cad_clientefisicoTableQTAMBLUSA: TStringField;
    Cad_clientefisicoTableQTAMCALCA: TStringField;
    Cad_clientefisicoTableQTAMVESTIDO: TStringField;
    Cad_clientefisicoTableOBS_ANACRED1: TStringField;
    Cad_clientefisicoTableOBS_ANACRED2: TStringField;
    Cad_clientefisicoTableOBS_ANACRED3: TStringField;
    Cad_clientefisicoTableCOD_CIDADE: TIntegerField;
    Cad_clientefisicoTableREF_NOME1: TStringField;
    Cad_clientefisicoTableREF_NOME2: TStringField;
    Cad_clientefisicoTableREF_NOME3: TStringField;
    Cad_clientefisicoTableREF_TEL1: TStringField;
    Cad_clientefisicoTableREF_TEL2: TStringField;
    Cad_clientefisicoTableREF_TEL3: TStringField;
    Cad_clientefisicoTableREF_BANCO1: TStringField;
    Cad_clientefisicoTableREF_BANCO2: TStringField;
    Cad_clientefisicoTableREF_BANCO3: TStringField;
    Cad_clientefisicoTableREF_AGENCIA1: TStringField;
    Cad_clientefisicoTableREF_AGENCIA2: TStringField;
    Cad_clientefisicoTableREF_AGENCIA3: TStringField;
    Cad_clientefisicoTableREF_ABERTURA1: TDateField;
    Cad_clientefisicoTableREF_ABERTURA2: TDateField;
    Cad_clientefisicoTableREF_ABERTURA3: TDateField;
    Cad_clientefisicoTableREF_CHEQUE1: TStringField;
    Cad_clientefisicoTableREF_CHEQUE2: TStringField;
    Cad_clientefisicoTableREF_CHEQUE3: TStringField;
    Cad_clientefisicoTableREF_CARTAOVISA: TStringField;
    Cad_clientefisicoTableREF_CARTAOMASTERCARD: TStringField;
    Cad_clientefisicoTableREF_CARTAOBANESCARD: TStringField;
    Cad_clientefisicoTableREF_OUTROCARTAO: TStringField;
    Cad_clientefisicoTableSITE: TStringField;
    Cad_clientefisicoTableUNIFICA_CLIFORN: TIntegerField;
    Cad_clientefisicoTableCLASSIFICACAO: TStringField;
    Cad_clientefisicoTablePRIORIDADE: TIntegerField;
    Cad_clientefisicoTablePOP_GRUPO: TIntegerField;
    Cad_clientefisicoTableINSTAL_ENDERECO: TStringField;
    Cad_clientefisicoTableINSTAL_N: TStringField;
    Cad_clientefisicoTableINSTAL_BAIRRO: TStringField;
    Cad_clientefisicoTableINSTAL_CIDADE: TStringField;
    Cad_clientefisicoTableINSTAL_UF: TStringField;
    Cad_clientefisicoTableINSTAL_CEP: TStringField;
    Cad_clientefisicoTableINSTAL_PONTOREFERENCIA: TStringField;
    Cad_clientefisicoTableINSTAL_TEL: TStringField;
    Cad_clientefisicoTableFSC_CRT: TStringField;
    Cad_clientefisicoTableFSC_ICMS: TBCDField;
    Cad_clientefisicoTableFSC_CONDPAG: TIntegerField;
    Cad_clientefisicoTableFSC_TIPOROMANEIO: TStringField;
    Cad_clientefisicoTableFSC_GRUPOCONTAS: TStringField;
    Cad_clientefisicoTableFSC_CENTROCUSTO: TIntegerField;
    Cad_clientefisicoTableFSC_DESCONTO: TBCDField;
    Cad_clientefisicoTableCOD_PAIS: TIntegerField;
    Cad_clientefisicoTablePOP_GRUPO_IP: TStringField;
    Cad_clientefisicoTableDIA_MELHOR_PAG: TIntegerField;
    Cad_clientefisicoTableLOCAL_COBRANCA: TIntegerField;
    Cad_clientefisicoTableGE_SENHA: TStringField;
    Cad_clientefisicoTableGE_RESPONSAVEL: TStringField;
    Cad_clientefisicoTableGE_TOTPC: TIntegerField;
    Cad_clientefisicoTableGE_INVENTARIO: TStringField;
    Cad_clientefisicoTableGE_USASERVIDOR: TStringField;
    Cad_clientefisicoTableGE_SINTEGRA: TStringField;
    Cad_clientefisicoTableGE_MODULOS: TStringField;
    Cad_clientefisicoTableGE_SINTEGRA_FECHA: TIntegerField;
    Cad_clientefisicoTablePROX_CONT_PENDENTE: TStringField;
    Cad_clientefisicoTableCONJ_IDENTIDADE: TStringField;
    Cad_clientefisicoTableCONJ_CPF: TStringField;
    Cad_clientefisicoTableCONJ_DATA_NASC: TDateField;
    Cad_clientefisicoTableFSC_SETOR: TIntegerField;
    Cad_clientefisicoTableREG_UNIFICA: TStringField;
    Cad_clientefisicoTableVENDEDOR: TStringField;
    Cad_clientefisicoTableZONA: TStringField;
    Cad_clientefisicoTableTRANSPORTADORA: TIntegerField;
    Cad_clientefisicoTableENVIAR_ORDEM_SERV_EMAIL: TStringField;
    Cad_clientefisicoTablePS_DIA_VENC_FATURA: TIntegerField;
    Cad_clientefisicoTableCOLABORADOR: TIntegerField;
    Cad_clientefisicoTableSEGMENTO: TIntegerField;
    Cad_clientefisicoTablePAIS: TStringField;
    Cad_clientefisicoTableDOC_ESTRANGEIRO: TStringField;
    Cad_clientefisicoTableNOME_CARTAO: TStringField;
    Cad_clientefisicoTableSALDO_PDV: TBCDField;
    cdsClienteBanco: TClientDataSet;
    cdsClienteBancoCLIENTE: TIntegerField;
    cdsClienteBancoNOME: TStringField;
    cdsClienteBancoEMAIL: TStringField;
    RESTRequest1: TRESTRequest;
    PopupMenu1: TPopupMenu;
    S1: TMenuItem;
    cdsClienteBancoEND_RESID: TStringField;
    cdsClienteBancoTELEFONE: TStringField;
    Timer1: TTimer;
    cdsClientefisico_mailchimp: TClientDataSet;
    dspClientefisico_mailchimp: TDataSetProvider;
    V_cliente_sem_lista_mailchimpView: TFDQuery;
    cdsClientefisico_mailchimpNOME: TStringField;
    cdsClientefisico_mailchimpEMAIL: TStringField;
    cdsClientefisico_mailchimpEND_RESID: TStringField;
    cdsClientefisico_mailchimpTELEFONE: TStringField;
    cdsClientefisico_mailchimpCLIENTE: TIntegerField;
    procedure btnBuscarListaClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBLookupComboBox1CloseUp(Sender: TObject);
    procedure btnAdicionarListaClick(Sender: TObject);
    procedure TrayIcon1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure btnRemoverListaClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure S1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);

  private
    { Private declarations }
    procedure BuscarContatos;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uClasses, strutils, FrmCadastroDeLista, FrmCadastroCampanha,
  System.IniFiles;

procedure TForm1.btnAdicionarListaClick(Sender: TObject);
var
  ListaDeContatos: TListContact;
begin
  ListaDeContatos := TListContact.Create;
  fCadastroDeListas := TfCadastroDeListas.Create(nil);
  fCadastroDeListas.ShowModal;
  ListaDeContatos.company := fCadastroDeListas.edtName2.Text;
  ListaDeContatos.address1 := fCadastroDeListas.edtAdress1.Text;
  ListaDeContatos.address2 := fCadastroDeListas.edtAdress2.Text;
  ListaDeContatos.city := fCadastroDeListas.edtCity.Text;
  ListaDeContatos.state := fCadastroDeListas.edtStates.Text;
  ListaDeContatos.zip := fCadastroDeListas.edtZip.Text;
  ListaDeContatos.country := fCadastroDeListas.edtCountry.Text;
  ListaDeContatos.phone := fCadastroDeListas.edtPhone.Text;
  ListaDeContatos.from_name := fCadastroDeListas.edtFromName.Text;
  ListaDeContatos.from_emal := fCadastroDeListas.edtFromEmail.Text;
  ListaDeContatos.subject := fCadastroDeListas.edtSubject.Text;
  ListaDeContatos.language := fCadastroDeListas.edtLanguage.Text;
  ListaDeContatos.name := fCadastroDeListas.edtName.Text;
  ListaDeContatos.permission_remider := fCadastroDeListas.EdtPermissionReminder.Text;
  ListaDeContatos.Adicionar;
  FreeAndNil(fCadastroDeListas);
  FreeAndNil(ListaDeContatos);
  dsLIsta.DataSet := TListContact.Lista;;
end;

procedure TForm1.btnBuscarListaClick(Sender: TObject);
begin
  dsLIsta.DataSet := TListContact.Lista;
end;

procedure TForm1.btnRemoverListaClick(Sender: TObject);
begin
  if (dsLIsta.DataSet = nil) or dsLIsta.DataSet.FieldByName('id').IsNull then
  begin
      ShowMessage('escolha a lista!');
      abort
  end;
  with TListContact.Create do
  begin
    Id := dsLIsta.DataSet.FieldByName('id').AsString;
    Deletar;
    Free;
  end;
  dsLIsta.DataSet := TListContact.Lista;
  dsListaContatos.DataSet.Free;
end;

procedure TForm1.BuscarContatos;
begin
  if dsLIsta.DataSet.RecordCount > 0 then
    dsListaContatos.DataSet := TListContact.ListaContatos(dsLIsta.DataSet.FieldByName('id').AsString)
  else
    dsListaContatos.DataSet := nil;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  Timer1Timer(nil);
end;

procedure TForm1.DBLookupComboBox1CloseUp(Sender: TObject);
begin
  BuscarContatos;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  CanClose := False;
  Self.Hide;
  WindowState := wsMinimized;
  TrayIcon1.Visible := True
end;

procedure TForm1.S1Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  dsCampanhas.DataSet := TCampaign.Lista;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
  if Edit1.Text = EmptyStr then
  begin
    ShowMessage('codigo do cliente da base em branco!');
    Exit;
  end;
  cdsClienteBanco.Close;
  cdsClienteBanco.Filter := 'cliente = ' + Edit1.Text;
  cdsClienteBanco.Filtered := True;
  cdsClienteBanco.Open;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
begin
  if (dsLIsta.DataSet = nil) or (dsLIsta.DataSet.RecordCount = 0) then
    ShowMessage('escolha uma lista')
  else
    with TCampaign.Create do
    begin
      idLista := dsLIsta.DataSet.FieldByName('id').AsString;
      CadastroDeCampanha := TCadastroDeCampanha.Create(nil);
      CadastroDeCampanha.ShowModal;
      Reply_to := CadastroDeCampanha.edtreply_to.Text;
      subject_line := CadastroDeCampanha.edtSubject_line.Text;
      from_name := CadastroDeCampanha.edtfrom_name.Text;
      Title := CadastroDeCampanha.edtTitle.Text;
      FreeAndNil(CadastroDeCampanha);
      Adicionar;
    end;
  BitBtn1Click(nil);
end;

procedure TForm1.BitBtn4Click(Sender: TObject);
begin
  with TCampaign.Create do
  begin
    Id := dsCampanhas.DataSet.FieldByName('id').AsString;
    Deletar;
    Free;
  end;
  BitBtn1Click(nil);
end;

procedure TForm1.BitBtn5Click(Sender: TObject);
begin
  with TCampaign.Create do
  begin
    Id := dsCampanhas.DataSet.FieldByName('id').AsString;
    enviar;
    Free;
  end;
end;

procedure TForm1.BitBtn7Click(Sender: TObject);
begin
  with TContact.Create do
  begin
    idLista := dsLIsta.DataSet.FieldByName('id').AsString;
    FNAME := Copy(cdsClienteBancoNOME.AsString, 1,
      Pos(' ', cdsClienteBancoNOME.AsString) - 1);
    LNAME := Copy(cdsClienteBancoNOME.AsString,
      Pos(' ', cdsClienteBancoNOME.AsString) + 1,
      length(cdsClienteBancoNOME.AsString));
    email_address := cdsClienteBancoEMAIL.AsString;
    phone := cdsClienteBancoTELEFONE.AsString;
    status := 'subscribed';
    IDCliente := cdsClienteBancoCLIENTE.AsString;
    Adicionar;
    BuscarContatos;
    Free;
  end;
end;

procedure TForm1.BitBtn8Click(Sender: TObject);
begin
  with TContact.Create do
  begin
    Id := dsListaContatos.DataSet.FieldByName('id').AsString;
    idLista := dsLIsta.DataSet.FieldByName('id').AsString;
    IDCliente := dsListaContatos.DataSet.FieldByName('id').AsString;
    Deletar;
    Free;
  end;
  BuscarContatos;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  loIniFIle: TInifile;
begin
  cdsClientefisico_mailchimp.Open;
  loIniFIle := TInifile.Create(ExtractFilePath(ParamStr(0)) + 'config.ini');
  if (cdsClientefisico_mailchimp.RecordCount = 0) or
     (loIniFIle.ReadString('autenticador', 'listaid', '') = '')
  then
  begin
    cdsClientefisico_mailchimp.Close;
    Exit
  end;


  cdsClientefisico_mailchimp.First;
  while not cdsClientefisico_mailchimp.eof do
  begin
    with TContact.Create do
    begin
      idLista := loIniFIle.ReadString('autenticador', 'listaid', '');
      FNAME := Copy(cdsClientefisico_mailchimpNOME.AsString, 1,
        Pos(' ', cdsClientefisico_mailchimpNOME.AsString) - 1);
      LNAME := Copy(cdsClientefisico_mailchimpNOME.AsString,
        Pos(' ', cdsClientefisico_mailchimpNOME.AsString) + 1,
        length(cdsClientefisico_mailchimpNOME.AsString));
      email_address := cdsClientefisico_mailchimpEMAIL.AsString;
      phone := cdsClientefisico_mailchimpTELEFONE.AsString;
      status := 'subscribed';
      IDCliente := cdsClientefisico_mailchimpCLIENTE.AsString;
      Adicionar;
      Free;
    end;
    cdsClientefisico_mailchimp.Next;
  end;
  V_cliente_sem_lista_mailchimpView.Connection.Close;
  cdsClientefisico_mailchimp.Close;
  loIniFIle.Free;
end;

procedure TForm1.TrayIcon1DblClick(Sender: TObject);
begin
  Self.Show;
  Self.WindowState := wsNormal;
  TrayIcon1.Visible := False;
end;

end.
