unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.ExtCtrls,Unit2;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    MaskEdit1: TMaskEdit;
    Button1: TButton;
    Button2: TButton;
    IPS: TEdit;
    LOG: TEdit;
    CheckBox1: TCheckBox;
    procedure Button1Click(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
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

Uses
Unit1;

procedure TForm3.Button1Click(Sender: TObject);
begin
Form1.Close;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
with DataModule2 do
begin
begin
if Form3.CheckBox1.Checked=True then
begin
ADOConnection1.ConnectionString:='Provider=SQLNCLI11.1;Integrated Security=SSPI;Persist Security Info=False;User ID="";Initial Catalog=Hasenova;Data Source=localhost;Initial File Name="";Server SPN=localhost;';
ADOConnection1.Connected:=True;
ADOConnection1.GetTableNames(Form1.Combobox1.Items);
Form1.Combobox1.ItemIndex:=0;
 Form1.Show;
 Form3.Hide;
end else
if (form3.MaskEdit1.Text<>'') and (form3.IPS.Text<>'') and (form3.LOG.Text<>'') then
begin
ADOConnection1.ConnectionString:='Provider=SQLNCLI11.1;Persist Security Info=False;User ID='+form3.LOG.Text+';Password='+form3.MaskEdit1.Text+';Initial Catalog=Hasenova;Data Source='+form3.IPS.Text+';Initial File Name="";Server SPN=""';
ADOConnection1.Connected:=True;
ADOConnection1.GetTableNames(Form1.Combobox1.Items);
Form1.Combobox1.ItemIndex:=0;
 Form1.Show;
 Form3.Hide;
end;
end;
end;
end;

procedure TForm3.CheckBox1Click(Sender: TObject);
begin
if checkbox1.Checked=true then
begin
IPS.Enabled:=False;
LOG.Enabled:=False;
MaskEdit1.Enabled:=False;
end else
begin
IPS.Enabled:=True;
LOG.Enabled:=True;
MaskEdit1.Enabled:=True;
end;
end;

end.
