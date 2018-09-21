object Form1: TForm1
  Tag = 1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 544
  ClientWidth = 1070
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 41
    Width = 1070
    Height = 503
    Align = alClient
    DataSource = dsListaContatos
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Width = 220
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'email_address'
        Width = 232
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'merge_fields'
        Width = 550
        Visible = True
      end>
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1070
    Height = 41
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 1
    object Label1: TLabel
      Left = 9
      Top = 2
      Width = 34
      Height = 13
      Caption = 'LISTAS'
    end
    object Label2: TLabel
      Left = 288
      Top = 2
      Width = 66
      Height = 13
      Caption = 'C'#211'D CLIENTE'
    end
    object Label3: TLabel
      Left = 361
      Top = 2
      Width = 91
      Height = 13
      Caption = 'NOME DO CLIENTE'
    end
    object Label4: TLabel
      Left = 745
      Top = 4
      Width = 56
      Height = 13
      Caption = 'CAMPANHA'
    end
    object DBEdit2: TDBEdit
      Left = 360
      Top = 16
      Width = 241
      Height = 21
      DataField = 'nome'
      DataSource = dsClienteBanco
      TabOrder = 0
    end
    object btnBuscarLista: TBitBtn
      Left = 159
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Buscar Listas'
      Caption = 'B'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 1
      OnClick = btnBuscarListaClick
    end
    object Edit1: TEdit
      Left = 287
      Top = 16
      Width = 69
      Height = 21
      TabOrder = 2
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 8
      Top = 16
      Width = 145
      Height = 21
      DataField = 'nome'
      KeyField = 'id'
      ListField = 'Name'
      ListSource = dsLIsta
      TabOrder = 3
      OnCloseUp = DBLookupComboBox1CloseUp
    end
    object btnAdicionarLista: TBitBtn
      Left = 196
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Adicionar Lista'
      Caption = 'A'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 4
      OnClick = btnAdicionarListaClick
    end
    object btnRemoverLista: TBitBtn
      Left = 232
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Remover Lista'
      Caption = 'R'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 5
      OnClick = btnRemoverListaClick
    end
    object BitBtn2: TBitBtn
      Left = 606
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Buscar Cliente'
      Caption = 'B'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 6
      OnClick = BitBtn2Click
    end
    object BitBtn7: TBitBtn
      Left = 645
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Adicionar Cliente a Lista'
      Caption = 'A'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 7
      OnClick = BitBtn7Click
    end
    object BitBtn8: TBitBtn
      Left = 684
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Remover Cliente da Lista'
      Caption = 'R'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 8
      OnClick = BitBtn8Click
    end
    object BitBtn1: TBitBtn
      Left = 895
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Buscar Campanhas'
      Caption = 'B'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 9
      OnClick = BitBtn1Click
    end
    object BitBtn3: TBitBtn
      Left = 932
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Adicionar Campanha'
      Caption = 'A'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 10
      OnClick = BitBtn3Click
    end
    object BitBtn4: TBitBtn
      Left = 970
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Remover Campanha'
      Caption = 'R'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 11
      OnClick = BitBtn4Click
    end
    object BitBtn5: TBitBtn
      Left = 1005
      Top = 16
      Width = 35
      Height = 21
      Hint = 'Enviar Campanha'
      Caption = 'E'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 12
      OnClick = BitBtn5Click
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 743
      Top = 16
      Width = 145
      Height = 21
      KeyField = 'id'
      ListField = 'settings'
      ListSource = dsCampanhas
      TabOrder = 13
    end
  end
  object dsLIsta: TDataSource
    Left = 101
    Top = 78
  end
  object dsListaContatos: TDataSource
    Left = 101
    Top = 126
  end
  object TrayIcon1: TTrayIcon
    PopupMenu = PopupMenu1
    OnDblClick = TrayIcon1DblClick
    Left = 480
    Top = 240
  end
  object ApplicationEvents1: TApplicationEvents
    Left = 480
    Top = 192
  end
  object dsClienteBanco: TDataSource
    DataSet = cdsClienteBanco
    Left = 100
    Top = 174
  end
  object dsCampanhas: TDataSource
    Left = 100
    Top = 222
  end
  object FDMemTable1: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 624
    Top = 272
    object FDMemTable1dfdfd: TStringField
      FieldName = 'dfdfd'
      Size = 12
    end
  end
  object MailchimpvclConnection: TFDConnection
    Params.Strings = (
      'ConnectionDef=MailChimpVCL')
    Connected = True
    LoginPrompt = False
    Left = 625
    Top = 110
  end
  object Cad_clientefisicoTable: TFDQuery
    Connection = MailchimpvclConnection
    SQL.Strings = (
      'SELECT * FROM CAD_CLIENTEFISICO')
    Left = 625
    Top = 158
    object Cad_clientefisicoTableCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Cad_clientefisicoTableNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object Cad_clientefisicoTableCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      Size = 15
    end
    object Cad_clientefisicoTableDATA: TSQLTimeStampField
      FieldName = 'DATA'
      Origin = '"DATA"'
    end
    object Cad_clientefisicoTableFANTASIA: TStringField
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Size = 30
    end
    object Cad_clientefisicoTableSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICO'
    end
    object Cad_clientefisicoTableLOJA: TStringField
      FieldName = 'LOJA'
      Origin = 'LOJA'
      Size = 3
    end
    object Cad_clientefisicoTableCGC: TStringField
      FieldName = 'CGC'
      Origin = 'CGC'
      Size = 18
    end
    object Cad_clientefisicoTableINDENTIDADE: TStringField
      FieldName = 'INDENTIDADE'
      Origin = 'INDENTIDADE'
    end
    object Cad_clientefisicoTableINSC_ES: TStringField
      FieldName = 'INSC_ES'
      Origin = 'INSC_ES'
    end
    object Cad_clientefisicoTablePAI: TStringField
      FieldName = 'PAI'
      Origin = 'PAI'
      Size = 40
    end
    object Cad_clientefisicoTableMAE: TStringField
      FieldName = 'MAE'
      Origin = 'MAE'
      Size = 40
    end
    object Cad_clientefisicoTableNASCIMENTO: TSQLTimeStampField
      FieldName = 'NASCIMENTO'
      Origin = 'NASCIMENTO'
    end
    object Cad_clientefisicoTableSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Size = 15
    end
    object Cad_clientefisicoTableEST_CIV: TStringField
      FieldName = 'EST_CIV'
      Origin = 'EST_CIV'
      Size = 15
    end
    object Cad_clientefisicoTableCONJUQUE_COMPRADOR: TStringField
      FieldName = 'CONJUQUE_COMPRADOR'
      Origin = 'CONJUQUE_COMPRADOR'
      Size = 40
    end
    object Cad_clientefisicoTableNASCIMENTO_COMPRADOR: TDateField
      FieldName = 'NASCIMENTO_COMPRADOR'
      Origin = 'NASCIMENTO_COMPRADOR'
    end
    object Cad_clientefisicoTableTRABALHO: TStringField
      FieldName = 'TRABALHO'
      Origin = 'TRABALHO'
      Size = 40
    end
    object Cad_clientefisicoTableCARGO: TStringField
      FieldName = 'CARGO'
      Origin = 'CARGO'
    end
    object Cad_clientefisicoTableTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 16
    end
    object Cad_clientefisicoTableRENDA: TCurrencyField
      FieldName = 'RENDA'
      Origin = 'RENDA'
    end
    object Cad_clientefisicoTableEND_RESID: TStringField
      FieldName = 'END_RESID'
      Origin = 'END_RESID'
      Size = 80
    end
    object Cad_clientefisicoTableN: TStringField
      FieldName = 'N'
      Origin = 'N'
      Size = 6
    end
    object Cad_clientefisicoTableBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Size = 60
    end
    object Cad_clientefisicoTableCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Size = 60
    end
    object Cad_clientefisicoTableESTADO: TStringField
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Size = 2
    end
    object Cad_clientefisicoTableCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Size = 10
    end
    object Cad_clientefisicoTableTELEF: TStringField
      FieldName = 'TELEF'
      Origin = 'TELEF'
      Size = 16
    end
    object Cad_clientefisicoTableTELEFONE2: TStringField
      FieldName = 'TELEFONE2'
      Origin = 'TELEFONE2'
      Size = 16
    end
    object Cad_clientefisicoTablePROPR: TStringField
      FieldName = 'PROPR'
      Origin = 'PROPR'
      Size = 1
    end
    object Cad_clientefisicoTableVLR_ALUGUEL: TCurrencyField
      FieldName = 'VLR_ALUGUEL'
      Origin = 'VLR_ALUGUEL'
    end
    object Cad_clientefisicoTableTEMPO_RESID: TIntegerField
      FieldName = 'TEMPO_RESID'
      Origin = 'TEMPO_RESID'
    end
    object Cad_clientefisicoTablePERTO: TStringField
      FieldName = 'PERTO'
      Origin = 'PERTO'
      Size = 120
    end
    object Cad_clientefisicoTableEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Origin = 'EMPRESA'
      Size = 50
    end
    object Cad_clientefisicoTableENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Size = 50
    end
    object Cad_clientefisicoTableN_TRAB: TStringField
      FieldName = 'N_TRAB'
      Origin = 'N_TRAB'
      Size = 6
    end
    object Cad_clientefisicoTableBAIRRO_TRAB: TStringField
      FieldName = 'BAIRRO_TRAB'
      Origin = 'BAIRRO_TRAB'
    end
    object Cad_clientefisicoTableCIDADE_TRAB: TStringField
      FieldName = 'CIDADE_TRAB'
      Origin = 'CIDADE_TRAB'
    end
    object Cad_clientefisicoTableESTADO_TRAB: TStringField
      FieldName = 'ESTADO_TRAB'
      Origin = 'ESTADO_TRAB'
      Size = 2
    end
    object Cad_clientefisicoTableCEP_TRAB: TStringField
      FieldName = 'CEP_TRAB'
      Origin = 'CEP_TRAB'
      Size = 9
    end
    object Cad_clientefisicoTableFAX: TStringField
      FieldName = 'FAX'
      Origin = 'FAX'
      Size = 16
    end
    object Cad_clientefisicoTableTELEFONE_TRAB_: TStringField
      FieldName = 'TELEFONE_TRAB_'
      Origin = 'TELEFONE_TRAB_'
      Size = 16
    end
    object Cad_clientefisicoTableRAMAL: TStringField
      FieldName = 'RAMAL'
      Origin = 'RAMAL'
      Size = 4
    end
    object Cad_clientefisicoTableADMISAO: TSQLTimeStampField
      FieldName = 'ADMISAO'
      Origin = 'ADMISAO'
    end
    object Cad_clientefisicoTableCARGO_TIT: TStringField
      FieldName = 'CARGO_TIT'
      Origin = 'CARGO_TIT'
    end
    object Cad_clientefisicoTableRENDA_TIT: TCurrencyField
      FieldName = 'RENDA_TIT'
      Origin = 'RENDA_TIT'
    end
    object Cad_clientefisicoTableLIMITE: TCurrencyField
      FieldName = 'LIMITE'
      Origin = 'LIMITE'
    end
    object Cad_clientefisicoTableCOMBRAN_A: TStringField
      FieldName = 'COMBRAN_A'
      Origin = 'COMBRAN_A'
      Size = 2
    end
    object Cad_clientefisicoTableCREDITO: TStringField
      FieldName = 'CREDITO'
      Origin = 'CREDITO'
      Size = 10
    end
    object Cad_clientefisicoTableSPC: TStringField
      FieldName = 'SPC'
      Origin = 'SPC'
      Size = 1
    end
    object Cad_clientefisicoTableINFORMANTE: TStringField
      FieldName = 'INFORMANTE'
      Origin = 'INFORMANTE'
      Size = 40
    end
    object Cad_clientefisicoTableDATASPC: TSQLTimeStampField
      FieldName = 'DATASPC'
      Origin = 'DATASPC'
    end
    object Cad_clientefisicoTableJUROS_MORA: TCurrencyField
      FieldName = 'JUROS_MORA'
      Origin = 'JUROS_MORA'
    end
    object Cad_clientefisicoTableINFOR_LOJA1: TStringField
      FieldName = 'INFOR_LOJA1'
      Origin = 'INFOR_LOJA1'
    end
    object Cad_clientefisicoTableTEL1: TStringField
      FieldName = 'TEL1'
      Origin = 'TEL1'
      Size = 16
    end
    object Cad_clientefisicoTableDATA_1_COMPRA1: TSQLTimeStampField
      FieldName = 'DATA_1_COMPRA1'
      Origin = 'DATA_1_COMPRA1'
    end
    object Cad_clientefisicoTableDATA_ULTIMA_COMPRA: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_COMPRA'
      Origin = 'DATA_ULTIMA_COMPRA'
    end
    object Cad_clientefisicoTableMAIOR_VALOR: TCurrencyField
      FieldName = 'MAIOR_VALOR'
      Origin = 'MAIOR_VALOR'
    end
    object Cad_clientefisicoTableSALDO_DEVEDOR: TCurrencyField
      FieldName = 'SALDO_DEVEDOR'
      Origin = 'SALDO_DEVEDOR'
    end
    object Cad_clientefisicoTableMEDIA_ATRASO: TStringField
      FieldName = 'MEDIA_ATRASO'
      Origin = 'MEDIA_ATRASO'
      Size = 8
    end
    object Cad_clientefisicoTableINFOR_LOJA2: TStringField
      FieldName = 'INFOR_LOJA2'
      Origin = 'INFOR_LOJA2'
    end
    object Cad_clientefisicoTableTEL2: TStringField
      FieldName = 'TEL2'
      Origin = 'TEL2'
      Size = 16
    end
    object Cad_clientefisicoTableDATA_1_COMPRA2: TSQLTimeStampField
      FieldName = 'DATA_1_COMPRA2'
      Origin = 'DATA_1_COMPRA2'
    end
    object Cad_clientefisicoTableDATA_ULTIMA_COMPRA2: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_COMPRA2'
      Origin = 'DATA_ULTIMA_COMPRA2'
    end
    object Cad_clientefisicoTableMAIOR_VALOR2: TCurrencyField
      FieldName = 'MAIOR_VALOR2'
      Origin = 'MAIOR_VALOR2'
    end
    object Cad_clientefisicoTableSALDO_DEVEDOR2: TCurrencyField
      FieldName = 'SALDO_DEVEDOR2'
      Origin = 'SALDO_DEVEDOR2'
    end
    object Cad_clientefisicoTableMEDIA_ATRASO2: TStringField
      FieldName = 'MEDIA_ATRASO2'
      Origin = 'MEDIA_ATRASO2'
      Size = 8
    end
    object Cad_clientefisicoTableINFOR_LOJA3: TStringField
      FieldName = 'INFOR_LOJA3'
      Origin = 'INFOR_LOJA3'
    end
    object Cad_clientefisicoTableTEL3: TStringField
      FieldName = 'TEL3'
      Origin = 'TEL3'
      Size = 16
    end
    object Cad_clientefisicoTableDATA_1_COMPRA3: TSQLTimeStampField
      FieldName = 'DATA_1_COMPRA3'
      Origin = 'DATA_1_COMPRA3'
    end
    object Cad_clientefisicoTableDATA_ULTIMA_COMPRA3: TSQLTimeStampField
      FieldName = 'DATA_ULTIMA_COMPRA3'
      Origin = 'DATA_ULTIMA_COMPRA3'
    end
    object Cad_clientefisicoTableMAIOR_VALOR3: TCurrencyField
      FieldName = 'MAIOR_VALOR3'
      Origin = 'MAIOR_VALOR3'
    end
    object Cad_clientefisicoTableSALDO_DEVEDOR_3: TCurrencyField
      FieldName = 'SALDO_DEVEDOR_3'
      Origin = 'SALDO_DEVEDOR_3'
    end
    object Cad_clientefisicoTableMEDIA_ATRASO3: TStringField
      FieldName = 'MEDIA_ATRASO3'
      Origin = 'MEDIA_ATRASO3'
      Size = 8
    end
    object Cad_clientefisicoTableOBSERVACOES1: TStringField
      FieldName = 'OBSERVACOES1'
      Origin = 'OBSERVACOES1'
      Size = 100
    end
    object Cad_clientefisicoTableOBSERVACOES2: TStringField
      FieldName = 'OBSERVACOES2'
      Origin = 'OBSERVACOES2'
      Size = 100
    end
    object Cad_clientefisicoTableOBSERVACOES3: TStringField
      FieldName = 'OBSERVACOES3'
      Origin = 'OBSERVACOES3'
      Size = 100
    end
    object Cad_clientefisicoTableOBSERVACOES4: TStringField
      FieldName = 'OBSERVACOES4'
      Origin = 'OBSERVACOES4'
      Size = 100
    end
    object Cad_clientefisicoTableOBSERVACOES5: TStringField
      FieldName = 'OBSERVACOES5'
      Origin = 'OBSERVACOES5'
      Size = 100
    end
    object Cad_clientefisicoTableOBSERVACOES6: TStringField
      FieldName = 'OBSERVACOES6'
      Origin = 'OBSERVACOES6'
      Size = 100
    end
    object Cad_clientefisicoTableDATAMOD: TSQLTimeStampField
      FieldName = 'DATAMOD'
      Origin = 'DATAMOD'
    end
    object Cad_clientefisicoTableFIDELIDADE: TCurrencyField
      FieldName = 'FIDELIDADE'
      Origin = 'FIDELIDADE'
    end
    object Cad_clientefisicoTableULTIMADATAFIDELIDADE: TSQLTimeStampField
      FieldName = 'ULTIMADATAFIDELIDADE'
      Origin = 'ULTIMADATAFIDELIDADE'
    end
    object Cad_clientefisicoTableTIPOCLIENTE: TStringField
      FieldName = 'TIPOCLIENTE'
      Origin = 'TIPOCLIENTE'
      Size = 1
    end
    object Cad_clientefisicoTableCEL: TStringField
      FieldName = 'CEL'
      Origin = 'CEL'
      Size = 15
    end
    object Cad_clientefisicoTableESTADOFICHA: TStringField
      FieldName = 'ESTADOFICHA'
      Origin = 'ESTADOFICHA'
      Size = 30
    end
    object Cad_clientefisicoTableOBSERVACAOGRANDE: TMemoField
      FieldName = 'OBSERVACAOGRANDE'
      Origin = 'OBSERVACAOGRANDE'
      BlobType = ftMemo
    end
    object Cad_clientefisicoTableDATAINICIO: TSQLTimeStampField
      FieldName = 'DATAINICIO'
      Origin = 'DATAINICIO'
    end
    object Cad_clientefisicoTableEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 800
    end
    object Cad_clientefisicoTableCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'CONTATO'
      Size = 40
    end
    object Cad_clientefisicoTableSALDOCREDITO: TBCDField
      FieldName = 'SALDOCREDITO'
      Origin = 'SALDOCREDITO'
      Precision = 18
      Size = 2
    end
    object Cad_clientefisicoTableNUM_CONTA: TStringField
      FieldName = 'NUM_CONTA'
      Origin = 'NUM_CONTA'
      Size = 10
    end
    object Cad_clientefisicoTableAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Origin = 'AGENCIA'
      Size = 10
    end
    object Cad_clientefisicoTableQLISA: TStringField
      FieldName = 'QLISA'
      Origin = 'QLISA'
      Size = 1
    end
    object Cad_clientefisicoTableQESTAMPADA: TStringField
      FieldName = 'QESTAMPADA'
      Origin = 'QESTAMPADA'
      Size = 1
    end
    object Cad_clientefisicoTableQDECOTADA: TStringField
      FieldName = 'QDECOTADA'
      Origin = 'QDECOTADA'
      Size = 1
    end
    object Cad_clientefisicoTableQFECHADA: TStringField
      FieldName = 'QFECHADA'
      Origin = 'QFECHADA'
      Size = 1
    end
    object Cad_clientefisicoTableQSIM: TStringField
      FieldName = 'QSIM'
      Origin = 'QSIM'
      Size = 1
    end
    object Cad_clientefisicoTableQNAO: TStringField
      FieldName = 'QNAO'
      Origin = 'QNAO'
      Size = 1
    end
    object Cad_clientefisicoTableQTELCASA: TStringField
      FieldName = 'QTELCASA'
      Origin = 'QTELCASA'
      Size = 1
    end
    object Cad_clientefisicoTableQTELTRABALHO: TStringField
      FieldName = 'QTELTRABALHO'
      Origin = 'QTELTRABALHO'
      Size = 1
    end
    object Cad_clientefisicoTableQTELCELULAR: TStringField
      FieldName = 'QTELCELULAR'
      Origin = 'QTELCELULAR'
      Size = 1
    end
    object Cad_clientefisicoTableQEMAIL: TStringField
      FieldName = 'QEMAIL'
      Origin = 'QEMAIL'
      Size = 1
    end
    object Cad_clientefisicoTableQOBS1: TStringField
      FieldName = 'QOBS1'
      Origin = 'QOBS1'
      Size = 80
    end
    object Cad_clientefisicoTableQOBS2: TStringField
      FieldName = 'QOBS2'
      Origin = 'QOBS2'
      Size = 80
    end
    object Cad_clientefisicoTableQTAMBLUSA: TStringField
      FieldName = 'QTAMBLUSA'
      Origin = 'QTAMBLUSA'
      Size = 10
    end
    object Cad_clientefisicoTableQTAMCALCA: TStringField
      FieldName = 'QTAMCALCA'
      Origin = 'QTAMCALCA'
      Size = 10
    end
    object Cad_clientefisicoTableQTAMVESTIDO: TStringField
      FieldName = 'QTAMVESTIDO'
      Origin = 'QTAMVESTIDO'
      Size = 10
    end
    object Cad_clientefisicoTableOBS_ANACRED1: TStringField
      FieldName = 'OBS_ANACRED1'
      Origin = 'OBS_ANACRED1'
      Size = 200
    end
    object Cad_clientefisicoTableOBS_ANACRED2: TStringField
      FieldName = 'OBS_ANACRED2'
      Origin = 'OBS_ANACRED2'
      Size = 200
    end
    object Cad_clientefisicoTableOBS_ANACRED3: TStringField
      FieldName = 'OBS_ANACRED3'
      Origin = 'OBS_ANACRED3'
      Size = 200
    end
    object Cad_clientefisicoTableCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = 'COD_CIDADE'
    end
    object Cad_clientefisicoTableREF_NOME1: TStringField
      FieldName = 'REF_NOME1'
      Origin = 'REF_NOME1'
      Size = 50
    end
    object Cad_clientefisicoTableREF_NOME2: TStringField
      FieldName = 'REF_NOME2'
      Origin = 'REF_NOME2'
      Size = 50
    end
    object Cad_clientefisicoTableREF_NOME3: TStringField
      FieldName = 'REF_NOME3'
      Origin = 'REF_NOME3'
      Size = 50
    end
    object Cad_clientefisicoTableREF_TEL1: TStringField
      FieldName = 'REF_TEL1'
      Origin = 'REF_TEL1'
      Size = 15
    end
    object Cad_clientefisicoTableREF_TEL2: TStringField
      FieldName = 'REF_TEL2'
      Origin = 'REF_TEL2'
      Size = 15
    end
    object Cad_clientefisicoTableREF_TEL3: TStringField
      FieldName = 'REF_TEL3'
      Origin = 'REF_TEL3'
      Size = 15
    end
    object Cad_clientefisicoTableREF_BANCO1: TStringField
      FieldName = 'REF_BANCO1'
      Origin = 'REF_BANCO1'
    end
    object Cad_clientefisicoTableREF_BANCO2: TStringField
      FieldName = 'REF_BANCO2'
      Origin = 'REF_BANCO2'
    end
    object Cad_clientefisicoTableREF_BANCO3: TStringField
      FieldName = 'REF_BANCO3'
      Origin = 'REF_BANCO3'
    end
    object Cad_clientefisicoTableREF_AGENCIA1: TStringField
      FieldName = 'REF_AGENCIA1'
      Origin = 'REF_AGENCIA1'
      Size = 10
    end
    object Cad_clientefisicoTableREF_AGENCIA2: TStringField
      FieldName = 'REF_AGENCIA2'
      Origin = 'REF_AGENCIA2'
      Size = 10
    end
    object Cad_clientefisicoTableREF_AGENCIA3: TStringField
      FieldName = 'REF_AGENCIA3'
      Origin = 'REF_AGENCIA3'
      Size = 10
    end
    object Cad_clientefisicoTableREF_ABERTURA1: TDateField
      FieldName = 'REF_ABERTURA1'
      Origin = 'REF_ABERTURA1'
    end
    object Cad_clientefisicoTableREF_ABERTURA2: TDateField
      FieldName = 'REF_ABERTURA2'
      Origin = 'REF_ABERTURA2'
    end
    object Cad_clientefisicoTableREF_ABERTURA3: TDateField
      FieldName = 'REF_ABERTURA3'
      Origin = 'REF_ABERTURA3'
    end
    object Cad_clientefisicoTableREF_CHEQUE1: TStringField
      FieldName = 'REF_CHEQUE1'
      Origin = 'REF_CHEQUE1'
      Size = 1
    end
    object Cad_clientefisicoTableREF_CHEQUE2: TStringField
      FieldName = 'REF_CHEQUE2'
      Origin = 'REF_CHEQUE2'
      Size = 1
    end
    object Cad_clientefisicoTableREF_CHEQUE3: TStringField
      FieldName = 'REF_CHEQUE3'
      Origin = 'REF_CHEQUE3'
      Size = 1
    end
    object Cad_clientefisicoTableREF_CARTAOVISA: TStringField
      FieldName = 'REF_CARTAOVISA'
      Origin = 'REF_CARTAOVISA'
      Size = 1
    end
    object Cad_clientefisicoTableREF_CARTAOMASTERCARD: TStringField
      FieldName = 'REF_CARTAOMASTERCARD'
      Origin = 'REF_CARTAOMASTERCARD'
      Size = 1
    end
    object Cad_clientefisicoTableREF_CARTAOBANESCARD: TStringField
      FieldName = 'REF_CARTAOBANESCARD'
      Origin = 'REF_CARTAOBANESCARD'
      Size = 1
    end
    object Cad_clientefisicoTableREF_OUTROCARTAO: TStringField
      FieldName = 'REF_OUTROCARTAO'
      Origin = 'REF_OUTROCARTAO'
      Size = 30
    end
    object Cad_clientefisicoTableSITE: TStringField
      FieldName = 'SITE'
      Origin = 'SITE'
      Size = 60
    end
    object Cad_clientefisicoTableUNIFICA_CLIFORN: TIntegerField
      FieldName = 'UNIFICA_CLIFORN'
      Origin = 'UNIFICA_CLIFORN'
    end
    object Cad_clientefisicoTableCLASSIFICACAO: TStringField
      FieldName = 'CLASSIFICACAO'
      Origin = 'CLASSIFICACAO'
      Size = 10
    end
    object Cad_clientefisicoTablePRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = 'PRIORIDADE'
    end
    object Cad_clientefisicoTablePOP_GRUPO: TIntegerField
      FieldName = 'POP_GRUPO'
      Origin = 'POP_GRUPO'
    end
    object Cad_clientefisicoTableINSTAL_ENDERECO: TStringField
      FieldName = 'INSTAL_ENDERECO'
      Origin = 'INSTAL_ENDERECO'
      Size = 80
    end
    object Cad_clientefisicoTableINSTAL_N: TStringField
      FieldName = 'INSTAL_N'
      Origin = 'INSTAL_N'
      Size = 6
    end
    object Cad_clientefisicoTableINSTAL_BAIRRO: TStringField
      FieldName = 'INSTAL_BAIRRO'
      Origin = 'INSTAL_BAIRRO'
    end
    object Cad_clientefisicoTableINSTAL_CIDADE: TStringField
      FieldName = 'INSTAL_CIDADE'
      Origin = 'INSTAL_CIDADE'
    end
    object Cad_clientefisicoTableINSTAL_UF: TStringField
      FieldName = 'INSTAL_UF'
      Origin = 'INSTAL_UF'
      Size = 2
    end
    object Cad_clientefisicoTableINSTAL_CEP: TStringField
      FieldName = 'INSTAL_CEP'
      Origin = 'INSTAL_CEP'
      Size = 10
    end
    object Cad_clientefisicoTableINSTAL_PONTOREFERENCIA: TStringField
      FieldName = 'INSTAL_PONTOREFERENCIA'
      Origin = 'INSTAL_PONTOREFERENCIA'
      Size = 50
    end
    object Cad_clientefisicoTableINSTAL_TEL: TStringField
      FieldName = 'INSTAL_TEL'
      Origin = 'INSTAL_TEL'
      Size = 16
    end
    object Cad_clientefisicoTableFSC_CRT: TStringField
      FieldName = 'FSC_CRT'
      Origin = 'FSC_CRT'
      Size = 70
    end
    object Cad_clientefisicoTableFSC_ICMS: TBCDField
      FieldName = 'FSC_ICMS'
      Origin = 'FSC_ICMS'
      Precision = 18
      Size = 2
    end
    object Cad_clientefisicoTableFSC_CONDPAG: TIntegerField
      FieldName = 'FSC_CONDPAG'
      Origin = 'FSC_CONDPAG'
    end
    object Cad_clientefisicoTableFSC_TIPOROMANEIO: TStringField
      FieldName = 'FSC_TIPOROMANEIO'
      Origin = 'FSC_TIPOROMANEIO'
      Size = 40
    end
    object Cad_clientefisicoTableFSC_GRUPOCONTAS: TStringField
      FieldName = 'FSC_GRUPOCONTAS'
      Origin = 'FSC_GRUPOCONTAS'
      Size = 9
    end
    object Cad_clientefisicoTableFSC_CENTROCUSTO: TIntegerField
      FieldName = 'FSC_CENTROCUSTO'
      Origin = 'FSC_CENTROCUSTO'
    end
    object Cad_clientefisicoTableFSC_DESCONTO: TBCDField
      FieldName = 'FSC_DESCONTO'
      Origin = 'FSC_DESCONTO'
      Precision = 18
      Size = 2
    end
    object Cad_clientefisicoTableCOD_PAIS: TIntegerField
      FieldName = 'COD_PAIS'
      Origin = 'COD_PAIS'
    end
    object Cad_clientefisicoTablePOP_GRUPO_IP: TStringField
      FieldName = 'POP_GRUPO_IP'
      Origin = 'POP_GRUPO_IP'
    end
    object Cad_clientefisicoTableDIA_MELHOR_PAG: TIntegerField
      FieldName = 'DIA_MELHOR_PAG'
      Origin = 'DIA_MELHOR_PAG'
    end
    object Cad_clientefisicoTableLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = 'LOCAL_COBRANCA'
    end
    object Cad_clientefisicoTableGE_SENHA: TStringField
      FieldName = 'GE_SENHA'
      Origin = 'GE_SENHA'
      Size = 15
    end
    object Cad_clientefisicoTableGE_RESPONSAVEL: TStringField
      FieldName = 'GE_RESPONSAVEL'
      Origin = 'GE_RESPONSAVEL'
      Size = 50
    end
    object Cad_clientefisicoTableGE_TOTPC: TIntegerField
      FieldName = 'GE_TOTPC'
      Origin = 'GE_TOTPC'
    end
    object Cad_clientefisicoTableGE_INVENTARIO: TStringField
      FieldName = 'GE_INVENTARIO'
      Origin = 'GE_INVENTARIO'
      Size = 100
    end
    object Cad_clientefisicoTableGE_USASERVIDOR: TStringField
      FieldName = 'GE_USASERVIDOR'
      Origin = 'GE_USASERVIDOR'
      Size = 1
    end
    object Cad_clientefisicoTableGE_SINTEGRA: TStringField
      FieldName = 'GE_SINTEGRA'
      Origin = 'GE_SINTEGRA'
      Size = 1
    end
    object Cad_clientefisicoTableGE_MODULOS: TStringField
      FieldName = 'GE_MODULOS'
      Origin = 'GE_MODULOS'
      Size = 100
    end
    object Cad_clientefisicoTableGE_SINTEGRA_FECHA: TIntegerField
      FieldName = 'GE_SINTEGRA_FECHA'
      Origin = 'GE_SINTEGRA_FECHA'
    end
    object Cad_clientefisicoTablePROX_CONT_PENDENTE: TStringField
      FieldName = 'PROX_CONT_PENDENTE'
      Origin = 'PROX_CONT_PENDENTE'
      Size = 1
    end
    object Cad_clientefisicoTableCONJ_IDENTIDADE: TStringField
      FieldName = 'CONJ_IDENTIDADE'
      Origin = 'CONJ_IDENTIDADE'
    end
    object Cad_clientefisicoTableCONJ_CPF: TStringField
      FieldName = 'CONJ_CPF'
      Origin = 'CONJ_CPF'
    end
    object Cad_clientefisicoTableCONJ_DATA_NASC: TDateField
      FieldName = 'CONJ_DATA_NASC'
      Origin = 'CONJ_DATA_NASC'
    end
    object Cad_clientefisicoTableFSC_SETOR: TIntegerField
      FieldName = 'FSC_SETOR'
      Origin = 'FSC_SETOR'
    end
    object Cad_clientefisicoTableREG_UNIFICA: TStringField
      FieldName = 'REG_UNIFICA'
      Origin = 'REG_UNIFICA'
      Size = 1
    end
    object Cad_clientefisicoTableVENDEDOR: TStringField
      FieldName = 'VENDEDOR'
      Origin = 'VENDEDOR'
      Size = 5
    end
    object Cad_clientefisicoTableZONA: TStringField
      FieldName = 'ZONA'
      Origin = 'ZONA'
      Size = 5
    end
    object Cad_clientefisicoTableTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = 'TRANSPORTADORA'
    end
    object Cad_clientefisicoTableENVIAR_ORDEM_SERV_EMAIL: TStringField
      FieldName = 'ENVIAR_ORDEM_SERV_EMAIL'
      Origin = 'ENVIAR_ORDEM_SERV_EMAIL'
      Size = 1
    end
    object Cad_clientefisicoTablePS_DIA_VENC_FATURA: TIntegerField
      FieldName = 'PS_DIA_VENC_FATURA'
      Origin = 'PS_DIA_VENC_FATURA'
    end
    object Cad_clientefisicoTableCOLABORADOR: TIntegerField
      FieldName = 'COLABORADOR'
      Origin = 'COLABORADOR'
    end
    object Cad_clientefisicoTableSEGMENTO: TIntegerField
      FieldName = 'SEGMENTO'
      Origin = 'SEGMENTO'
    end
    object Cad_clientefisicoTablePAIS: TStringField
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Size = 60
    end
    object Cad_clientefisicoTableDOC_ESTRANGEIRO: TStringField
      FieldName = 'DOC_ESTRANGEIRO'
      Origin = 'DOC_ESTRANGEIRO'
    end
    object Cad_clientefisicoTableNOME_CARTAO: TStringField
      FieldName = 'NOME_CARTAO'
      Origin = 'NOME_CARTAO'
      Size = 60
    end
    object Cad_clientefisicoTableSALDO_PDV: TBCDField
      FieldName = 'SALDO_PDV'
      Origin = 'SALDO_PDV'
      Precision = 18
      Size = 2
    end
  end
  object Clientefisico_mailchimpTable: TFDQuery
    Connection = MailchimpvclConnection
    SQL.Strings = (
      'SELECT * FROM CLIENTEFISICO_MAILCHIMP')
    Left = 626
    Top = 219
  end
  object dspClienteBanco: TDataSetProvider
    DataSet = Cad_clientefisicoTable
    Left = 100
    Top = 270
  end
  object cdsClienteBanco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClienteBanco'
    Left = 100
    Top = 318
    object cdsClienteBancoCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'CLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object cdsClienteBancoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Size = 50
    end
    object cdsClienteBancoEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 800
    end
    object cdsClienteBancoEND_RESID: TStringField
      FieldName = 'END_RESID'
      Size = 80
    end
    object cdsClienteBancoTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 16
    end
  end
  object RESTRequest1: TRESTRequest
    Params = <>
    SynchronizedEvents = False
    Left = 480
    Top = 296
  end
  object PopupMenu1: TPopupMenu
    Left = 480
    Top = 352
    object S1: TMenuItem
      Caption = 'Sair da Bandeja'
      OnClick = S1Click
    end
  end
  object Timer1: TTimer
    Interval = 10000
    OnTimer = Timer1Timer
    Left = 288
    Top = 168
  end
  object cdsClientefisico_mailchimp: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspClientefisico_mailchimp'
    Left = 224
    Top = 320
    object cdsClientefisico_mailchimpNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object cdsClientefisico_mailchimpEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 800
    end
    object cdsClientefisico_mailchimpEND_RESID: TStringField
      FieldName = 'END_RESID'
      Size = 80
    end
    object cdsClientefisico_mailchimpTELEFONE: TStringField
      FieldName = 'TELEFONE'
      Size = 16
    end
    object cdsClientefisico_mailchimpCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
  end
  object dspClientefisico_mailchimp: TDataSetProvider
    DataSet = V_cliente_sem_lista_mailchimpView
    Left = 224
    Top = 264
  end
  object V_cliente_sem_lista_mailchimpView: TFDQuery
    Connection = MailchimpvclConnection
    SQL.Strings = (
      'SELECT * FROM V_CLIENTE_SEM_LISTA_MAILCHIMP')
    Left = 414
    Top = 133
  end
end
