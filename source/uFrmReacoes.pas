unit uFrmReacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLista, DB, DBClient, Grids, DBGrids, StdCtrls, Buttons,
  ExtCtrls, uDmMedicamentos, Provider, uFrmReacoesEdit;

type
  TFrmReacoes = class(TFrmLista)
    ClientDataSet1ID_REACAO: TIntegerField;
    ClientDataSet1DESCRICAO: TStringField;
    procedure BtnEditarClick(Sender: TObject);
    procedure BtnNovoClick(Sender: TObject);
    procedure BtnExcluirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReacoes: TFrmReacoes;

implementation

{$R *.dfm}

procedure TFrmReacoes.BtnEditarClick(Sender: TObject);
begin
  inherited;
  FrmReacoesEdit := TFrmReacoesEdit.Create(self);
  try
    FrmReacoesEdit.SetId(ClientDataSet1ID_REACAO.Value);
    if FrmReacoesEdit.ShowModal = mrOk then
    begin
      ClientDataSet1.Close();
      ClientDataSet1.Open();
    end;
  finally
    FrmReacoesEdit.Destroy;
  end;
end;

procedure TFrmReacoes.BtnNovoClick(Sender: TObject);
begin
  inherited;
  FrmReacoesEdit := TFrmReacoesEdit.Create(self);
  try
    if FrmReacoesEdit.ShowModal = mrOk then
    begin
      ClientDataSet1.Close();
      ClientDataSet1.Open();
    end;
  finally
    FrmReacoesEdit.Destroy;
  end;
end;

procedure TFrmReacoes.BtnExcluirClick(Sender: TObject);
begin
  inherited;

  FrmReacoesEdit := TFrmReacoesEdit.Create(self);
  try
    FrmReacoesEdit.Excluir(ClientDataSet1ID_REACAO.Value);
  finally
    FrmReacoesEdit.Destroy;
  end;

  ClientDataSet1.Close();
  ClientDataSet1.Open();
end;

end.
