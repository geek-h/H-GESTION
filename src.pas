unit src;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, db, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls,
  src_2, LCLIntf, src_5, src_4, Buttons, Menus, MaskEdit, DBCtrls, DBGrids,
  DBExtCtrls, ComCtrls, windows, ZConnection, ZDataset;

type

  { TForm1 }

  TForm1 = class(TForm)
    butn_1: TBitBtn;
    butn_2: TBitBtn;
    butn_3: TBitBtn;
    butn_4: TBitBtn;
    Button1: TButton;
    DBComboBox1: TDBComboBox;
    DBComboBox2: TDBComboBox;
    DBDateEdit1: TDBDateEdit;
    Edit1: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Edit4: TDBEdit;
    DBEdit8: TDBEdit;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    dsr_entrer: TDataSource;
    dsr_historique: TDataSource;
    dsr_historique_sortie: TDataSource;
    dsr_type_prod: TDataSource;
    dsr_stock: TDataSource;
    dsr_sortie: TDataSource;
    dsr_search: TDataSource;
    dsr_pass: TDataSource;
    dt_historique: TZQuery;
    dt_historique_sortie: TZQuery;
    dt_type_prod: TZQuery;
    dt_stock: TZQuery;
    dt_sortie: TZQuery;
    dt_search: TZQuery;
    Image1: TImage;
    Image10: TImage;
    Image2: TImage;
    db_gestion: TZConnection;
    dt_pass: TZQuery;
    Image3: TImage;
    Image4: TImage;
    Image8: TImage;
    Image9: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Panel1: TPanel;
    box1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Shape1: TShape;
    Shape2: TShape;
    dt_entrer: TZQuery;
    Shape4: TShape;
    Shape5: TShape;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    procedure butn_1Click(Sender: TObject);
    procedure butn_2Click(Sender: TObject);
    procedure dt_historiqueBeforePost(DataSet: TDataSet);
    procedure dt_stockBeforePost(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
implementation

{$R *.lfm}

{ TForm1 }


procedure TForm1.FormShow(Sender: TObject);
begin
  box1.Hide;
  butn_1.Enabled:=False;
end;

procedure TForm1.butn_2Click(Sender: TObject);
begin
  box1.Show;
  Panel1.Caption := 'SORTIE DE PRODUITS';
  butn_1.Enabled:=True;
  butn_2.Enabled:=False;
  butn_3.Enabled:=True;
  butn_4.Enabled:=True;
end;

procedure TForm1.dt_historiqueBeforePost(DataSet: TDataSet);
begin

end;

procedure TForm1.dt_stockBeforePost(DataSet: TDataSet);
begin
    dt_entrer.Close;
    dt_entrer.SQL.Clear;
   // dt_entrer.SQL.Add('INSERT INTO vt_entrer VALUES('+''''+Edit4.Text+''''+','+''''+Edit1.Text+''''+','+''''+FormatDateTime('yyyy/mm/dd',now)+''''+','+''''+FormatDateTime('hh:nn:ss',now)+''''+','+''''+IntToStr(varetr)+''''+');');
    dt_entrer.ExecSQL;
end;

procedure TForm1.butn_1Click(Sender: TObject);
begin
  Panel1.Caption := 'ACCEUILLE';
  butn_1.Enabled:=False;
  butn_2.Enabled:=True;
  butn_3.Enabled:=True;
  butn_4.Enabled:=True;
  box1.Hide;
end;

end.


//NOTRE PERE QUI EST AU CIEUX , JE SOUHAITE QUE CE PROGRAMME EBLOUISSE LE MONDE COMMERCIALE ET AU DELA
// MATHIEU : 7-7 ;
// AMEN !
