object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Skaner port'#243'w v1.0'
  ClientHeight = 359
  ClientWidth = 226
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 8
    Width = 41
    Height = 13
    Caption = 'Adres IP'
  end
  object Label2: TLabel
    Left = 16
    Top = 51
    Width = 39
    Height = 13
    Caption = 'Port min'
  end
  object Label3: TLabel
    Left = 79
    Top = 51
    Width = 43
    Height = 13
    Caption = 'Port max'
  end
  object label4: TLabel
    Left = 16
    Top = 90
    Width = 4
    Height = 16
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 16
    Top = 24
    Width = 121
    Height = 21
    TabOrder = 0
    OnKeyPress = Edit1KeyPress
  end
  object Button1: TButton
    Left = 143
    Top = 22
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 143
    Top = 61
    Width = 75
    Height = 25
    Caption = 'Stop'
    Enabled = False
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit2: TEdit
    Left = 16
    Top = 63
    Width = 57
    Height = 21
    NumbersOnly = True
    TabOrder = 1
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 79
    Top = 63
    Width = 58
    Height = 21
    NumbersOnly = True
    TabOrder = 2
    OnKeyPress = Edit3KeyPress
  end
  object Memo1: TMemo
    Left = 16
    Top = 112
    Width = 202
    Height = 215
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 4
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 340
    Width = 226
    Height = 19
    Panels = <
      item
        Text = #169' Tomasz Krzywicki'
        Width = 50
      end>
  end
  object TcpClient1: TTcpClient
    Active = True
    Left = 32
    Top = 184
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
    Top = 168
  end
  object MainMenu1: TMainMenu
    Left = 80
    Top = 160
    object Program1: TMenuItem
      Caption = 'Program'
      object Koniec1: TMenuItem
        Caption = 'Koniec'
        OnClick = Koniec1Click
      end
    end
    object Opcje1: TMenuItem
      Caption = 'Opcje'
      object Ustawienia1: TMenuItem
        Caption = 'Ustawienia'
        OnClick = Ustawienia1Click
      end
    end
    object Pomoc1: TMenuItem
      Caption = 'Pomoc'
      object Pomoc2: TMenuItem
        Caption = 'Pomoc'
        OnClick = Pomoc2Click
      end
      object Oprogramie1: TMenuItem
        Caption = 'O programie'
        OnClick = Oprogramie1Click
      end
      object Listausug1: TMenuItem
        Caption = 'Lista us'#322'ug'
        OnClick = Listausug1Click
      end
    end
  end
end
