unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Web.Win.Sockets,
  Vcl.StdCtrls, Vcl.Menus, Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Edit2: TEdit;
    Edit3: TEdit;
    Memo1: TMemo;
    TcpClient1: TTcpClient;
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    Program1: TMenuItem;
    Opcje1: TMenuItem;
    Pomoc1: TMenuItem;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Koniec1: TMenuItem;
    Ustawienia1: TMenuItem;
    Pomoc2: TMenuItem;
    Oprogramie1: TMenuItem;
    StatusBar1: TStatusBar;
    label4: TLabel;
    Listausug1: TMenuItem;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Koniec1Click(Sender: TObject);
    procedure Oprogramie1Click(Sender: TObject);
    procedure Ustawienia1Click(Sender: TObject);
    procedure Pomoc2Click(Sender: TObject);
    procedure Listausug1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  min, max, p : word;
  ip, p1 : string;
  ps : word=0;

implementation

{$R *.dfm}

uses Unit2, Unit3, Unit4;

procedure TForm1.Button1Click(Sender: TObject);
begin
  if (edit1.Text<>'') and (edit2.Text<>'') and (edit3.Text<>'') then
  begin
    if (min>=0) and (max<=65535) and (min<max) or (min=max) then
    begin
      if form2.CheckBox3.Checked=true then tcpclient1.BlockMode:=bmnonblocking;
      if form2.CheckBox3.Checked=false then tcpclient1.BlockMode:=bmblocking;
      timer1.Interval:=strtoint(form2.Edit1.Text);
      memo1.Clear;
      memo1.Lines.Add('Skanowanie portów rozpoczête...');
      memo1.Lines.Add('');
      ip:=edit1.Text;
      min:=strtoint(edit2.Text);
      max:=strtoint(edit3.Text);
      p:=min;
      tcpclient1.RemoteHost:=ip;
      timer1.Enabled:=true;
      edit1.enabled:=false;
      edit2.Enabled:=false;
      edit3.Enabled:=false;
      button2.Enabled:=true;
      button1.Enabled:=false;
    end
    else showmessage('Uzupe³nij poprawnie pola!');
  end
  else showmessage('Uzupe³nij wszystkie pola!');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  timer1.Enabled:=false;
  edit1.Enabled:=true;
  edit2.Enabled:=true;
  edit3.Enabled:=true;
  button1.Enabled:=true;
  button2.Enabled:=false;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1.Click;

end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1.Click;
end;

procedure TForm1.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1.Click;
end;

procedure TForm1.Koniec1Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.Listausug1Click(Sender: TObject);
begin
  form4.show;
end;

procedure TForm1.Oprogramie1Click(Sender: TObject);
begin
  showmessage('Skaner Portów v1.0 © Tomasz Krzywicki jest programem rozpowszechnianym na licencji freeware z wy³¹czeniem odpowiedzialnoœci Autora.'+#13+'Kontakt: t-krzywicki@wp.pl');
end;

procedure TForm1.Pomoc2Click(Sender: TObject);
begin
  form3.show;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
  tcpclient1.RemotePort:=inttostr(p);
  if tcpclient1.Connect=true then
  begin
    memo1.Lines.Add('Port: '+inttostr(p)+' - otwarty');
    if form2.CheckBox2.Checked=true then p1:=p1+inttostr(p)+' ';
    ps:=ps+1;
  end
  else if form2.CheckBox1.Checked=false then memo1.Lines.Add('Port: '+inttostr(p)+' - zamkniêty');
  p:=p+1;
  label4.Caption:='Aktualnie skanowany port: '+inttostr(p);
  if p>max then
  begin
    timer1.Enabled:=false;
    edit1.Enabled:=true;
    edit2.Enabled:=true;
    edit3.Enabled:=true;
    button1.Enabled:=true;
    button2.Enabled:=false;
    label4.Caption:='';
    memo1.Lines.Add('');
    memo1.Lines.Add('Skanowanie zakoñczone');
    label4.Caption:='';
    if form2.CheckBox2.Checked=true then
    begin
      if ps>0 then
      begin
        memo1.Lines.Add('Otwarte porty: ('+inttostr(ps)+')');
        memo1.Lines.Add(p1);
        ps:=0;
      end
      else memo1.Lines.Add('Nie znaleziono otwartych portów');
      p1:='';
    end;
  end;
end;

procedure TForm1.Ustawienia1Click(Sender: TObject);
begin
  form2.show;
end;

end.
