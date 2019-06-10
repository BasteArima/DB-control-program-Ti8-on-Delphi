unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls,
  Vcl.Imaging.jpeg, Vcl.Buttons;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure BitBtn1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form3.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm3.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ADOQuery1.SQL.Clear;
  ADOQuery1.Active:=false;
  DBEdit1.DataField:='';
  DBEdit2.DataField:='';
  DBEdit3.DataField:='';
  DBEdit4.DataField:='';
  DBEdit5.DataField:='';
  DBEdit6.DataField:='';
  DBEdit7.DataField:='';
  DBEdit8.DataField:='';
  DBEdit7.Visible:=false;
  DBEdit8.Visible:=false;
end;

end.
