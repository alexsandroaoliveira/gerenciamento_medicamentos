unit uFrmReacoesEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ComCtrls, StdCtrls, ExtCtrls, uDmMedicamentos, FMTBcd,
  DB, SqlExpr;

type
  TFrmReacoesEdit = class(TFrmEdit)
    EdtDescricao: TEdit;
    Label1: TLabel;
    procedure BtnSalvarClick(Sender: TObject);
  private
    id: Integer;
  public
    procedure SetId(id: Integer);
    procedure Excluir(id: Integer);
  end;

var
  FrmReacoesEdit: TFrmReacoesEdit;

implementation

{$R *.dfm}

procedure TFrmReacoesEdit.SetId(id: Integer);
begin
  self.id := id;
  SQLQuery1.SQL.Text := 'SELECT DESCRICAO FROM REACAO_ADVERSA WHERE ID_REACAO = :id';
  SQLQuery1.Params.ParamByName('id').Value := id;
  SQLQuery1.Open;

  SQLQuery1.First;
  EdtDescricao.Text := SQLQuery1.FieldValues['DESCRICAO'];

  SQLQuery1.Close;
end;

procedure TFrmReacoesEdit.BtnSalvarClick(Sender: TObject);
begin
  inherited;

  if id = 0 then
  begin
    SQLQuery1.SQL.Text := 'SELECT MAX(ID_REACAO) ID_REACAO  FROM REACAO_ADVERSA';
    SQLQuery1.Open;
    SQLQuery1.First;
    self.id := SQLQuery1.FieldValues['ID_REACAO'] + 1;

    SQLQuery1.Close;

    SQLQuery1.SQL.Text := 'INSERT INTO REACAO_ADVERSA VALUES (:id, :desc)';
    SQLQuery1.Params.ParamByName('id').Value := self.id;
    SQLQuery1.Params.ParamByName('desc').Value := EdtDescricao.Text;

    SQLQuery1.ExecSQL();
  end
  else
  begin
    SQLQuery1.SQL.Text := 'UPDATE REACAO_ADVERSA SET DESCRICAO = :desc WHERE ID_REACAO = :id';
    SQLQuery1.Params.ParamByName('id').Value := id;
    SQLQuery1.Params.ParamByName('desc').Value := EdtDescricao.Text;

    SQLQuery1.ExecSQL();
  end;

  ModalResult := mrOk;
end;

procedure TFrmReacoesEdit.Excluir(id: Integer);
begin
    SQLQuery1.SQL.Text := 'DELETE FROM REACAO_ADVERSA WHERE ID_REACAO = :id';
    SQLQuery1.Params.ParamByName('id').Value := id;
    SQLQuery1.ExecSQL();
end;

end.
