unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Button1: TButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  a : array[1..26,1..2]  of string;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
var
  i : integer;
  r : boolean;
begin
  label2.caption:='';
  r:=false;
  for I := 1 to 26 do if a[i,1]=edit1.Text then
  begin
    label2.caption:='Nazwa us³ugi: '+a[i,2];
    r:=true;
  end;
  if r=false then showmessage('Nic nie znaleziono');

end;

procedure TForm4.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key=#13 then button1.Click;
end;

procedure TForm4.FormCreate(Sender: TObject);
begin
  a[1,1]:='53';
  a[1,2]:='DNS';
  a[2,1]:='20';
  a[2,2]:='FTP - przesy³anie danych';
  a[3,1]:='21';
  a[3,2]:='FTP - przesy³anie poleceñ';
  a[3,1]:='67';
  a[3,2]:='BOOTP - serwer';
  a[4,1]:='68';
  a[4,2]:='BOOTP - klient';
  a[5,1]:='79';
  a[5,2]:='Finger';
  a[6,1]:='70';
  a[6,2]:='Gopher';
  a[7,1]:='80';
  a[7,2]:='HTTP';
  a[8,1]:='443';
  a[8,2]:='HTTPS';
  a[9,1]:='143';
  a[9,2]:='IMAP';
  a[10,1]:='220';
  a[10,2]:='IMAP3';
  a[11,1]:='5222';
  a[11,2]:='XMPP - dla serwera sieci Jabber';
  a[12,1]:='389';
  a[12,2]:='LDAP';
  a[13,1]:='636';
  a[13,2]:='LDAPS';
  a[14,1]:='3306';
  a[14,2]:='MySQL';
  a[15,1]:='119';
  a[15,2]:='NNTP';
  a[16,1]:='110';
  a[16,2]:='POP3';
  a[17,1]:='995';
  a[17,2]:='POP3S';
  a[18,1]:='5432';
  a[18,2]:='PostgreSQL';
  a[19,1]:='873';
  a[19,2]:='Rsync';
  a[20,1]:='25';
  a[20,2]:='SMTP';
  a[21,1]:='22';
  a[21,2]:='SSH';
  a[22,1]:='514';
  a[22,2]:='Syslog';
  a[23,1]:='23';
  a[23,2]:='Telnet';
  a[24,1]:='69';
  a[24,2]:='TFTP';
  a[25,1]:='161';
  a[25,2]:='SNMP';
  a[26,1]:='8080';
  a[26,2]:='PROXY';
end;

end.
