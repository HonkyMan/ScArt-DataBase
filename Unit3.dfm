object DataModule3: TDataModule3
  OldCreateOrder = False
  Height = 370
  Width = 587
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=F:\'#1059#1095 +
      #1077#1073#1072'\3 '#1082#1091#1088#1089' 6 '#1089#1077#1084'\Delphi\DB\delphi.mdb;Mode=Share Deny None;Persi' +
      'st Security Info=False;Jet OLEDB:System database="";Jet OLEDB:Re' +
      'gistry Path="";Jet OLEDB:Database Password="";Jet OLEDB:Engine T' +
      'ype=5;Jet OLEDB:Database Locking Mode=1;Jet OLEDB:Global Partial' +
      ' Bulk Ops=2;Jet OLEDB:Global Bulk Transactions=1;Jet OLEDB:New D' +
      'atabase Password="";Jet OLEDB:Create System Database=False;Jet O' +
      'LEDB:Encrypt Database=False;Jet OLEDB:Don'#39't Copy Locale on Compa' +
      'ct=False;Jet OLEDB:Compact Without Replica Repair=False;Jet OLED' +
      'B:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 80
    Top = 120
  end
  object TFootballer: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = TFootballerFilterRecord
    TableName = 'Footballer'
    Left = 256
    Top = 88
  end
  object TClub: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = TClubFilterRecord
    TableName = 'Club'
    Left = 248
    Top = 168
  end
  object TNatteam: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnFilterRecord = TNatteamFilterRecord
    TableName = 'Natteam'
    Left = 248
    Top = 240
  end
  object DSFootballer: TDataSource
    DataSet = TFootballer
    Left = 400
    Top = 96
  end
  object DSClub: TDataSource
    DataSet = TClub
    Left = 392
    Top = 168
  end
  object DSNatteam: TDataSource
    DataSet = TNatteam
    Left = 400
    Top = 248
  end
end
