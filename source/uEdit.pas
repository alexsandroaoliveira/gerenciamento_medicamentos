unit uEdit;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, ComCtrls, FMTBcd, DB, SqlExpr;

type
  TFrmEdit = class(TForm)
    Panel1: TPanel;
    BtnSalvar: TButton;
    BtnCancelar: TButton;
    TabControl1: TTabControl;
    SQLQuery1: TSQLQuery;
    procedure BtnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmEdit: TFrmEdit;

implementation

{$R *.dfm}

procedure TFrmEdit.BtnCancelarClick(Sender: TObject);
begin
  self.ModalResult := mrCancel;
end;

end.
