unit uFrmMedicamentosEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uEdit, ComCtrls, StdCtrls, ExtCtrls, Mask, FMTBcd, DB, SqlExpr, uDmMedicamentos,
  Provider, DBClient, DBCtrls, dbcgrids, Grids, DBGrids;

type
  TFrmMedicamentosEdit = class(TFrmEdit)
    Label2: TLabel;
    DspFabricantes: TDataSetProvider;
    CdsFabricantes: TClientDataSet;
    CdsFabricantesID_FABRICANTE: TIntegerField;
    CdsFabricantesNOME: TStringField;
    DsFabricantes: TDataSource;
    Label1: TLabel;
    EdtNumAnvisa: TMaskEdit;
    Label3: TLabel;
    EdtNome: TEdit;
    Label4: TLabel;
    EdtDataValidade: TMaskEdit;
    Label5: TLabel;
    EdtTelefoneSac: TMaskEdit;
    Label6: TLabel;
    EdtPreco: TEdit;
    Label7: TLabel;
    EdtQtdeComprimido: TEdit;
    Label8: TLabel;
    EdtIdFabricante: TDBLookupComboBox;
    GridMedReacao: TDBGrid;
    BtnAcidionarReacao: TButton;
    BtnRemoverReacao: TButton;
    EdtIdReacao: TDBLookupComboBox;
    DspReacoes: TDataSetProvider;
    CdsReacoes: TClientDataSet;
    DsReacoes: TDataSource;
    CdsReacoesID_REACAO: TIntegerField;
    CdsReacoesDESCRICAO: TStringField;
    DspMedReacoes: TDataSetProvider;
    CdsMedReacoes: TClientDataSet;
    DsMedReacoes: TDataSource;
    CdsMedReacoesID_MEDICAMENTO: TIntegerField;
    CdsMedReacoesNUM_ANVISA: TStringField;
    CdsMedReacoesNOME: TStringField;
    CdsMedReacoesDATA_VALIDADE: TDateField;
    CdsMedReacoesTELEFONE_SAC: TStringField;
    CdsMedReacoesPRECO: TIntegerField;
    CdsMedReacoesQUANTIDADE_COMPRIMIDO: TIntegerField;
    CdsMedReacoesID_FABRICANTE: TIntegerField;
    CdsMedReacoesID_MEDICAMENTO_1: TIntegerField;
    CdsMedReacoesID_REACAO: TIntegerField;
    CdsMedReacoesID_REACAO_1: TIntegerField;
    CdsMedReacoesDESCRICAO: TStringField;
    procedure BtnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure BtnAcidionarReacaoClick(Sender: TObject);
    procedure BtnRemoverReacaoClick(Sender: TObject);
  private
    id: Integer;
  public
    procedure SetId(id: Integer);
    procedure Excluir(id: Integer);
  end;

var
  FrmMedicamentosEdit: TFrmMedicamentosEdit;

implementation

{$R *.dfm}

procedure TFrmMedicamentosEdit.SetId(id: Integer);
begin
  self.id := id;
  SQLQuery1.SQL.Text := 'SELECT * FROM MEDICAMENTO WHERE ID_MEDICAMENTO = :id';
  SQLQuery1.Params.ParamByName('id').Value := id;
  SQLQuery1.Open;

  SQLQuery1.First;
  EdtNumAnvisa.Text := SQLQuery1.FieldValues['NUM_ANVISA'];
  EdtNome.Text := SQLQuery1.FieldValues['NOME'];
  EdtDataValidade.Text := SQLQuery1.FieldValues['DATA_VALIDADE'];
  EdtTelefoneSac.Text := SQLQuery1.FieldValues['TELEFONE_SAC'];
  EdtPreco.Text := SQLQuery1.FieldValues['PRECO'];
  EdtQtdeComprimido.Text := SQLQuery1.FieldValues['QUANTIDADE_COMPRIMIDO'];
  EdtIdFabricante.KeyValue := SQLQuery1.FieldValues['ID_FABRICANTE'];

  SQLQuery1.Close;
end;

procedure TFrmMedicamentosEdit.Excluir(id: Integer);
begin
    SQLQuery1.SQL.Text := 'DELETE FROM MEDICAMENTO WHERE ID_MEDICAMENTO = :id';
    SQLQuery1.Params.ParamByName('id').Value := id;
    SQLQuery1.ExecSQL();
end;

procedure TFrmMedicamentosEdit.BtnSalvarClick(Sender: TObject);
begin
  inherited;
if id = 0 then
  begin
    SQLQuery1.SQL.Text := 'SELECT MAX(ID_MEDICAMENTO) ID_MEDICAMENTO  FROM MEDICAMENTO';
    SQLQuery1.Open;
    SQLQuery1.First;
    self.id := SQLQuery1.FieldValues['ID_MEDICAMENTO'] + 1;

    SQLQuery1.Close;

    SQLQuery1.SQL.Text := 'INSERT INTO MEDICAMENTO VALUES (:id, :NumAnvisa, :Nome, :DataValidade, :TelefoneSac, :Preco, :QtdeComprimido, :IdFabricante)';
    SQLQuery1.Params.ParamByName('id').Value := id;
    SQLQuery1.Params.ParamByName('NumAnvisa').Value := EdtNumAnvisa.Text;
    SQLQuery1.Params.ParamByName('Nome').Value := EdtNome.Text;
    SQLQuery1.Params.ParamByName('DataValidade').Value := EdtDataValidade.Text;
    SQLQuery1.Params.ParamByName('TelefoneSac').Value := EdtTelefoneSac.Text;
    SQLQuery1.Params.ParamByName('Preco').Value := EdtPreco.Text;
    SQLQuery1.Params.ParamByName('QtdeComprimido').Value := EdtQtdeComprimido.Text;
    SQLQuery1.Params.ParamByName('IdFabricante').Value := EdtIdFabricante.KeyValue;

    SQLQuery1.ExecSQL();
  end
  else
  begin
    SQLQuery1.SQL.Text :=
      'UPDATE MEDICAMENTO ' +
      '  SET NUM_ANVISA = :NumAnvisa, ' +
      '  NOME = :Nome, ' +
      '  DATA_VALIDADE = :DataValidade, ' +
      '  TELEFONE_SAC = :TelefoneSac, ' +
      '  PRECO = :Preco, ' +
      '  QUANTIDADE_COMPRIMIDO = :QtdeComprimido, ' +
      '  ID_FABRICANTE = :IdFabricante ' +
      'WHERE ID_MEDICAMENTO = :id';
    SQLQuery1.Params.ParamByName('id').Value := id;
    SQLQuery1.Params.ParamByName('NumAnvisa').Value := EdtNumAnvisa.Text;
    SQLQuery1.Params.ParamByName('Nome').Value := EdtNome.Text;
    SQLQuery1.Params.ParamByName('DataValidade').Value := EdtDataValidade.Text;
    SQLQuery1.Params.ParamByName('TelefoneSac').Value := EdtTelefoneSac.Text;
    SQLQuery1.Params.ParamByName('Preco').Value := EdtPreco.Text;
    SQLQuery1.Params.ParamByName('QtdeComprimido').Value := EdtQtdeComprimido.Text;
    SQLQuery1.Params.ParamByName('IdFabricante').Value := EdtIdFabricante.KeyValue;

    SQLQuery1.ExecSQL();
  end;

  ModalResult := mrOk;
end;

procedure TFrmMedicamentosEdit.FormActivate(Sender: TObject);
begin
  inherited;
  CdsFabricantes.Open();
  CdsReacoes.Open();
  CdsMedReacoes.Open();
end;

procedure TFrmMedicamentosEdit.BtnAcidionarReacaoClick(Sender: TObject);
begin
  inherited;
  if id > 0 then
  begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'INSERT INTO MEDICAMENTO_REACAO VALUES (:medic, :reacao);';
    SQLQuery1.ParamByName('medic').Value := id;
    SQLQuery1.ParamByName('reacao').Value := EdtIdReacao.KeyValue;
    SQLQuery1.ExecSQL;

    CdsMedReacoes.Close;
    CdsMedReacoes.Open;
  end;
end;

procedure TFrmMedicamentosEdit.BtnRemoverReacaoClick(Sender: TObject);
begin
  inherited;
  if id > 0 then
  begin
    SQLQuery1.Close;
    SQLQuery1.SQL.Text := 'DELETE FROM MEDICAMENTO_REACAO WHERE ID_MEDICAMENTO  = :medic AND ID_REACAO = :reacao;';
    SQLQuery1.ParamByName('medic').Value := id;
    SQLQuery1.ParamByName('reacao').Value := CdsReacoesID_REACAO.Value;
    SQLQuery1.ExecSQL;

    CdsMedReacoes.Close;
    CdsMedReacoes.Open;
  end;
end;

end.
