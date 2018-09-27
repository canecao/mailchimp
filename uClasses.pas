unit uClasses;

interface

uses REST.Authenticator.Basic, REST.Client, System.JSON, System.Classes,
  System.Generics.Collections, FireDAC.Comp.Client, REST.Response.Adapter,
  Data.DB;

Type

  ICadastro = interface
    function Adicionar: Boolean;
    function Deletar: Boolean;
  end;

  TMailChimp = class(TInterfacedObject, ICadastro)
  private
    FConexao: TFDConnection;
    FLog: string;
    function GetConexao: TFDConnection;
    procedure SetLog(const Value: string);
  protected
    FHTTPBasicAuthenticator: THTTPBasicAuthenticator;
    FRESTClient: TRESTClient;
    FRes: TRESTResponse;
    FReq: TRESTRequest;
    FMsgErro: String;
    FId: String;
    FAdapter: TRESTResponseDataSetAdapter;
    FMemTable: TFDMemTable;
    function GetHTTPBasicAuthenticator: THTTPBasicAuthenticator;
    function GetRESTClient: TRESTClient;
    function GetReq: TRESTRequest;
    function GetRes: TRESTResponse;
    procedure SetId(const Value: String);
    procedure SetMsgErro(const Value: String);
    function GetAdapter: TRESTResponseDataSetAdapter;
    function GetMemTable: TFDMemTable;
    procedure FReqAfterExecute(Sender: TCustomRESTRequest);
    procedure gravarLog;
    procedure gravaErro;
  public
    constructor create;
    procedure EnviaParaBanco(pSql: String);
    function Adicionar: Boolean; dynamic; abstract;
    function Deletar: Boolean; dynamic; abstract;
    property HTTPBasicAuthenticator: THTTPBasicAuthenticator
      read GetHTTPBasicAuthenticator;
    property RESTClient: TRESTClient read GetRESTClient;
    property Res: TRESTResponse read GetRes;
    property Adapter: TRESTResponseDataSetAdapter read GetAdapter;
    property MemTable: TFDMemTable read GetMemTable;
    property Req: TRESTRequest read GetReq;
    property MsgErro: String read FMsgErro write SetMsgErro;
    property Id: String read FId write SetId;
    property Conexao: TFDConnection read GetConexao write FConexao;
    property Log: string read FLog write SetLog;
  end;

  TContact = class(TMailChimp)
  private
    FidLista: String;
    FLNAME: String;
    FFNAME: String;
    Fstatus: String;
    Femail_address: String;
    FPHONE: string;
    FIDCliente: string;
    procedure SetidLista(const Value: String);
    procedure Setemail_address(const Value: String);
    procedure SetFNAME(const Value: String);
    procedure SetLNAME(const Value: String);
    procedure Setstatus(const Value: String);
    procedure SetPHONE(const Value: string);
    procedure SetIDCliente(const Value: string);
  public
    function Adicionar: Boolean; override;
    function Deletar: Boolean; override;
    property idLista: String read FidLista write SetidLista;
    property email_address: String read Femail_address write Setemail_address;
    property status: String read Fstatus write Setstatus;
    property FNAME: String read FFNAME write SetFNAME;
    property LNAME: String read FLNAME write SetLNAME;
    property PHONE: string read FPHONE write SetPHONE;
    property IDCliente: string read FIDCliente write SetIDCliente;
  end;

  TCampaignReport = class(TMailChimp)
  public
    idCampanha: String;
    Action: String;
    TimestTamp: String;
    Ip: String;
    procedure pegar(pContact: TContact);
  end;

  TCampaign = class(TMailChimp)
  public
    function Adicionar: Boolean; override;
    function Deletar: Boolean; override;
  private
    Ffrom_name: String;
    Freply_to: String;
    FId: String;
    FidLista: String;
    Fsubject_line: String;
    FHtml: String;
    FNomeCampanha: string;
    FTitle: string;
    procedure Setfrom_name(const Value: String);
    procedure SetId(const Value: String);
    procedure SetidLista(const Value: String);
    procedure Setreply_to(const Value: String);
    procedure Setsubject_line(const Value: String);
    procedure SetHtml(const Value: String);
    function GetReport(contact: TContact): TCampaignReport;
    procedure SetNomeCampanha(const Value: string);
    procedure SetTitle(const Value: string);
  public
    procedure SetLista;
    procedure pegaHtml;
    procedure enviar;
    class function Lista: TFDMemTable;
    property NomeCampanha: string read FNomeCampanha write SetNomeCampanha;
    property Id: String read FId write SetId;
    property idLista: String read FidLista write SetidLista;
    property subject_line: String read Fsubject_line write Setsubject_line;
    property reply_to: String read Freply_to write Setreply_to;
    property from_name: String read Ffrom_name write Setfrom_name;
    property Html: String read FHtml write SetHtml;
    property Report[contact: TContact]: TCampaignReport read GetReport;
    property Title: string read FTitle write SetTitle;
  end;

  TListContact = class(TMailChimp)
  private
    Flanguage: String;
    Ffrom_name: String;
    FNAME: String;
    Ffrom_emal: String;
    Fzip: String;
    Fstate: String;
    Fcompany: String;
    Fsubject: String;
    FPHONE: String;
    Faddress2: String;
    Fpermission_remider: String;
    Fcountry: String;
    Faddress1: String;
    Fcity: String;
    FContatos: TList<TContact>;
    FCampanha: TList<TCampaign>;
    procedure Setaddress1(const Value: String);
    procedure Setaddress2(const Value: String);
    procedure Setcity(const Value: String);
    procedure Setcompany(const Value: String);
    procedure Setcountry(const Value: String);
    procedure Setfrom_emal(const Value: String);
    procedure Setfrom_name(const Value: String);
    procedure Setlanguage(const Value: String);
    procedure Setname(const Value: String);
    procedure Setpermission_remider(const Value: String);
    procedure SetPHONE(const Value: String);
    procedure Setstate(const Value: String);
    procedure Setsubject(const Value: String);
    procedure Setzip(const Value: String);
    function getContatos: TList<TContact>;
    function getCampanha: TList<TCampaign>;
  public
    function Adicionar: Boolean; override;
    function AdicionarContato(LNAME, FNAME, status, email_address: String)
      : TContact;
    function AdicionarCampanha(subject_line, reply_to, from_name: String)
      : TCampaign;
    function Deletar: Boolean; override;
    function DeletarPorId(pId: String): Boolean;
    procedure SetLista;
    procedure SetListaContatos(pIdLista: string);
    destructor Destroy; override;
    property name: String read FNAME write Setname;
    property permission_remider: String read Fpermission_remider
      write Setpermission_remider;
    property company: String read Fcompany write Setcompany;
    property address1: String read Faddress1 write Setaddress1;
    property address2: String read Faddress2 write Setaddress2;
    property city: String read Fcity write Setcity;
    property state: String read Fstate write Setstate;
    property zip: String read Fzip write Setzip;
    property country: String read Fcountry write Setcountry;
    property PHONE: String read FPHONE write SetPHONE;
    property from_name: String read Ffrom_name write Setfrom_name;
    property from_emal: String read Ffrom_emal write Setfrom_emal;
    property subject: String read Fsubject write Setsubject;
    property language: String read Flanguage write Setlanguage;
    property Contatos: TList<TContact> read getContatos;
    property Campanhas: TList<TCampaign> read getCampanha;
    class procedure TelaDeCadastro;
    class function Lista: TFDMemTable;
    class function ListaContatos(pIdLista: String): TFDMemTable;
  end;

implementation

uses REST.Types, VCL.Dialogs, VCL.Forms, IniFiles,
  FireDAC.Stan.Option, FrmCadastroDeLista, System.SysUtils, FrmTeste,
  System.StrUtils, FireDAC.Comp.DataSet;
{ TListContact }

function TListContact.Adicionar: Boolean;
var
  JSON, JSonContact, JsonCampaignDefaults: TJSONObject;
  vId: string;
  Contato: TContact;
  Campanha: TCampaign;

  procedure Configurar;
  begin
    // Aqui e a parte de post
    // obs: todos os componentes são criados automaticamente
    // nas reads da properts do pai MAILCHIMP
    with Req do
    begin
      Resource := 'lists';
      SynchronizedEvents := False;
      Method := rmPOST;
      ClearBody;
      AddBody(JSON);
      Log := 'POST ' + JSON.ToString;
    end;
  end;

  procedure Clona;
  begin
    Req.Execute;
    if Res.GetSimpleValue('id', vId) then
      Self.DeletarPorId(vId);
  end;

begin
  Result := False;
  JSonContact := TJSONObject.create;
  JSonContact.AddPair(TJSONPair.create('company', Self.company));
  JSonContact.AddPair(TJSONPair.create('address1', Self.address1));
  JSonContact.AddPair(TJSONPair.create('address2', Self.address2));
  JSonContact.AddPair(TJSONPair.create('city', Self.city));
  JSonContact.AddPair(TJSONPair.create('state', Self.state));
  JSonContact.AddPair(TJSONPair.create('zip', Self.zip));
  JSonContact.AddPair(TJSONPair.create('country', Self.country));
  JSonContact.AddPair(TJSONPair.create('phone', Self.PHONE));

  JsonCampaignDefaults := TJSONObject.create;
  JsonCampaignDefaults.AddPair(TJSONPair.create('from_name', Self.from_name));
  JsonCampaignDefaults.AddPair(TJSONPair.create('from_email', Self.from_emal));
  JsonCampaignDefaults.AddPair(TJSONPair.create('subject', Self.subject));
  JsonCampaignDefaults.AddPair(TJSONPair.create('language', Self.language));

  JSON := TJSONObject.create;
  JSON.AddPair(TJSONPair.create('name', Self.name));
  JSON.AddPair(TJSONPair.create('contact', JSonContact));
  JSON.AddPair(TJSONPair.create('permission_reminder',
    Self.permission_remider));
  JSON.AddPair(TJSONPair.create('campaign_defaults', JsonCampaignDefaults));
  JSON.AddPair(TJSONPair.create('email_type_option', TJSONTrue.create));

  Configurar;
  try
    Req.Execute;
  finally
    gravarLog;
  end;

  if Res.GetSimpleValue('id', vId) then
    Self.Id := vId
  else
    Self.MsgErro := Res.Content;

  // Cria os Contatos
  // Generecs e interator :)
  if Self.Id <> '' then
  begin

    for Contato in Self.Contatos do
    begin
      Contato.idLista := Self.Id;
      Result := Result and Contato.Adicionar;
    end;

    for Campanha in Self.Campanhas do
    begin
      Campanha.idLista := Self.Id;
      Result := Result and Campanha.Adicionar;
    end;
    // Cria uma Lista e apaga para servir como commit
    // Pois assim os contatos são criados na hora senão demora uns 5 minutos para eles entrarem

    if Result then
      Clona;
  end;
  JSON.Free;
end;

function TListContact.AdicionarCampanha(subject_line, reply_to,
  from_name: String): TCampaign;

begin
  Result := TCampaign.create;
  Result.subject_line := subject_line;
  Result.reply_to := reply_to;
  Result.from_name := from_name;
  Campanhas.Add(Result);
end;

function TListContact.AdicionarContato(LNAME, FNAME, status,
  email_address: String): TContact;
begin
  Result := TContact.create;
  Result.LNAME := LNAME;
  Result.FNAME := FNAME;
  Result.status := status;
  Result.email_address := email_address;
  Contatos.Add(Result);
end;

function TListContact.DeletarPorId(pId: String): Boolean;
var
  vSql: String;
begin
  Result := False;
  Req.Resource := 'Lists/' + pId;
  Req.Method := rmDELETE;
  Log := 'DELETE ' + Req.Resource;
  try
    Req.Execute;
  finally
    gravarLog;
  end;

 { if Res.StatusCode = 204 then
  begin
    Result := True;
    vSql := 'delete from CLIENTEFISICO_MAILCHIMP where (idlista = ' +  QuotedStr(Self.Id) + ')';
    try
      EnviaParaBanco(vSql);
    except
    end;
  end; }
end;

destructor TListContact.Destroy;
begin
  inherited;
end;

function TListContact.Deletar: Boolean;
begin
  Result := DeletarPorId(Self.Id);
end;

function TListContact.getCampanha: TList<TCampaign>;
begin
  if FCampanha = nil then
    FCampanha := TList<TCampaign>.create;
  Result := FCampanha;
end;

function TListContact.getContatos: TList<TContact>;
begin
  if FContatos = nil then
    FContatos := TList<TContact>.create;
  Result := FContatos;
end;

class function TListContact.Lista: TFDMemTable;
var
  Listas: TListContact;
begin
  Listas := TListContact.create;
  Listas.SetLista;
  if Listas.Res.StatusCode = 200 then
  begin
    Result := Listas.MemTable;
  end
  else
    Result := nil;
end;

class function TListContact.ListaContatos(pIdLista: String): TFDMemTable;
var
  ListaDeContatos: TListContact;
begin
  ListaDeContatos := TListContact.create;
  ListaDeContatos.SetListaContatos(pIdLista);
  Result := ListaDeContatos.MemTable;
end;

procedure TListContact.Setaddress1(const Value: String);
begin
  Faddress1 := Value;
end;

procedure TListContact.Setaddress2(const Value: String);
begin
  Faddress2 := Value;
end;

procedure TListContact.Setcity(const Value: String);
begin
  Fcity := Value;
end;

procedure TListContact.Setcompany(const Value: String);
begin
  Fcompany := Value;
end;

procedure TListContact.Setcountry(const Value: String);
begin
  Fcountry := Value;
end;

procedure TListContact.Setfrom_emal(const Value: String);
begin
  Ffrom_emal := Value;
end;

procedure TListContact.Setfrom_name(const Value: String);
begin
  Ffrom_name := Value;
end;

procedure TListContact.Setlanguage(const Value: String);
begin
  Flanguage := Value;
end;

procedure TListContact.SetLista;
begin
  Adapter.RootElement := '';
  Req.Resource := 'lists';
  Req.Method := rmGET;
  Log := 'GET LISTS';
  try
    Req.Execute;
  finally
    gravarLog;
  end;

  if Res.StatusCode = 200 then
  begin
    Adapter.RootElement := 'lists';
  end;
end;

procedure TListContact.SetListaContatos(pIdLista: string);
begin
  Req.Resource := 'lists/' + pIdLista + '/members';
  Adapter.RootElement := 'members';
  Req.Method := rmGET;
  Log := 'GET ' + Req.Resource;
  Req.Execute;
end;

procedure TListContact.Setname(const Value: String);
begin
  FNAME := Value;
end;

procedure TListContact.Setpermission_remider(const Value: String);
begin
  Fpermission_remider := Value;
end;

procedure TListContact.SetPHONE(const Value: String);
begin
  FPHONE := Value;
end;

procedure TListContact.Setstate(const Value: String);
begin
  Fstate := Value;
end;

procedure TListContact.Setsubject(const Value: String);
begin
  Fsubject := Value;
end;

class procedure TListContact.TelaDeCadastro;
begin
  { if FrmCadastroListraMembros = nil then
    FrmCadastroListraMembros := TFrmCadastroListraMembros.Create(nil);
    FrmCadastroListraMembros.ShowModal;
    FreeAndNil(FrmCadastroListraMembros); }
end;

procedure TListContact.Setzip(const Value: String);
begin
  Fzip := Value;
end;

{ TContact }

function TContact.Adicionar: Boolean;
var
  JSonData, JSonMerge_fields: TJSONObject;
  vId: String;
  procedure CriaMembro;
  begin
    JSonData := TJSONObject.create;
    JSonData.AddPair(TJSONPair.create('email_address', Self.email_address));
    JSonData.AddPair(TJSONPair.create('status', Self.status));

    JSonMerge_fields := TJSONObject.create;
    JSonMerge_fields.AddPair(TJSONPair.create('FNAME', Self.FNAME));
    JSonMerge_fields.AddPair(TJSONPair.create('LNAME', Self.LNAME));
    JSonMerge_fields.AddPair(TJSONPair.create('PHONE', Self.PHONE));
    JSonData.AddPair('merge_fields', JSonMerge_fields);
  end;

begin
  CriaMembro;
  Req.Resource := 'lists/' + Self.idLista + '/members';
  Req.Method := rmPOST;
  Req.ClearBody;
  Req.AddBody(JSonData);
  Log := 'POST ' + JSonData.ToString;
  try
    Req.Execute;
  finally
    gravarLog;
  end;

  if Res.GetSimpleValue('id', vId) then
  begin
    Self.Id := vId;
    EnviaParaBanco
      ('insert into CLIENTEFISICO_MAILCHIMP(idlista,IDCLIENTEFISICO, idchimp) '
      + 'values (' + QuotedStr(Self.idLista) + ',' + QuotedStr(Self.IDCliente) +
      ',' + QuotedStr(Self.Id) + ')');
  end
  else
    Self.MsgErro := Res.Content;

  Result := Self.Id <> '';
  JSonData.Free;
end;

function TContact.Deletar: Boolean;
var
  vSql: string;
begin
  Req.Resource := 'lists/' + Self.idLista + '/members/' + Self.Id;
  Req.Method := rmDELETE;
  Log := 'DELETE ' + Req.Resource;
  try
    Req.Execute;
    vSql := 'delete from CLIENTEFISICO_MAILCHIMP where (idlista = ' +
      QuotedStr(Self.idLista) + ') and (IDchimp = ' + QuotedStr(Self.Id) + ')';

    EnviaParaBanco(vSql);
  finally
     log := 'DELETE ' + Req.Resource;
     gravarLog;
  end;
  Self.MsgErro := Res.Content;
  Result := True;

end;

procedure TContact.Setemail_address(const Value: String);
begin
  Femail_address := Value;
end;

procedure TContact.SetFNAME(const Value: String);
begin
  FFNAME := Value;
end;

procedure TContact.SetIDCliente(const Value: string);
begin
  FIDCliente := Value;
end;

procedure TContact.SetidLista(const Value: String);
begin
  FidLista := Value;
end;

procedure TContact.SetLNAME(const Value: String);
begin
  FLNAME := Value;
end;

procedure TContact.SetPHONE(const Value: string);
begin
  FPHONE := Value;
end;

procedure TContact.Setstatus(const Value: String);
begin
  Fstatus := Value;
end;

{ TCampaign }

function TCampaign.Adicionar: Boolean;
var
  JSonData, JSonRecipients, JSonSettings: TJSONObject;
  vId: String;
  CaixaDeDialogo: TOpenDialog;
  Html: TStrings;
begin
  Html := nil;
  Result := False;
  CaixaDeDialogo := TOpenDialog.create(nil);
  CaixaDeDialogo.FileName := EmptyStr;
  if CaixaDeDialogo.Execute then
    if CaixaDeDialogo.FileName <> EmptyStr then
    begin
      Html := TStringList.create;
      Html.LoadFromFile(CaixaDeDialogo.FileName);
    end
    else
    begin
      ShowMessage('escolha o arquivo html');
      exit
    end;

  JSonRecipients := TJSONObject.create;
  JSonRecipients.AddPair(TJSONPair.create('list_id', Self.idLista));

  JSonSettings := TJSONObject.create;
  JSonSettings.AddPair(TJSONPair.create('subject_line', Self.subject_line));
  JSonSettings.AddPair(TJSONPair.create('reply_to', Self.reply_to));
  JSonSettings.AddPair(TJSONPair.create('from_name', Self.from_name));
  JSonSettings.AddPair(TJSONPair.create('title', Self.Title));

  JSonData := TJSONObject.create;
  JSonData.AddPair(TJSONPair.create('recipients', JSonRecipients));
  JSonData.AddPair(TJSONPair.create('type', 'regular'));
  JSonData.AddPair(TJSONPair.create('settings', JSonSettings));

  Req.Method := rmPOST;
  Req.Resource := 'campaigns';
  Req.ClearBody;
  Req.AddBody(JSonData);
  Log := 'POST ' + JSonData.ToString;
  try
    Req.Execute;
  finally
    gravarLog;
  end;

  if Res.GetSimpleValue('id', vId) then
    Self.Id := vId
  else
    Self.MsgErro := Res.Content;

  JSonData.Free;
  Result := Self.Id <> '';
  if Result then
  begin
    Req.Resource := 'campaigns/' + Self.Id + '/content';
    Req.Method := rmPut;
    Req.ClearBody;
    JSonData := TJSONObject.create;
    JSonData.AddPair(TJSONPair.create('html', Html.Text));
    Req.AddBody(JSonData);
    Log := 'PUT ' + CaixaDeDialogo.FileName;
    try
      Req.Execute;
    finally
      gravarLog;
    end;
    JSonData.Free;
    CaixaDeDialogo.Free;
  end;

end;

function TCampaign.Deletar: Boolean;
begin
  Req.Resource := 'campaigns/' + FId;
  Req.Method := rmDELETE;
  Req.ClearBody;
  Log := 'DELETE ' + Req.Resource;
  try
    Req.Execute;
  finally
    gravarLog;
  end;
  Result := Res.StatusCode = 200;
end;

procedure TCampaign.enviar;
begin
  Req.Resource := 'campaigns/' + Self.Id + '/actions/send';
  Req.Method := rmPOST;
  Req.ClearBody;
  Log := 'POST ' + Req.Resource;
  try
    Req.Execute;
  finally
    gravarLog;
  end;
end;

procedure TCampaign.pegaHtml;
var
  OpenDialog: TOpenDialog;
  Html: TStringList;
begin
  OpenDialog := TOpenDialog.create(nil);
  Html := TStringList.create;
  OpenDialog.FileName := '';
  if OpenDialog.Execute then
    if OpenDialog.FileName = '' then
    begin
      ShowMessage('escolha o arquivo html');
      exit
    end
    else
    begin
      Html := TStringList.create;
      Html.LoadFromFile(OpenDialog.FileName);
    end;
  Self.Html := Html.Text;
  OpenDialog.Free;
end;

function TCampaign.GetReport(contact: TContact): TCampaignReport;
begin
  Result := TCampaignReport.create;
  Result.idCampanha := Self.Id;
  Result.pegar(contact);
end;

class function TCampaign.Lista: TFDMemTable;
var
  Campanha: TCampaign;
  jsonObj, jSubObj, JSON: TJSONObject;
  ja: TJSONArray;
  ji: TJSONValue;
  i: Integer;
  Id, Title: string;
  procedure AlteraSettings;
  begin
    if Campanha.MemTable.Locate('id', Id, []) then
    begin
      Campanha.MemTable.Edit;
      Campanha.MemTable.FieldByName('settings').AsString := Title;
      Campanha.MemTable.Post;
    end;
  end;

begin
  Campanha := TCampaign.create;
  Campanha.SetLista;
  Result := Campanha.MemTable;
  jsonObj := TJSONObject.ParseJSONValue
    (TEncoding.ASCII.GetBytes(Campanha.Res.Content), 0) as TJSONObject;
  ji := jsonObj.Get('campaigns').JsonValue;
  ja := ji as TJSONArray;

  for i := 0 to ja.Count - 1 do
  begin
    jSubObj := (ja.Items[i] as TJSONObject);
    Id := jSubObj.Pairs[0].JsonValue.Value;
    JSON := TJSONObject.ParseJSONValue
      (TEncoding.ASCII.GetBytes(jSubObj.Pairs[13].JsonValue.ToJSON), 0)
      as TJSONObject;
    Title := JSON.GetValue('title').Value;
    AlteraSettings;
  end;

  { Campanha.MemTable.First;
    while not Campanha.MemTable.Eof do
    begin

    Campanha.MemTable.Next;
    end; }
end;

procedure TCampaign.Setfrom_name(const Value: String);
begin
  Ffrom_name := Value;
end;

procedure TCampaign.SetHtml(const Value: String);
begin
  FHtml := Value;
end;

procedure TCampaign.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TCampaign.SetidLista(const Value: String);
begin
  FidLista := Value;
end;

procedure TCampaign.SetLista;
begin
  Req.Resource := 'campaigns';
  Req.Method := rmGET;
  Log := 'GET ' + Req.Resource;
  try
    Req.Execute;
  finally
    gravarLog;
  end;
  if Res.StatusCode = 200 then
    Res.RootElement := 'campaigns';
end;

procedure TCampaign.SetNomeCampanha(const Value: string);
begin

end;

procedure TCampaign.Setreply_to(const Value: String);
begin
  Freply_to := Value;
end;

procedure TCampaign.Setsubject_line(const Value: String);
begin
  Fsubject_line := Value;
end;

procedure TCampaign.SetTitle(const Value: string);
begin
  FTitle := Value;
end;

{ TMailChimp }

constructor TMailChimp.create;
begin

end;

procedure TMailChimp.EnviaParaBanco(pSql: String);
begin
  Conexao.ExecSQL(pSql);
  Conexao.Commit;
  Conexao.Connected := False;
  Conexao.Free;
  Conexao := NIL;
  Log := EmptyStr;
end;

procedure TMailChimp.FReqAfterExecute(Sender: TCustomRESTRequest);
begin

end;

function TMailChimp.GetAdapter: TRESTResponseDataSetAdapter;
begin
  if FAdapter = nil then
    FAdapter := TRESTResponseDataSetAdapter.create(nil);
  Result := FAdapter;
end;

function TMailChimp.GetConexao: TFDConnection;
begin
  FConexao := TFDConnection.create(nil);
  FConexao.Params.AddPair('ConnectionDef', 'MailChimpVCL');
  FConexao.Connected := True;
  FConexao.LoginPrompt := False;
  Result := FConexao;
end;

function TMailChimp.GetHTTPBasicAuthenticator: THTTPBasicAuthenticator;
var
  loIniFIle: TInifile;
  User, Pass: String;
begin
  if FHTTPBasicAuthenticator = nil then
  begin
    loIniFIle := TInifile.create(ExtractFilePath(ParamStr(0)) + 'config.ini');
    User := loIniFIle.ReadString('autenticador', 'username', '');
    Pass := loIniFIle.ReadString('autenticador', 'password', '');

    FHTTPBasicAuthenticator := THTTPBasicAuthenticator.create(User, Pass);
    loIniFIle.Free;
  end;
  Result := FHTTPBasicAuthenticator;
end;

function TMailChimp.GetMemTable: TFDMemTable;
begin
  if FMemTable = nil then
  begin
    FMemTable := TFDMemTable.create(nil);
    FMemTable.FetchOptions.AssignedValues := [evMode];
    FMemTable.FetchOptions.Mode := fmAll;
    FMemTable.ResourceOptions.AssignedValues := [rvSilentMode];
    FMemTable.ResourceOptions.SilentMode := True;
    FMemTable.UpdateOptions.AssignedValues := [uvCheckRequired];
    FMemTable.UpdateOptions.CheckRequired := False;
    FMemTable.StoreDefs := True;
    FMemTable.FieldDefs.Add('id', ftWideString, 255);
    FMemTable.FieldDefs.Add('web_id', ftWideString, 255);
    FMemTable.FieldDefs.Add('name', ftWideString, 255);
    FMemTable.FieldDefs.Add('contact', ftWideString, 255);
    FMemTable.FieldDefs.Add('permission_reminder', ftWideString, 255);
    FMemTable.FieldDefs.Add('use_archive_bar', ftWideString, 255);
    FMemTable.FieldDefs.Add('campaign_defaults', ftWideString, 255);
    FMemTable.FieldDefs.Add('notify_on_subscribe', ftWideString, 255);
    FMemTable.FieldDefs.Add('notify_on_unsubscribe', ftWideString, 255);
    FMemTable.FieldDefs.Add('date_created', ftWideString, 255);
    FMemTable.FieldDefs.Add('list_rating', ftWideString, 255);
    FMemTable.FieldDefs.Add('email_type_option', ftWideString, 255);
    FMemTable.FieldDefs.Add('subscribe_url_short', ftWideString, 255);
    FMemTable.FieldDefs.Add('subscribe_url_long', ftWideString, 255);
    FMemTable.FieldDefs.Add('beamer_address', ftWideString, 255);
    FMemTable.FieldDefs.Add('visibility', ftWideString, 255);
    FMemTable.FieldDefs.Add('modules', ftWideString, 255);
    FMemTable.FieldDefs.Add('stats', ftWideString, 255);
    FMemTable.FieldDefs.Add('_links', ftWideString, 255);
  end;
  Result := FMemTable;
end;

function TMailChimp.GetReq: TRESTRequest;
begin
  if FReq = nil then
  begin
    FReq := TRESTRequest.create(nil);
    FReq.Client := RESTClient;
    FReq.Response := Res;
    FReq.OnAfterExecute := FReqAfterExecute;
  end;
  Result := FReq;
end;

function TMailChimp.GetRes: TRESTResponse;
begin
  if FRes = nil then
  begin
    FRes := TRESTResponse.create(nil);
    Adapter.Response := FRes;
    Adapter.Dataset := MemTable;
  end;
  Result := FRes;
end;

function TMailChimp.GetRESTClient: TRESTClient;
var
  loIniFIle: TInifile;
begin
  if FRESTClient = nil then
  begin
    loIniFIle := TInifile.create(ExtractFilePath(ParamStr(0)) + 'config.ini');
    FRESTClient := TRESTClient.create(loIniFIle.ReadString('autenticador',
      'BaseURL', ''));
    loIniFIle.Free;
    with FRESTClient do
    begin
      Authenticator := HTTPBasicAuthenticator;
      Accept := 'application/json, text/plain; q=0.9, text/html;q=0.8,';
      AcceptCharset := 'UTF-8, *;q=0.8';
      HandleRedirects := True;
      RaiseExceptionOn500 := False;
    end;
  end;
  Result := FRESTClient;
end;

procedure TMailChimp.gravaErro;
begin

end;

procedure TMailChimp.gravarLog;
var SS : TStringStream;
    dt : TFDQuery;
begin
   ss := TStringStream.Create(Res.Content,TEncoding.UTF8);
   dt := TFDQuery.Create(nil);
   dt.Connection := Conexao;
   dt.SQL.Text := 'insert into mailchimp_log(data,envio,resposta) VALUES (:data,:envio,:blobdata);';
   dt.Params[0].DataType := ftDateTime;
   dt.Params[1].DataType := ftString;
   dt.Params[2].DataType := ftBlob;
// FireDAC takes ownership of the stream object
   dt.Params[0].AsDateTime := Now;
   dt.Params[1].AsString := Log;
   dt.Params[2].AsStream := ss;
   dt.Prepare;
   dt.ExecSQL;
  Conexao.Commit;
  Conexao.Connected := False;
  Conexao.Free;
  Conexao := NIL;
  Log := EmptyStr;
end;

procedure TMailChimp.SetId(const Value: String);
begin
  FId := Value;
end;

procedure TMailChimp.SetLog(const Value: string);
begin
  FLog := Value;
end;

procedure TMailChimp.SetMsgErro(const Value: String);
begin
  FMsgErro := Value;
end;
{ TCampaignReport }

procedure TCampaignReport.pegar(pContact: TContact);
var
  LJSONObject: TJSONObject;
  LJSONObjectValue: TJSONValue;
  LJSONObjectArray: TJSONArray;
begin
  Req.Resource := 'reports/' + idCampanha + '/email-activity/' + pContact.Id;
  Req.Method := rmGET;
  Req.ClearBody;
  Req.Execute;
  LJSONObject := nil;
  LJSONObjectArray := nil;
  try
    { convert String to JSON }
    LJSONObject := TJSONObject.ParseJSONValue
      (TEncoding.ASCII.GetBytes(FRes.Content), 0) as TJSONObject;
    LJSONObjectArray := TJSONObject.ParseJSONValue
      (TEncoding.ASCII.GetBytes(LJSONObject.GetValue('activity').ToJSON), 0)
      as TJSONArray;
    if LJSONObjectArray.Count > 0 then
      for LJSONObjectValue in LJSONObjectArray do
      begin
        Self.Action := TJSONObject(LJSONObjectValue).GetValue('action').ToJSON;
        Self.TimestTamp := TJSONObject(LJSONObjectValue)
          .GetValue('timestamp').ToJSON;
        Self.Ip := TJSONObject(LJSONObjectValue).GetValue('ip').ToJSON;
      end;
  finally
    LJSONObject.Free;
    LJSONObjectArray.Free;
  end;
end;

end.
