unit uMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, uFrmReacoes;

type
  TFrmMain = class(TForm)
    MainMenu1: TMainMenu;
    Cadastros1: TMenuItem;
    ReaesAdversa1: TMenuItem;
    Medicamentos1: TMenuItem;
    Relatrio1: TMenuItem;
    procedure ReaesAdversa1Click(Sender: TObject);
    procedure Medicamentos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMain: TFrmMain;

implementation

uses uFrmMedicacoes;

{$R *.dfm}

procedure TFrmMain.ReaesAdversa1Click(Sender: TObject);
begin
  try
    FrmReacoes := TFrmReacoes.Create(self);
    FrmReacoes.ShowModal();
  finally
    FrmReacoes.Destroy;
  end;
end;

procedure TFrmMain.Medicamentos1Click(Sender: TObject);
begin
  try
    FrmMedicamentos := TFrmMedicamentos.Create(self);
    FrmMedicamentos.ShowModal();
  finally
    FrmMedicamentos.Destroy;
  end;
end;

end.
