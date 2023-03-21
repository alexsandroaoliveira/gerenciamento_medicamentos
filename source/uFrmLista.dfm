object FrmLista: TFrmLista
  Left = 0
  Top = 54
  Width = 640
  Height = 416
  Caption = 'FrmLista'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 632
    Height = 57
    Align = alTop
    TabOrder = 0
    object BtnNovo: TBitBtn
      Left = 8
      Top = 8
      Width = 73
      Height = 41
      Caption = 'Novo'
      TabOrder = 0
    end
    object BtnEditar: TBitBtn
      Left = 88
      Top = 8
      Width = 73
      Height = 41
      Caption = 'Editar'
      TabOrder = 1
    end
    object BtnExcluir: TBitBtn
      Left = 168
      Top = 8
      Width = 73
      Height = 41
      Caption = 'Excluir'
      TabOrder = 2
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 57
    Width = 632
    Height = 325
    Align = alClient
    DataSource = DataSource1
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
    ReadOnly = True
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ClientDataSet1: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DataSetProvider1'
    Left = 320
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = ClientDataSet1
    Left = 352
    Top = 24
  end
  object DataSetProvider1: TDataSetProvider
    Left = 288
    Top = 24
  end
end
