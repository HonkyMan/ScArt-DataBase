object SDIAppForm: TSDIAppForm
  Left = 197
  Top = 111
  Caption = 'SDI Application'
  ClientHeight = 428
  ClientWidth = 790
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
    Width = 790
    Height = 25
    Align = alTop
    TabOrder = 0
    object DBComboBox: TDBComboBox
      Left = 1
      Top = 1
      Width = 145
      Height = 24
      Style = csDropDownList
      Align = alLeft
      TabOrder = 0
      OnChange = DBComboBoxChange
    end
    object DBNavigator1: TDBNavigator
      Left = 146
      Top = 1
      Width = 643
      Height = 23
      Align = alClient
      TabOrder = 1
    end
    object ComboBox1: TDBComboBox
      Left = 64
      Top = 1
      Width = 145
      Height = 24
      Items.Strings = (
        #1060#1091#1090#1073#1086#1083#1080#1089#1090#1099
        ''
        #1050#1083#1091#1073#1099
        ''
        #1057#1073#1086#1088#1085#1099#1077)
      TabOrder = 2
      OnChange = ComboBox1Change
    end
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 25
    Width = 790
    Height = 120
    Align = alTop
    DataSource = DataModule1.DSClub
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
  end
  object DBGrid2: TDBGrid
    Left = 0
    Top = 145
    Width = 790
    Height = 120
    Align = alTop
    DataSource = DataModule1.DSNatteam
    TabOrder = 2
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
    Width = 790
    Height = 120
    Align = alTop
    DataSource = DataModule1.DSFootballer
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'System'
    TitleFont.Style = []
    Visible = False
  end
  object Panel2: TPanel
    Left = 0
    Top = 387
    Width = 790
    Height = 41
    Align = alBottom
    TabOrder = 4
    object Label1: TLabel
      Left = 24
      Top = 4
      Width = 145
      Height = 25
      Caption = #1055#1086#1080#1089#1082' '#1087#1086' '#1087#1086#1083#1102
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 353
      Top = 4
      Width = 121
      Height = 24
      TabOrder = 0
      Text = 'Edit1'
    end
    object ComboBox2: TComboBox
      Left = 184
      Top = 4
      Width = 145
      Height = 24
      Style = csDropDownList
      TabOrder = 1
    end
    object StaticText1: TStaticText
      Left = 552
      Top = 16
      Width = 76
      Height = 20
      Caption = 'StaticText1'
      TabOrder = 2
    end
  end
end
