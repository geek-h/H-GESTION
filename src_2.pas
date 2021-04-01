unit src_2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, DBGrids, ExtCtrls,
  DBCtrls, ZDataset;

type

  { TForm3 }

  TForm3 = class(TForm)
    dsr_typ1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    Image1: TImage;
    dt_typ: TZQuery;
    procedure dt_typAfterDelete(DataSet: TDataSet);
    procedure dt_typAfterPost(DataSet: TDataSet);
    procedure dt_typAfterRefresh(DataSet: TDataSet);
  private

  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.dt_typAfterPost(DataSet: TDataSet);
begin
  ShowMessage('ENREGISTRER AVEC SUCCES !');
end;

procedure TForm3.dt_typAfterDelete(DataSet: TDataSet);
begin
  ShowMessage('SUPPRIMER AVEC SUCCES') ;
end;

procedure TForm3.dt_typAfterRefresh(DataSet: TDataSet);
begin
  ShowMessage('ACTUALISATION REUSSITE');
end;

end.

