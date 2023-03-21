object FrmMain: TFrmMain
  Left = 285
  Top = 211
  Width = 640
  Height = 416
  Caption = 'Gerenciamento de Medicamentos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 48
    Top = 40
    object Cadastros1: TMenuItem
      Caption = '&Cadastros'
      object ReaesAdversa1: TMenuItem
        Caption = '&Rea'#231#245'es Adversa'
        OnClick = ReaesAdversa1Click
      end
      object Medicamentos1: TMenuItem
        Caption = '&Medicamentos'
        OnClick = Medicamentos1Click
      end
    end
    object Relatrio1: TMenuItem
      Caption = '&Relat'#243'rio'
    end
  end
end
