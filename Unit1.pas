unit Unit1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule1 = class(TDataModule)
    ADOConnection1: TADOConnection;
    TNatteam: TADOTable;
    TFootballer: TADOTable;
    TClub: TADOTable;
    DSFootballer: TDataSource;
    DSClub: TDataSource;
    DSNatteam: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SDIMAIN;

{$R *.dfm}

end.
