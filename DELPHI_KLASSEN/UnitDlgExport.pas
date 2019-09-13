{
	Hiermit kann man Datenbank tabellen als CSV, SQL und TEXT exportieren.
}

unit UnitDlgExport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, Buttons, UnitExport1, ZDataset, UnitFilter;

type
  TFormDlgExport = class(TForm)
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    TabSheetCSVExport: TTabSheet;
    TabSheetSQLExport: TTabSheet;
    TabSheetGDPDU_Export: TTabSheet;
    Memo1: TMemo;
    Panel1: TPanel;
    ComboBoxFocusedExportTables: TComboBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    EditWordStartEnd: TEdit;
    EditDelimeter: TEdit;
    ComboBoxSucheRech: TComboBox;
    MemoExcSQL: TMemo;
    CheckBoxStripEnters: TCheckBox;
    Label5: TLabel;
    Label6: TLabel;
    EditMySQLTrimer: TEdit;
    EditMySQLStartEnd: TEdit;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBoxSucheRechSelect(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ComboBoxFocusedExportTablesSelect(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

var
  FormDlgExport: TFormDlgExport;
  qDlgExport : TZQuery;

implementation

uses Unit_DataModule;

{$R *.dfm}

procedure TFormDlgExport.BitBtn1Click(Sender: TObject);
var
  aAsciiExport : TASCII_Export;
  q : TZQuery;
begin
  if ( ComboBoxFocusedExportTables.ItemIndex = 0 )then
  begin
    StatusBar1.Panels[2].Text := 'Datenbank Tabelle bitte auswählen.';
    exit;
  end;
  //--
  aAsciiExport := TASCII_Export.Create;
  try
    aAsciiExport.FocusedTableName := ComboBoxFocusedExportTables.Text;
    aAsciiExport.WordStartEnd := EditWordStartEnd.Text;
    aAsciiExport.Delimeter := EditDelimeter.Text;
    aAsciiExport.ReadColumsFromFocused;
    aAsciiExport.ReadDatasetsFromFocused;
    aAsciiExport.SaveExport('csv');
  finally
    aAsciiExport.Free;
  end;
end;


procedure TFormDlgExport.BitBtn3Click(Sender: TObject);
var
  aAsciiExport : TASCII_Export;
begin
  qDlgExport.SQL.Clear;
  qDlgExport.SQL.Add('SELECT * FROM ' +ComboBoxFocusedExportTables.Text+ ' ');
  qDlgExport.Open;
  aAsciiExport := TASCII_Export.Create;
  try
    aAsciiExport.WordStartEnd := '"';
    aAsciiExport.Delimeter := ',';
    aAsciiExport.FocusedTableName := ComboBoxFocusedExportTables.Text;
    aAsciiExport.ReadQueryAndSaveExport( qDlgExport, 'sql', '');
  finally
    aAsciiExport.Free;
  end;
end;



procedure TFormDlgExport.BitBtn2Click(Sender: TObject);
var
  i : integer;
  aAsciiExport : TASCII_Export;
begin
  if ( ComboBoxFocusedExportTables.ItemIndex = 0 )then
  begin
    StatusBar1.Panels[2].Text := 'Datenbank Tabelle bitte auswählen.';
    exit;
  end;
  //--
  aAsciiExport := TASCII_Export.Create;
  try
    aAsciiExport.WordStartEnd := EditWordStartEnd.Text;
    aAsciiExport.Delimeter := EditDelimeter.Text;
    //  - - -
    qDlgExport.SQL.Text := MemoExcSQL.Text;
    MemoExcSQL.Text := qDlgExport.SQL.Text;
    qDlgExport.Open;
    Memo1.Text := aAsciiExport.ReadQueryAndSaveExport(qDlgExport,'csv', '', true);
    Memo1.Color := StringToColor(sGlobalSystemChangeColor);
  finally
    aAsciiExport.Free;
  end;
end;



procedure TFormDlgExport.BitBtn4Click(Sender: TObject);
var
  aAsciiExport : TASCII_Export;
begin
  qDlgExport.SQL.Clear;
  qDlgExport.SQL.Add('SELECT * FROM ' +ComboBoxFocusedExportTables.Text+ ' ');
  MemoExcSQL.Text := qDlgExport.SQL.Text;
  qDlgExport.Open;
  aAsciiExport := TASCII_Export.Create;
  try
    aAsciiExport.WordStartEnd := EditMySQLStartEnd.Text;
    aAsciiExport.Delimeter := EditMySQLTrimer.Text;
    aAsciiExport.FocusedTableName := ComboBoxFocusedExportTables.Text;
    Memo1.Color := StringToColor(sGlobalSystemChangeColor);
    Memo1.Text := aAsciiExport.ReadQueryAndSaveExport( qDlgExport, 'sql', '', true, CheckBoxStripEnters.Checked);
  finally
    aAsciiExport.Free;
  end;
end;



procedure TFormDlgExport.FormShow(Sender: TObject);
var
  s : string;
begin
  s := '';
  s := s + 'CSV Exporte sind für Tabellenkalkulationsprogramme wie Microsoft Excel oder OpenOffice Calc gedacht.' +#13#10;
  s := s + '' +#13#10;
  Label2.Caption := s;
  qDlgExport := TZQuery.Create(Nil);
  try
    qDlgExport.Connection := DM.ZConnection1;
    qDlgExport.SQL.Clear;
  finally
    //qDlgExport.Free;
  end;
end;



procedure TFormDlgExport.ComboBoxSucheRechSelect(Sender: TObject);
var
  i : integer;
  s : string;
begin
  if ( ComboBoxFocusedExportTables.ItemIndex = 0 )then
  begin
    StatusBar1.Panels[2].Text := 'Datenbank Tabelle bitte auswählen.';
    exit;
  end;
  //--
  qDlgExport.Close;
  qDlgExport.SQL.Clear;
  qDlgExport.SQL.Add('SELECT * FROM ' +ComboBoxFocusedExportTables.Text+ ' ');
  qDlgExport.Open;
  s := DlgSQLSuche(qDlgExport);
  if ( trim(s) = 'mrCancel' ) then
  begin
    ComboBoxSucheRech.Items.Clear;
    ComboBoxSucheRech.Items.Add( 'Detail Suche' );
    ComboBoxSucheRech.ItemIndex := 0;
  end
  else if ( trim(s) <> '' ) then
  begin
    ComboBoxSucheRech.Items.Add( s );
    ComboBoxSucheRech.Items[0] := IntToStr( ComboBoxSucheRech.Items.Count-1 ) + 'x Detail Suche' ;
    ComboBoxSucheRech.ItemIndex := 0;
  end;
  // - - -
  MemoExcSQL.Clear;
  MemoExcSQL.Lines.Add('SELECT * FROM ' + ComboBoxFocusedExportTables.Text + ' ');
  for i := 1 to ComboBoxSucheRech.Items.Count-1 do   //i fängt bei 1 an wegen index beschreibung
  begin
    if ( i = 1 ) then
    begin
      MemoExcSQL.Lines.Add(' WHERE ' +ComboBoxSucheRech.Items[i]+ ' ');
    end
    else
    begin
      MemoExcSQL.Lines.Add(' AND ' +ComboBoxSucheRech.Items[i]+ ' ');
    end;
  end;
end;




procedure TFormDlgExport.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qDlgExport.Free;
end;

procedure TFormDlgExport.ComboBoxFocusedExportTablesSelect(
  Sender: TObject);
begin
  qDlgExport.SQL.Clear;
  qDlgExport.SQL.Add('SELECT * FROM ' + ComboBoxFocusedExportTables.Text + ' ');
end;

end.
