unit uFrmMedicacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLista, Provider, DB, DBClient, Grids, DBGrids, StdCtrls,
  Buttons, ExtCtrls, uDmMedicamentos;

type
  TFrmMedicamentos = class(TFrmLista)
    ClientDataSet1ID_MEDICAMENTO: TIntegerField;
    ClientDataSet1NUM_ANVISA: TStringField;
    ClientDataSet1NOME: TStringField;
    ClientDataSet1DATA_VALIDADE: TDateField;
    ClientDataSet1TELEFONE_SAC: TStringField;
    ClientDataSet1PRECO: TIntegerField;
    ClientDataSet1QUANTIDADE_COMPRIMIDO: TIntegerField;
    ClientDataSet1ID_FABRICANTE: TIntegerField;
    ClientDataSet1ID_FABRICANTE_1: TIntegerField;
    ClientDataSet1NOME_1: TStringField;
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMedicamentos: TFrmMedicamentos;

implementation

uses uFrmMedicamentosEdit;

{$R *.dfm}

procedure TFrmMedicamentos.BtnEditarClick(Sender: TObject);
begin
  inherited;
  FrmMedicamentosEdit := TFrmMedicamentosEdit.Create(self);
  try
    FrmMedicamentosEdit.SetId(ClientDataSet1ID_MEDICAMENTO.Value);
    if FrmMedicamentosEdit.ShowModal = mrOk then
    begin
      ClientDataSet1.Close();
      ClientDataSet1.Open();
    end;
  finally
    FrmMedicamentosEdit.Destroy;
  end;
end;

procedure TFrmMedicamentos.BtnNovoClick(Sender: TObject);
begin
  inherited;
  FrmMedicamentosEdit := TFrmMedicamentosEdit.Create(self);
  try
    if FrmMedicamentosEdit.ShowModal = mrOk then
    begin
      ClientDataSet1.Close();
      ClientDataSet1.Open();
    end;
  finally
    FrmMedicamentosEdit.Destroy;
  end;
end;

procedure TFrmMedicamentos.BtnExcluirClick(Sender: TObject);
begin
  inherited;
  FrmMedicamentosEdit := TFrmMedicamentosEdit.Create(self);
  try
    FrmMedicamentosEdit.Excluir(ClientDataSet1ID_MEDICAMENTO.Value);
  finally
    FrmMedicamentosEdit.Destroy;
  end;

  ClientDataSet1.Close();
  ClientDataSet1.Open();
end;

end.
