inherited FrmReacoes: TFrmReacoes
  Caption = 'Rea'#231#245'es Adversas'
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
    ReadOnly = False
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_REACAO'
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 700
        Visible = True
      end>
  end
  inherited ClientDataSet1: TClientDataSet
    object ClientDataSet1ID_REACAO: TIntegerField
      FieldName = 'ID_REACAO'
      Required = True
    end
    object ClientDataSet1DESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1020
    end
  end
  inherited DataSetProvider1: TDataSetProvider
    DataSet = DmMedicamentos.SQLReacoes
  end
end
