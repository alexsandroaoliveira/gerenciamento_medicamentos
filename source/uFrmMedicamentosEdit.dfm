inherited FrmMedicamentosEdit: TFrmMedicamentosEdit
  Width = 713
  Caption = 'Medicamentos'
  OldCreateOrder = True
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel [0]
    Left = 24
    Top = 72
    Width = 75
    Height = 13
    Caption = 'Numero Anvisa:'
  end
  inherited Panel1: TPanel
    Width = 705
    inherited BtnSalvar: TButton
      OnClick = BtnSalvarClick
    end
  end
  inherited TabControl1: TTabControl
    Width = 705
    object Label1: TLabel
      Left = 24
      Top = 48
      Width = 75
      Height = 13
      Caption = 'Numero Anvisa:'
    end
    object Label3: TLabel
      Left = 64
      Top = 80
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object Label4: TLabel
      Left = 48
      Top = 112
      Width = 44
      Height = 13
      Caption = 'Validade:'
    end
    object Label5: TLabel
      Left = 24
      Top = 144
      Width = 69
      Height = 13
      Caption = 'Telefone SAC:'
    end
    object Label6: TLabel
      Left = 64
      Top = 176
      Width = 31
      Height = 13
      Caption = 'Pre'#231'o:'
    end
    object Label7: TLabel
      Left = 8
      Top = 216
      Width = 86
      Height = 13
      Caption = 'Qtde. Comprimido:'
    end
    object Label8: TLabel
      Left = 40
      Top = 248
      Width = 53
      Height = 13
      Caption = 'Fabricante:'
    end
    object EdtNumAnvisa: TMaskEdit
      Left = 104
      Top = 40
      Width = 118
      Height = 21
      EditMask = '0.0000.0000.000-0'
      MaxLength = 17
      TabOrder = 0
      Text = ' .    .    .   - '
    end
    object EdtNome: TEdit
      Left = 104
      Top = 72
      Width = 119
      Height = 21
      TabOrder = 1
    end
    object EdtDataValidade: TMaskEdit
      Left = 104
      Top = 104
      Width = 119
      Height = 21
      TabOrder = 2
    end
    object EdtTelefoneSac: TMaskEdit
      Left = 104
      Top = 136
      Width = 119
      Height = 21
      EditMask = '(00)0000-0000'
      MaxLength = 13
      TabOrder = 3
      Text = '(  )    -    '
    end
    object EdtPreco: TEdit
      Left = 104
      Top = 176
      Width = 121
      Height = 21
      TabOrder = 4
    end
    object EdtQtdeComprimido: TEdit
      Left = 104
      Top = 208
      Width = 121
      Height = 21
      TabOrder = 5
    end
    object EdtIdFabricante: TDBLookupComboBox
      Left = 104
      Top = 240
      Width = 145
      Height = 21
      KeyField = 'ID_FABRICANTE'
      ListField = 'NOME'
      ListSource = DsFabricantes
      TabOrder = 6
    end
    object GridMedReacao: TDBGrid
      Left = 272
      Top = 72
      Width = 401
      Height = 145
      DataSource = DsMedReacoes
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 7
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'ID_MEDICAMENTO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NUM_ANVISA'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'NOME'
          Title.Caption = 'Medicamento'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'DATA_VALIDADE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'TELEFONE_SAC'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'PRECO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'QUANTIDADE_COMPRIMIDO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_FABRICANTE'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_MEDICAMENTO_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_REACAO'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'ID_REACAO_1'
          Visible = False
        end
        item
          Expanded = False
          FieldName = 'DESCRICAO'
          Title.Caption = 'Rea'#231#227'o'
          Width = 150
          Visible = True
        end>
    end
    object BtnAcidionarReacao: TButton
      Left = 472
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Adicionar'
      TabOrder = 8
      OnClick = BtnAcidionarReacaoClick
    end
    object BtnRemoverReacao: TButton
      Left = 552
      Top = 224
      Width = 75
      Height = 25
      Caption = 'Remover'
      TabOrder = 9
      OnClick = BtnRemoverReacaoClick
    end
    object EdtIdReacao: TDBLookupComboBox
      Left = 312
      Top = 224
      Width = 145
      Height = 21
      KeyField = 'ID_REACAO'
      ListField = 'DESCRICAO'
      ListSource = DsReacoes
      TabOrder = 10
    end
  end
  inherited SQLQuery1: TSQLQuery
    MaxBlobSize = -1
    SQLConnection = DmMedicamentos.SQLConnection1
    Left = 40
    Top = 320
  end
  object DspFabricantes: TDataSetProvider
    DataSet = DmMedicamentos.SQLFabricante
    Left = 120
    Top = 318
  end
  object CdsFabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspFabricantes'
    Left = 160
    Top = 318
    object CdsFabricantesID_FABRICANTE: TIntegerField
      FieldName = 'ID_FABRICANTE'
      Required = True
    end
    object CdsFabricantesNOME: TStringField
      FieldName = 'NOME'
      Size = 400
    end
  end
  object DsFabricantes: TDataSource
    DataSet = CdsFabricantes
    Left = 200
    Top = 318
  end
  object DspReacoes: TDataSetProvider
    DataSet = DmMedicamentos.SQLReacoes
    Left = 272
    Top = 318
  end
  object CdsReacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspReacoes'
    Left = 304
    Top = 318
    object CdsReacoesID_REACAO: TIntegerField
      FieldName = 'ID_REACAO'
      Required = True
    end
    object CdsReacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1020
    end
  end
  object DsReacoes: TDataSource
    DataSet = CdsReacoes
    Left = 344
    Top = 318
  end
  object DspMedReacoes: TDataSetProvider
    DataSet = DmMedicamentos.SQLMedicamentoReacoes
    Left = 568
    Top = 318
  end
  object CdsMedReacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'DspMedReacoes'
    Left = 600
    Top = 318
    object CdsMedReacoesID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
    end
    object CdsMedReacoesNUM_ANVISA: TStringField
      FieldName = 'NUM_ANVISA'
      Required = True
      Size = 68
    end
    object CdsMedReacoesNOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 400
    end
    object CdsMedReacoesDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object CdsMedReacoesTELEFONE_SAC: TStringField
      FieldName = 'TELEFONE_SAC'
      Size = 52
    end
    object CdsMedReacoesPRECO: TIntegerField
      FieldName = 'PRECO'
    end
    object CdsMedReacoesQUANTIDADE_COMPRIMIDO: TIntegerField
      FieldName = 'QUANTIDADE_COMPRIMIDO'
    end
    object CdsMedReacoesID_FABRICANTE: TIntegerField
      FieldName = 'ID_FABRICANTE'
    end
    object CdsMedReacoesID_MEDICAMENTO_1: TIntegerField
      FieldName = 'ID_MEDICAMENTO_1'
      Required = True
    end
    object CdsMedReacoesID_REACAO: TIntegerField
      FieldName = 'ID_REACAO'
      Required = True
    end
    object CdsMedReacoesID_REACAO_1: TIntegerField
      FieldName = 'ID_REACAO_1'
      Required = True
    end
    object CdsMedReacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1020
    end
  end
  object DsMedReacoes: TDataSource
    DataSet = CdsMedReacoes
    Left = 640
    Top = 318
  end
end
