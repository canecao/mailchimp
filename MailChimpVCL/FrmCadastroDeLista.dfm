object fCadastroDeListas: TfCadastroDeListas
  Left = 0
  Top = 0
  Caption = 'fCadastroDeListas'
  ClientHeight = 409
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 8
    Width = 456
    Height = 105
    TabOrder = 0
    object lblName: TLabel
      Left = 8
      Top = 9
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object lblPermissionReminder: TLabel
      Left = 8
      Top = 57
      Width = 98
      Height = 13
      Caption = 'Permission Reminder'
    end
    object edtName: TEdit
      Left = 8
      Top = 24
      Width = 321
      Height = 21
      TabOrder = 0
    end
    object EdtPermissionReminder: TEdit
      Left = 8
      Top = 72
      Width = 439
      Height = 21
      TabOrder = 1
    end
    object CheckBox1: TCheckBox
      Left = 338
      Top = 26
      Width = 109
      Height = 17
      Caption = 'Email Type Option'
      TabOrder = 2
    end
  end
  object GroupBox2: TGroupBox
    Left = 16
    Top = 119
    Width = 264
    Height = 263
    Caption = 'Contact'
    TabOrder = 1
    object Label5: TLabel
      Left = 16
      Top = 17
      Width = 27
      Height = 13
      Caption = 'Name'
    end
    object Label6: TLabel
      Left = 16
      Top = 63
      Width = 43
      Height = 13
      Caption = 'Adrress1'
    end
    object LblAdress2: TLabel
      Left = 16
      Top = 111
      Width = 43
      Height = 13
      Caption = 'Adrress2'
    end
    object Label8: TLabel
      Left = 18
      Top = 158
      Width = 19
      Height = 13
      Caption = 'City'
    end
    object Label9: TLabel
      Left = 16
      Top = 205
      Width = 14
      Height = 13
      Caption = 'Zip'
    end
    object Label11: TLabel
      Left = 176
      Top = 158
      Width = 39
      Height = 13
      Caption = 'Country'
    end
    object Label10: TLabel
      Left = 98
      Top = 158
      Width = 30
      Height = 13
      Caption = 'states'
    end
    object Label12: TLabel
      Left = 96
      Top = 205
      Width = 30
      Height = 13
      Caption = 'Phone'
    end
    object edtName2: TEdit
      Left = 14
      Top = 33
      Width = 186
      Height = 21
      TabOrder = 0
    end
    object edtAdress1: TEdit
      Left = 14
      Top = 79
      Width = 186
      Height = 21
      TabOrder = 1
    end
    object edtAdress2: TEdit
      Left = 14
      Top = 126
      Width = 184
      Height = 21
      TabOrder = 2
    end
    object edtCity: TEdit
      Left = 16
      Top = 173
      Width = 74
      Height = 21
      TabOrder = 3
    end
    object edtZip: TEdit
      Left = 14
      Top = 220
      Width = 74
      Height = 21
      TabOrder = 4
    end
    object edtStates: TEdit
      Left = 96
      Top = 173
      Width = 74
      Height = 21
      TabOrder = 5
    end
    object edtCountry: TEdit
      Left = 174
      Top = 173
      Width = 74
      Height = 21
      TabOrder = 6
    end
    object edtPhone: TEdit
      Left = 94
      Top = 220
      Width = 156
      Height = 21
      TabOrder = 7
    end
  end
  object GroupBox3: TGroupBox
    Left = 272
    Top = 119
    Width = 192
    Height = 263
    Caption = 'Campaign Defaults'
    TabOrder = 2
    object Label1: TLabel
      Left = 16
      Top = 32
      Width = 54
      Height = 13
      Caption = 'From Name'
    end
    object Label2: TLabel
      Left = 16
      Top = 83
      Width = 51
      Height = 13
      Caption = 'From Email'
    end
    object Label3: TLabel
      Left = 16
      Top = 134
      Width = 36
      Height = 13
      Caption = 'Subject'
    end
    object Label4: TLabel
      Left = 16
      Top = 184
      Width = 47
      Height = 13
      Caption = 'Language'
    end
    object edtFromName: TEdit
      Left = 14
      Top = 48
      Width = 170
      Height = 21
      TabOrder = 0
    end
    object edtFromEmail: TEdit
      Left = 14
      Top = 98
      Width = 170
      Height = 21
      TabOrder = 1
    end
    object edtSubject: TEdit
      Left = 14
      Top = 149
      Width = 170
      Height = 21
      TabOrder = 2
    end
    object edtLanguage: TEdit
      Left = 14
      Top = 202
      Width = 170
      Height = 21
      TabOrder = 3
    end
  end
  object btnSalvar: TButton
    Left = 0
    Top = 384
    Width = 472
    Height = 25
    Align = alBottom
    Caption = 'Salvar'
    TabOrder = 3
    OnClick = btnSalvarClick
  end
end
