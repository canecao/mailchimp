object CadastroDeCampanha: TCadastroDeCampanha
  Left = 0
  Top = 0
  Caption = 'CadastroDeCampanha'
  ClientHeight = 221
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 56
    Width = 57
    Height = 13
    Caption = 'subject_line'
  end
  object Label2: TLabel
    Left = 16
    Top = 100
    Width = 40
    Height = 13
    Caption = 'reply_to'
  end
  object Label3: TLabel
    Left = 16
    Top = 144
    Width = 54
    Height = 13
    Caption = 'from_name'
  end
  object Label4: TLabel
    Left = 14
    Top = 8
    Width = 20
    Height = 13
    Caption = 'Title'
  end
  object edtfrom_name: TEdit
    Left = 16
    Top = 160
    Width = 230
    Height = 21
    TabOrder = 3
  end
  object edtreply_to: TEdit
    Left = 16
    Top = 116
    Width = 230
    Height = 21
    TabOrder = 2
  end
  object edtSubject_line: TEdit
    Left = 16
    Top = 72
    Width = 230
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 0
    Top = 196
    Width = 256
    Height = 25
    Align = alBottom
    Caption = 'Criar'
    TabOrder = 4
    OnClick = Button1Click
    ExplicitTop = 153
  end
  object edtTitle: TEdit
    Left = 14
    Top = 24
    Width = 230
    Height = 21
    TabOrder = 0
  end
  object OpenDialog1: TOpenDialog
    Left = 144
    Top = 88
  end
end
