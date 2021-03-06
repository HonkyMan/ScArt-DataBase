unit Unit3;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataModule3 = class(TDataModule)
    ADOConnection1: TADOConnection;
    TFootballer: TADOTable;
    TClub: TADOTable;
    TNatteam: TADOTable;
    DSFootballer: TDataSource;
    DSClub: TDataSource;
    DSNatteam: TDataSource;
    procedure TFootballerFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TNatteamFilterRecord(DataSet: TDataSet; var Accept: Boolean);
    procedure TClubFilterRecord(DataSet: TDataSet; var Accept: Boolean);
  private
    { Private declarations }
  public
  var ed: string;
    { Public declarations }
  end;

var
  DataModule3: TDataModule3;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses SDIMAIN;

{$R *.dfm}

procedure TDataModule3.TClubFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var   s:String;
begin
	if SDIAppForm.ComboBox2.ItemIndex=0 then
	begin
		s:=Copy(DataSet['Club'],1,Length(ed));
		Accept:=s=ed;
	end
	else if SDIAppForm.Combobox2.ItemIndex=1 then
	begin
		s:=Copy(DataSet['Place'],1,Length(ed));
		Accept:=s=ed;
	end;
end;

procedure TDataModule3.TFootballerFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var   s:String;
begin
  if SDIAppForm.ComboBox2.ItemIndex=0 then
  begin // ���� ����� �� ���� Name
  s:=Copy(DataSet['Name'],1,Length(ed));
  //����������� �� ���� DataSet['Name'] � s � 1 ��Length(ed)  �������.
  Accept:=s=ed;  //���� ������������� ������ s = ed, �� ������ � ������� �������, ����� ���.
  end
  else if SDIAppForm.Combobox2.ItemIndex=1 then
  begin // ���� ����� �� ���� Natteam
    s:=Copy(DataSet['Natteam'],1,Length(ed)); // ����������
    Accept:=s=ed;
  end
  else if SDIAppForm.Combobox2.ItemIndex=2 then
  begin // ���� ����� �� ���� Club
    s:=Copy(DataSet['Club'],1,Length(ed)); // ����������
    Accept:=s=ed;
  end;
end;

procedure TDataModule3.TNatteamFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
var   s:String;
begin
	if SDIAppForm.ComboBox2.ItemIndex=0 then
	begin
		s:=Copy(DataSet['Natteam'],1,Length(ed));
		Accept:=s=ed;
	end
	else if SDIAppForm.Combobox2.ItemIndex=1 then
	begin
		s:=Copy(DataSet['Place'],1,Length(ed));
		Accept:=s=ed;
	end;
end;

end.
