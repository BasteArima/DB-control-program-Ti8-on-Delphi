object Form6: TForm6
  Left = 0
  Top = 0
  Caption = #1047#1072#1087#1088#1086#1089#1099
  ClientHeight = 387
  ClientWidth = 742
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 604
    Top = 24
    Width = 93
    Height = 26
    AutoSize = False
    BiDiMode = bdLeftToRight
    Caption = '    '#1048#1090#1086#1075#1086#1074#1072#1103' '#1094#1077#1085#1072'       '#1079#1072' '#1074#1089#1077' '#1087#1086#1082#1091#1087#1082#1080
    ParentBiDiMode = False
    WordWrap = True
  end
  object DBText1: TDBText
    Left = 613
    Top = 56
    Width = 108
    Height = 41
    DataSource = DataSource2
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 569
    Height = 387
    Align = alCustom
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 604
    Top = 120
    Width = 108
    Height = 33
    Caption = #1044#1088#1091#1075#1072#1103' '#1074#1099#1073#1086#1088#1082#1072
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 604
    Top = 168
    Width = 107
    Height = 33
    Caption = #1042' '#1084#1077#1085#1102' '#1079#1072#1087#1088#1086#1089#1086#1074
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 605
    Top = 224
    Width = 107
    Height = 33
    Caption = #1042' '#1075#1083#1072#1074#1085#1086#1077' '#1084#1077#1085#1102
    TabOrder = 3
    OnClick = Button3Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\Ti8.mdb;Persist ' +
      'Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 600
    Top = 320
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 704
    Top = 320
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 648
    Top = 320
  end
  object ADOQuery2: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    Left = 704
    Top = 272
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 648
    Top = 272
  end
end
