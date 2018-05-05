object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 456
  Width = 539
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=F:\'#1059#1095#1077#1073#1072'\3 '#1082#1091#1088#1089' 6 '#1089 +
      #1077#1084'\Delphi\DB\football.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 64
    Top = 72
  end
  object TNatteam: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Natteam'
    Left = 200
    Top = 144
  end
  object TFootballer: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'footballer'
    Left = 208
    Top = 72
  end
  object TClub: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'Club'
    Left = 200
    Top = 224
  end
  object DSFootballer: TDataSource
    DataSet = TFootballer
    Left = 360
    Top = 72
  end
  object DSClub: TDataSource
    DataSet = TClub
    Left = 352
    Top = 224
  end
  object DSNatteam: TDataSource
    DataSet = TNatteam
    Left = 360
    Top = 144
  end
end
