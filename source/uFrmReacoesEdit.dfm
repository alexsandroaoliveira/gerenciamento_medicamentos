inherited FrmReacoesEdit: TFrmReacoesEdit
  Width = 517
  Height = 252
  Caption = 'Rea'#231#245'es Adversas'
  OldCreateOrder = True
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    Top = 164
    Width = 509
    inherited BtnSalvar: TButton
      Left = 320
      OnClick = BtnSalvarClick
    end
    inherited BtnCancelar: TButton
      Left = 416
    end
  end
  inherited TabControl1: TTabControl
    Width = 509
    Height = 164
    object Label1: TLabel
      Left = 24
      Top = 56
      Width = 51
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object EdtDescricao: TEdit
      Left = 80
      Top = 48
      Width = 393
      Height = 21
      TabOrder = 0
    end
  end
end
