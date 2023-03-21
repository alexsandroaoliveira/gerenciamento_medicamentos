unit uDmMedicamentos;

interface

uses
  SysUtils, Classes, DBXpress, FMTBcd, DB, SqlExpr, Provider;

type
  TDmMedicamentos = class(TDataModule)
    SQLConnection1: TSQLConnection;
    SQLReacoes: TSQLQuery;
    SQLMedicamentos: TSQLQuery;
    SQLMedicamentoReacoes: TSQLQuery;
    SQLFabricante: TSQLQuery;
    SQLFabricanteID_FABRICANTE: TIntegerField;
    SQLFabricanteNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DmMedicamentos: TDmMedicamentos;

implementation

{$R *.dfm}

procedure TDmMedicamentos.DataModuleCreate(Sender: TObject);
begin
  SQLConnection1.Open();
end;

end.
