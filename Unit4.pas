unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Image1: TImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  Chr:integer;

implementation
uses Unit1, Unit5;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
Chr:=1;
Form5.ShowModal;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
Chr:=3;
Form5.ShowModal;
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
Chr:=5;
Form5.ShowModal;
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
Chr:=2;
Form5.ShowModal;
end;

procedure TForm4.Button5Click(Sender: TObject);
begin
Chr:=4;
Form5.ShowModal;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
Chr:=6;
Form5.Edit1.Visible:=false;
Form5.ComboBox1.Visible:=true;
Form5.ShowModal;
end;

procedure TForm4.Button7Click(Sender: TObject);
begin
Form1.Visible:=true;
Form4.Close;
end;

procedure TForm4.Button8Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
