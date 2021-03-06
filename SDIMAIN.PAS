unit SDIMAIN;

interface

uses Winapi.Windows, System.Classes, Vcl.Graphics, Vcl.Forms, Vcl.Controls,
  Vcl.Menus, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls, Vcl.ComCtrls,
  Vcl.ImgList, Vcl.StdActns, Vcl.ActnList, Vcl.ToolWin, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls;

type
  TSDIAppForm = class(TForm)
    Panel1: TPanel;
    DBNavigator1: TDBNavigator;
    Panel2: TPanel;
    ComboBox2: TComboBox;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    StaticText1: TStaticText;
    procedure FileNew1Execute(Sender: TObject);
    procedure FileExit1Execute(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SDIAppForm: TSDIAppForm;

implementation

uses Unit3;

{$R *.dfm}

procedure TSDIAppForm.FileNew1Execute(Sender: TObject);
begin
  { Do nothing }
end;

procedure TSDIAppForm.FormActivate(Sender: TObject);
begin
  ComboBox1.ItemIndex:=0;
  ComboBox2.ItemIndex:=0;
  // ��� ������� ����� ������������ ������� ����������
  DBNavigator1.DataSource:=DataModule3.DSfootballer; // ����������� ��������� ��� ������ � �������� ����������
  DBGrid1.Columns[0].Width:=150;
  DBGrid1.Columns[1].Width:=150;
  DBGrid1.Columns[2].Width:=150;
  DBGrid2.Columns[0].Width:=150;
  DBGrid2.Columns[1].Width:=150;
  DBGrid3.Columns[0].Width:=150;
  DBGrid3.Columns[1].Width:=150;

  Combobox2.Items.Clear; //������� ���� Combobox2
  Combobox2.Items.Create;//������� � ��������� ����� ���� �� ������� � ����������� ����� ���� ���������� �����
  Combobox2.Items.Add('���');
  Combobox2.Items.Add('�������');
  Combobox2.Items.Add('����');
  Combobox2.ItemIndex:=0;
end;

procedure TSDIAppForm.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.ItemIndex=0 then  // ���� Item=����������
  begin
    DBGrid3.Visible:=false;
    // ���������� ������� ����������
    DBGrid2.Visible:=false;
    // �������� ������� �������
    DBGrid1.Visible:=true;
    // �������� ������� �����
    DBNavigator1.DataSource:=DataModule3.DSfootballer;  //��������� �������� ��� ������� ����������
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
    DBNavigator1.DataSource:=DataModule3.DSnatteam;
    Combobox2.Items.Clear;
    Combobox2.Items.Create;
    Combobox2.Items.Add('�������');
    Combobox2.Items.Add('�����');
    Combobox2.ItemIndex:=0;
  end;
  if ComboBox1.ItemIndex=2 then //���������� ��� ������� �����
  begin
    DBGrid1.Visible:=false;
    DBGrid2.Visible:=false;
    DBGrid3.Visible:=true;
    DBNavigator1.DataSource:=DataModule3.DSclub;
    Combobox2.Items.Clear;
    Combobox2.Items.Create;
    Combobox2.Items.Add('����');
    Combobox2.Items.Add('�����');
    Combobox2.ItemIndex:=0;
  end;
end;


procedure TSDIAppForm.ComboBox1Click(Sender: TObject);
begin
  //StaticText1.Caption := 'Hello';
end;

procedure TSDIAppForm.Edit1Change(Sender: TObject);
begin
  if Combobox1.ItemIndex=0 then
  begin //���� ��� ������� ����������
    if Edit1.Text <> '' then
    begin //���� ��������� ������ �� �����
      DataModule3.Tfootballer.Filtered:=false; //������� ��������� ����������
      DataModule3.ed:=Edit1.Text; //�������� � ���������� ed ����� � ��������� ������
      DataModule3.Tfootballer.Filtered:=true; // ����� �������� ����������
    end
    else
      DataModule3.Tfootballer.Filtered:=false; //����� ��������� ����������.
  end
  else if Combobox1.ItemIndex=2 then
  begin //���������� ���� ������� �������
    if Edit1.Text <> '' then
    begin
      DataModule3.Tnatteam.Filtered:=false;
      DataModule3.ed:=Edit1.Text;
      DataModule3.Tnatteam.Filtered:=true;
    end
    else
      DataModule3.Tnatteam.Filtered:=false;
  end
  else   if Combobox1.ItemIndex=1 then
  begin //���������� ���� ������� �����
    if Edit1.Text <> '' then
    begin
      DataModule3.Tclub.Filtered:=false;
      DataModule3.ed:=Edit1.Text;
      DataModule3.Tclub.Filtered:=true;
    end
    else
      DataModule3.Tclub.Filtered:=false;
  end;
end;

procedure TSDIAppForm.FileExit1Execute(Sender: TObject);
begin
  Close;
end;


end.
