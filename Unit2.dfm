object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Ustawienia'
  ClientHeight = 230
  ClientWidth = 205
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 16
    Width = 186
    Height = 13
    Caption = 'Czas oczekiwania na odpowied'#378' hosta:'
  end
  object Label2: TLabel
    Left = 95
    Top = 40
    Width = 17
    Height = 13
    Caption = 'ms.'
  end
  object Edit1: TEdit
    Left = 8
    Top = 35
    Width = 81
    Height = 21
    NumbersOnly = True
    TabOrder = 0
    Text = '1000'
  end
  object CheckBox1: TCheckBox
    Left = 16
    Top = 72
    Width = 169
    Height = 17
    Caption = 'Wy'#347'wietlaj tylko otwarte porty'
    TabOrder = 1
    OnClick = CheckBox1Click
  end
  object CheckBox2: TCheckBox
    Left = 16
    Top = 103
    Width = 169
    Height = 26
    Caption = 'Wy'#347'wietl otwarte porty pod koniec skanowania'
    Checked = True
    State = cbChecked
    TabOrder = 2
    WordWrap = True
  end
  object Button1: TButton
    Left = 8
    Top = 192
    Width = 186
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object CheckBox3: TCheckBox
    Left = 15
    Top = 144
    Width = 179
    Height = 33
    Caption = 'Szybki tryb skanowania (mniejsza dok'#322'adno'#347#263')'
    TabOrder = 4
    WordWrap = True
  end
end
