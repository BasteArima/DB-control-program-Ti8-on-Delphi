unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Image1: TImage;
    procedure Button8Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button4Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation
uses Unit1, Unit3;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  Form3.Caption:='������ ���� �����������';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Employees');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� ����������';
  Form3.DBEdit2.DataField:='���';
  Form3.DBEdit3.DataField:='���� ��������';
  Form3.DBEdit4.DataField:='������';
  Form3.DBEdit5.DataField:='����� ��������';
  Form3.DBEdit6.DataField:='������� ������';
  Form3.DBEdit4.Width:=360;
  Form3.DBEdit2.Width:=224;
  Form3.DBEdit4.Visible:=true;
  Form3.DBEdit5.Visible:=true;
  Form3.DBEdit6.Visible:=true;


Form3.ShowModal;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form3.Caption:='������ ���� ������';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Teams');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� �������';
  Form3.DBEdit2.DataField:='�������� �������';
  Form3.DBEdit3.DataField:='����';
  Form3.DBEdit4.DataField:='��������';
  Form3.DBEdit3.Width:=130;
  Form3.DBEdit2.Width:=110;
  Form3.DBEdit4.Width:=25;
  Form3.DBEdit1.Width:=25;
  Form3.DBEdit5.Visible:=false;
  Form3.DBEdit6.Visible:=false;
  Form3.ShowModal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Form3.Caption:='������ ���� �����';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Shops');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� �����';
  Form3.DBEdit2.DataField:='�������� �����';
  Form3.DBEdit4.DataField:='���������� �������';
  Form3.DBEdit3.DataField:='����� �������';
  Form3.DBEdit5.DataField:='����� ��������';
  Form3.DBEdit3.Width:=25;
  Form3.DBEdit2.Width:=60;
  Form3.DBEdit4.Width:=25;
  Form3.DBEdit5.Width:=25;
  Form3.DBEdit1.Width:=25;
  Form3.DBEdit4.Visible:=true;
  Form3.DBEdit5.Visible:=true;
  Form3.DBEdit6.Visible:=false;
  Form3.ShowModal;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  Form3.Caption:='������ ���� ������� �����';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Groups');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� ������';
  Form3.DBEdit2.DataField:='�������� ������';
  Form3.DBEdit3.DataField:='���� ������';
  Form3.DBEdit3.Width:=100;
  Form3.DBEdit1.Width:=25;
  Form3.DBEdit2.Width:=140;
  Form3.DBEdit4.Visible:=false;
  Form3.DBEdit5.Visible:=false;
  Form3.DBEdit6.Visible:=false;
  Form3.ShowModal;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  Form3.Caption:='������ ���� ���������� ������';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Members');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� ���������';
  Form3.DBEdit2.DataField:='��� ���������';
  Form3.DBEdit3.DataField:='������';
  Form3.DBEdit4.DataField:='�������� �������';
  Form3.DBEdit5.DataField:='����';
  Form3.DBEdit6.DataField:='���� ��������';
  Form3.DBEdit7.DataField:='���';
  Form3.DBEdit8.DataField:='������ �������';
  Form3.DBEdit3.Width:=360;
  Form3.DBEdit4.Width:=25;
  Form3.DBEdit5.Width:=80;
  Form3.DBEdit6.Width:=80;
  Form3.DBEdit7.Width:=80;
  Form3.DBEdit8.Width:=25;
  Form3.DBEdit4.Visible:=true;
  Form3.DBEdit5.Visible:=true;
  Form3.DBEdit6.Visible:=true;
  Form3.DBEdit7.Visible:=true;
  Form3.DBEdit8.Visible:=true;
  Form3.ShowModal;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
Form3.Caption:='������ ���� �������';
  Form3.ADOQuery1.SQL.Clear;
  Form3.ADOQuery1.SQL.Add('select * from Goods');
  Form3.ADOQuery1.Active:=true;
  Form3.DBEdit1.DataField:='� ������';
  Form3.DBEdit2.DataField:='�������� ������';
  Form3.DBEdit3.DataField:='��������� ������';
  Form3.DBEdit4.DataField:='����� �������';
  Form3.DBEdit5.DataField:='��� ������';
  Form3.DBEdit6.DataField:='���';
  Form3.DBEdit7.DataField:='�������� �����';
  Form3.DBEdit3.Width:=35;
  Form3.DBEdit4.Width:=80;
  Form3.DBEdit5.Width:=120;
  Form3.DBEdit6.Width:=45;
  Form3.DBEdit7.Width:=25;
  Form3.DBEdit1.Width:=25;
  Form3.DBEdit2.Width:=100;
  Form3.DBEdit4.Visible:=true;
  Form3.DBEdit5.Visible:=true;
  Form3.DBEdit6.Visible:=true;
  Form3.DBEdit7.Visible:=false;
  Form3.DBEdit8.Visible:=false;
  Form3.ShowModal;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
Form1.Visible:=true;
Form2.Close;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
Application.Terminate;
end;

procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Form1.Visible:=true;
end;

end.