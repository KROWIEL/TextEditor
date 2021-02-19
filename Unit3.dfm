object Form3: TForm3
  Left = 595
  Top = 310
  BorderStyle = bsToolWindow
  Caption = #1054#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077' '#1089#1090#1080#1083#1077#1081
  ClientHeight = 423
  ClientWidth = 819
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 16
    Top = 376
    Width = 162
    Height = 24
    Caption = 'Kromeo Text Editor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = cl3DDkShadow
    Font.Height = -17
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
  end
  object BitBtn1: TBitBtn
    Left = 624
    Top = 376
    Width = 81
    Height = 25
    Caption = #1054#1050
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object GroupBox1: TGroupBox
    Left = 16
    Top = 16
    Width = 185
    Height = 353
    Caption = ' '#1042#1099#1073#1088#1072#1090#1100' '#1089#1090#1080#1083#1100' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    object ListBox1: TListBox
      Left = 8
      Top = 24
      Width = 169
      Height = 321
      ItemHeight = 18
      Items.Strings = (
        'Default (System)'
        'Bespin'
        'Black board'
        'Choco'
        'Deep black'
        'Hello Kitty'
        'HotFungeSundae'
        'Khaki'
        'Mono Industrial'
        'Monokai'
        'MossyLawn'
        'Navajo'
        'Obsidian'
        'Plastic Code'
        'Ruby Blue'
        'Twilight'
        'Custom (You Theme)')
      TabOrder = 0
      OnClick = ListBox1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 224
    Top = 24
    Width = 577
    Height = 345
    Caption = ' '#1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1089#1090#1080#1083#1103' '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    object GroupBox3: TGroupBox
      Left = 16
      Top = 32
      Width = 201
      Height = 297
      Caption = ' '#1057#1090#1080#1083#1100' '#1094#1074#1077#1090#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label4: TLabel
        Left = 16
        Top = 40
        Width = 89
        Height = 23
        Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TLabel
        Left = 16
        Top = 72
        Width = 80
        Height = 23
        Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Panel1: TPanel
        Left = 120
        Top = 40
        Width = 25
        Height = 25
        Color = clBackground
        TabOrder = 0
      end
      object Panel2: TPanel
        Left = 120
        Top = 72
        Width = 25
        Height = 25
        Color = cl3DLight
        TabOrder = 1
      end
      object GroupBox5: TGroupBox
        Left = 8
        Top = 136
        Width = 185
        Height = 153
        Caption = ' Custom style '
        TabOrder = 2
        Visible = False
        object Label6: TLabel
          Left = 8
          Top = 80
          Width = 80
          Height = 23
          Caption = #1062#1074#1077#1090' '#1092#1086#1085#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object Label7: TLabel
          Left = 8
          Top = 24
          Width = 89
          Height = 23
          Caption = #1062#1074#1077#1090' '#1090#1077#1082#1089#1090#1072
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'Comic Sans MS'
          Font.Style = []
          ParentFont = False
        end
        object ColorBox1: TColorBox
          Left = 8
          Top = 48
          Width = 145
          Height = 22
          ItemHeight = 16
          TabOrder = 0
          OnChange = ColorBox1Change
        end
        object ColorBox2: TColorBox
          Left = 8
          Top = 104
          Width = 145
          Height = 22
          DefaultColorColor = cl3DLight
          NoneColorColor = cl3DLight
          Selected = cl3DLight
          ItemHeight = 16
          TabOrder = 1
          OnChange = ColorBox2Change
        end
      end
    end
    object GroupBox4: TGroupBox
      Left = 232
      Top = 32
      Width = 329
      Height = 297
      Caption = ' '#1057#1090#1080#1083#1100' '#1096#1088#1080#1092#1090#1072' '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Comic Sans MS'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label1: TLabel
        Left = 56
        Top = 40
        Width = 60
        Height = 23
        Caption = #1064#1088#1080#1092#1090':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 160
        Top = 88
        Width = 57
        Height = 23
        Caption = #1056#1072#1079#1084#1077#1088':'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Comic Sans MS'
        Font.Style = []
        ParentFont = False
      end
      object ComboBox1: TComboBox
        Left = 128
        Top = 40
        Width = 185
        Height = 26
        ItemHeight = 18
        TabOrder = 0
        OnChange = ComboBox1Change
      end
      object ComboBox2: TComboBox
        Left = 232
        Top = 88
        Width = 81
        Height = 26
        ItemHeight = 18
        TabOrder = 1
        OnChange = ComboBox2Change
        Items.Strings = (
          '8'
          '9'
          '10'
          '11'
          '12'
          '14'
          '16'
          '18'
          '20'
          '22'
          '24'
          '26'
          '28'
          '36'
          '48'
          '72')
      end
    end
  end
  object BitBtn2: TBitBtn
    Left = 720
    Top = 376
    Width = 81
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Comic Sans MS'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = BitBtn2Click
  end
end
