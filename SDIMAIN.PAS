unit SDIMAIN;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls;

type
  TSDIAppForm = class(TForm)
    Panel1: TPanel;
    DBComboBox: TDBComboBox;
    DBNavigator1: TDBNavigator;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    Panel2: TPanel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    StaticText1: TStaticText;
    ComboBox1: TDBComboBox;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure DBComboBoxChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;

implementation

uses About, Unit1;

{$R *.dfm}

procedure TSDIAppForm.FileNew1Execute(Sender: TObject);
begin
  { Do nothing }
end;

procedure TSDIAppForm.FormActivate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  DBGrid1.Visible:=true;
  // ��� ������� ����� ������������ ������� ����������
  DBNavigator1.DataSource:=DataModule1.DSfootballer; // ����������� ��������� ��� ������ � �������� ����������
  DBGrid1.Columns[0].Width:=150;
  DBGrid1.Columns[1].Width:=150;
  DBGrid1.Columns[2].Width:=150;
  DBGrid2.Columns[0].Width:=150;
  DBGrid2.Columns[1].Width:=60;
  DBGrid3.Columns[0].Width:=150;
  DBGrid3.Columns[1].Width:=60;

  //ComboBox1.Items.Add('����������');
  //ComboBox1.Items.Add('�����');
  //ComboBox1.Items.Add('�������');
end;

procedure TSDIAppForm.ComboBox1Change(Sender: TObject);
begin
   StaticText1.Caption := 'hello';
end;

procedure TSDIAppForm.DBComboBoxChange(Sender: TObject);
begin

  if ComboBox1.ItemIndex=0 then  // ���� Item=����������
  begin
    DBGrid1.Visible:=true;
    // ���������� ������� ����������
    DBGrid2.Visible:=false;
    // �������� ������� �������
    DBGrid3.Visible:=false;
    // �������� ������� �����
    DBNavigator1.DataSource:=DataModule1.DSfootballer;  //��������� �������� ��� ������� ����������
    Combobox2.Items.Clear; //������� ���� Combobox2
    Combobox2.Items.Create;//������� � ��������� ����� ���� �� ������� � ����������� ����� ���� ���������� �����
    Combobox2.Items.Add('���');
    Combobox2.Items.Add('�������');
    Combobox2.Items.Add('����');
    Combobox2.ItemIndex:=0;
  end;
  if ComboBox1.ItemIndex=1 then //���������� ��� ������� �������
  begin
    DBGrid2.Visible:=true;
    DBGrid1.Visible:=false;
    DBGrid3.Visible:=false;
    DBNavigator1.DataSource:=DataModule1.DSnatteam;
    Combobox2.Items.Clear;
    Combobox2.Items.Create;
    Combobox2.Items.Add('�������');
    Combobox2.Items.Add('�����');
    Combobox2.ItemIndex:=0;
  end;
  if ComboBox1.ItemIndex=2 then //���������� ��� ������� �����
  begin
    DBGrid3.Visible:=true;
    DBGrid2.Visible:=false;
    DBGrid1.Visible:=false;
    DBNavigator1.DataSource:=DataModule1.DSclub;
    Combobox2.Items.Clear;
    Combobox2.Items.Create;
    Combobox2.Items.Add('����');
    Combobox2.Items.Add('�����');
    Combobox2.ItemIndex:=0;
  end;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;


end.