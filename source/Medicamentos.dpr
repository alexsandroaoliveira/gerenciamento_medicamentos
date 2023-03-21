program Medicamentos;

uses
  Forms,
  uMain in 'uMain.pas' {FrmMain},
  uFrmLista in 'uFrmLista.pas' {FrmLista},
  uDmMedicamentos in 'uDmMedicamentos.pas' {DmMedicamentos: TDataModule},
  uEdit in 'uEdit.pas' {FrmEdit},
  uFrmReacoes in 'uFrmReacoes.pas' {FrmReacoes},
  uFrmReacoesEdit in 'uFrmReacoesEdit.pas' {FrmReacoesEdit},
  uFrmMedicacoes in 'uFrmMedicacoes.pas' {FrmMedicamentos},
  uFrmMedicamentosEdit in 'uFrmMedicamentosEdit.pas' {FrmMedicamentosEdit};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFrmMain, FrmMain);
  Application.CreateForm(TDmMedicamentos, DmMedicamentos);
  Application.CreateForm(TFrmEdit, FrmEdit);
  Application.CreateForm(TFrmReacoes, FrmReacoes);
  Application.CreateForm(TFrmReacoesEdit, FrmReacoesEdit);
  Application.CreateForm(TFrmMedicamentos, FrmMedicamentos);
  Application.CreateForm(TFrmMedicamentosEdit, FrmMedicamentosEdit);
  Application.Run;
end.
