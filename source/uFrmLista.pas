unit uFrmLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, Buttons, DB, DBClient, uDmMedicamentos,
  Provider;

type
  TFrmLista = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    BtnNovo: TBitBtn;
    BtnEditar: TBitBtn;
    BtnExcluir: TBitBtn;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    DataSetProvider1: TDataSetProvider;
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLista: TFrmLista;

implementation

{$R *.dfm}

procedure TFrmLista.FormActivate(Sender: TObject);
begin
  ClientDataSet1.Open;
end;

end.
