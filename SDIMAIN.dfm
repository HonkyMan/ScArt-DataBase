object SDIAppForm: TSDIAppForm
  Left = 197
  Top = 111
  Caption = 'SDI Application'
  ClientHeight = 434
  ClientWidth = 806
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'System'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 16
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 806
    Height = 25
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 790
    object DBNavigator1: TDBNavigator
      Left = 146
      Top = 1
      Width = 659
      Height = 23
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 643
    end
    object ComboBox1: TComboBox
      Left = 1
      Top = 1
      Width = 145
      Height = 24
      Align = alLeft
      Style = csDropDownList
      TabOrder = 1
      OnChange = ComboBox1Change
      Items.Strings = (
        #1060#1091#1090#1073#1086#1083#1080#1089#1090#1099
        #1050#1083#1091#1073#1099
        #1057#1073#1086#1088#1085#1099#1077)
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 393
    Width = 806
    Height = 41
    Align = alBottom
    TabOrder = 1
    ExplicitTop = 387
    ExplicitWidth = 790
    object Edit1: TEdit
      Left = 353
      Top = 4
      Width = 121
      Height = 24
      Hint = 'Enter text'
      TabOrder = 0
      OnChange = Edit1Change
    end
    object ComboBox2: TComboBox
      Left = 184
      Top = 4
      Width = 145
      Height = 24
      Style = csDropDownList
      TabOrder = 1
    end
    object Button1: TButton
      Left = 496
      Top = 4
      Width = 97
      Height = 25
      Caption = #1055#1054#1048#1057#1050
      TabOrder = 2
    end
    object StaticText1: TStaticText
      Left = 17
      Top = 4
      Width = 154
      Height = 23
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1090#1072#1073#1083#1080#1094#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 806
    Height = 120
    Align = alTop
    DataSource = DataModule3.DSFootballer
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'System'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 145
    Width = 806
    Height = 120
    Align = alTop
    DataSource = DataModule3.DSClub
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid3: TDBGrid
    Left = 0
    Top = 265
    Width = 806
    Height = 120
    Align = alTop
    DataSource = DataModule3.DSNatteam
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
  end
end
