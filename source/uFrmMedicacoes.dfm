inherited FrmMedicamentos: TFrmMedicamentos
  Left = 164
  Top = 125
  Caption = 'Medicamentos'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited BtnNovo: TBitBtn
      OnClick = BtnNovoClick
    end
    inherited BtnEditar: TBitBtn
      OnClick = BtnEditarClick
    end
    inherited BtnExcluir: TBitBtn
      OnClick = BtnExcluirClick
    end
  end
  inherited DBGrid1: TDBGrid
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_MEDICAMENTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NUM_ANVISA'
        Title.Caption = 'Num. Anvisa'
        Width = 70
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 200
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
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE_COMPRIMIDO'
        Title.Caption = 'Qtde'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FABRICANTE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'ID_FABRICANTE_1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'NOME_1'
        Title.Caption = 'Fabricante'
        Width = 200
        Visible = True
      end>
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1ID_MEDICAMENTO: TIntegerField
      FieldName = 'ID_MEDICAMENTO'
      Required = True
    end
    object ClientDataSet1NUM_ANVISA: TStringField
      FieldName = 'NUM_ANVISA'
      Required = True
      Size = 68
    end
    object ClientDataSet1NOME: TStringField
      FieldName = 'NOME'
      Required = True
      Size = 400
    end
    object ClientDataSet1DATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
    end
    object ClientDataSet1TELEFONE_SAC: TStringField
      FieldName = 'TELEFONE_SAC'
      Size = 52
    end
    object ClientDataSet1PRECO: TIntegerField
      FieldName = 'PRECO'
    end
    object ClientDataSet1QUANTIDADE_COMPRIMIDO: TIntegerField
      FieldName = 'QUANTIDADE_COMPRIMIDO'
    end
    object ClientDataSet1ID_FABRICANTE: TIntegerField
      FieldName = 'ID_FABRICANTE'
    end
    object ClientDataSet1ID_FABRICANTE_1: TIntegerField
      FieldName = 'ID_FABRICANTE_1'
      Required = True
    end
    object ClientDataSet1NOME_1: TStringField
      FieldName = 'NOME_1'
      Size = 400
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    DataSet = DmMedicamentos.SQLMedicamentos
  end
end
