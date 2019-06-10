unit Unit5;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    ComboBox1: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure WebBuyList();
    procedure GoodsByName();
    procedure MemberByName();
    procedure MemberByTeam();
    procedure EmployeeByNumber();
    procedure EmployeeByGroup();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation
uses Unit6, Unit4, Unit7;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
if Edit1.Visible=true then
begin
if Edit1.Text='' then
  begin
  ShowMessage('�� �� ����� �������!');
  end
  else
   begin
   case Chr of
     1 : EmployeeByGroup;
     2 : EmployeeByNumber;
     3 : MemberByTeam;
     4 : MemberByName;
     5 : WebBuyList;
     6 : GoodsByName;
   end;
  end;
end
else
begin
case Chr of
     1 : EmployeeByGroup;
     2 : EmployeeByNumber;
     3 : MemberByTeam;
     4 : MemberByName;
     5 : WebBuyList;
     6 : GoodsByName;
   end;
end;
end;

procedure TForm5.WebBuyList();
begin
  Form6.Caption:='������ �����������';
  Form6.ShowModal;
  Form5.Close;
end;

procedure TForm5.GoodsByName();
var a,b:string;
begin
if Form5.ComboBox1.Text='�� �����' then
begin
  b:='SELECT Goods.[� ������], Goods.[�������� ������], Goods.[��������� ������],';
  Form6.Caption:='������ �� ��������';
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add(b+' Goods.[����� �������], Goods.[��� ������], Goods.���, Goods.[�������� �����] FROM Goods WHERE (((Goods.[����� �������])="�� �����"));');
  Form6.ADOQuery2.SQL.Add('SELECT Sum([Goods].[��������� ������]) AS ����� FROM Goods WHERE (((Goods.[����� �������])="�� �����"));');
  Form6.ADOQuery1.Active:=true;
  Form6.ADOQuery2.Active:=true;
  Form6.DBText1.DataField:='�����';
  Form6.ShowModal;
end
else
begin
  b:='SELECT Goods.[� ������], Goods.[�������� ������], Goods.[��������� ������],';
  Form6.Caption:='������ �� ��������';
  Form6.ADOQuery1.SQL.Clear;
  Form6.ADOQuery1.SQL.Add(b+' Goods.[����� �������], Goods.[��� ������], Goods.���, Goods.[�������� �����] FROM Goods WHERE (((Goods.[����� �������])="� ��������"));');
  Form6.ADOQuery2.SQL.Add('SELECT Sum([Goods].[��������� ������]) AS ����� FROM Goods WHERE (((Goods.[����� �������])="� ��������"));');
  Form6.ADOQuery1.Active:=true;
  Form6.ADOQuery2.Active:=true;
  Form6.DBText1.DataField:='�����';
  Form6.ShowModal;
end;
end;

procedure TForm5.MemberByName();
begin
  Form6.Caption:='�������� �� ������';
  Form6.ShowModal;
  Form5.Close;
end;

procedure TForm5.MemberByTeam();
begin
  Form6.Caption:='�������� �� �������';
  Form6.ShowModal;
  Form5.Close;
end;

procedure TForm5.EmployeeByNumber();
begin
  Form6.Caption:='��������� �� ������';
  Form6.ShowModal;
  Form5.Close;
end;

procedure TForm5.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Edit1.Text:='';
ComboBox1.Visible:=false;
Edit1.Visible:=true;
end;

procedure TForm5.EmployeeByGroup();
var ebg,l1:string;
begin
ebg:=Edit1.Text;
l1:='SELECT Employees.[������� ������], Employees.���, Employees.[���� ��������], Employees.������, Employees.[����� ��������], Groups.[���� ������] ';
  Form7.ADOQuery1.SQL.Clear;
  Form7.ADOQuery1.SQL.Add(l1+'FROM Groups INNER JOIN Employees ON Groups.[� ������] = Employees.[������� ������] WHERE (((Employees.[������� ������])='+ebg+'));');
  Form7.ADOQuery1.Active:=true;
  Form7.Caption:='���������� �� ������';
  Form7.ShowModal;
end;

end.
