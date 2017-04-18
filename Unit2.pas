unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    Button1: TButton;
    Label2: TLabel;
    CheckBox3: TCheckBox;
    procedure CheckBox1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  close;
end;

procedure TForm2.CheckBox1Click(Sender: TObject);
begin
  if checkbox1.Checked=true then
  begin
    checkbox2.Enabled:=false;
    if checkbox2.Checked=true then checkbox2.Checked:=false;

  end;
  if checkbox1.Checked=false then checkbox2.Enabled:=true;

end;

end.
