object FrmEdit: TFrmEdit
  Left = 192
  Top = 114
  Width = 584
  Height = 398
  Caption = 'FrmEdit'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 310
    Width = 576
    Height = 54
    Align = alBottom
    TabOrder = 0
    object BtnSalvar: TButton
      Left = 392
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Salvar'
      TabOrder = 0
    end
    object BtnCancelar: TButton
      Left = 480
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object TabControl1: TTabControl
    Left = 0
    Top = 0
    Width = 576
    Height = 310
    Align = alClient
    TabOrder = 1
    Tabs.Strings = (
      'Cadastro')
    TabIndex = 0
  end
  object SQLQuery1: TSQLQuery
    Params = <>
    Left = 160
    Top = 120
  end
end
