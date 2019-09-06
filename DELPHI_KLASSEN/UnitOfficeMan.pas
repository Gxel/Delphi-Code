unit UnitOfficeMan;

interface


uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, OleServer, Word2000;



type
  // Replace Flags
  TWordReplaceFlags = set of (wrfReplaceAll, wrfMatchCase, wrfMatchWildcards);

  // Object
  TOrderClass = class(TObject)
  private
    { Private-Deklarationen }
  public
    procedure WordErstellen;
    function Word_StringReplace(SourceDocument, DestDocument: TFileName;
      SearchString, ReplaceString: string;
      Flags: TWordReplaceFlags): Boolean;
    procedure PrintDoc(FileName: string);
  protected
    { Protected-Deklarationen }
  end;

implementation

uses
 ComObj;



{ TOrderClass }  
procedure TOrderClass.PrintDoc(FileName: string);
var VarFileName: OleVariant; 
    Background, Append, Range: OleVariant;
    WordApplication1 : TWordApplication;
    WordDocument1 : TWordDocument;
begin
  WordApplication1 := TWordApplication.Create(nil);
  WordDocument1 := TWordDocument.Create(nil);
  try
    WordApplication1.Connect;
    WordApplication1.Visible := FALSE;
    VarFileName := FileName;
    WordApplication1.Documents.Open(VarFileName, EmptyParam, EmptyParam, EmptyParam,
      EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam, EmptyParam);
    WordDocument1.ConnectTo(WordApplication1.ActiveDocument);
    Background := FALSE;
    Append := FALSE;
    Range := wdPrintAllPages;
    WordDocument1.PrintOut(Background, Append, Range);
    WordDocument1.Close;
    WordDocument1.Disconnect;
    WordApplication1.Disconnect;
  finally
    WordApplication1.Free;
    WordDocument1.Free;
  end;
end;




function TOrderClass.Word_StringReplace(SourceDocument,
  DestDocument: TFileName; SearchString, ReplaceString: string;
  Flags: TWordReplaceFlags): Boolean;
const
  wdFindContinue = 1;
  wdReplaceOne = 1;
  wdReplaceAll = 2;
  wdDoNotSaveChanges = 0;
var
  WordApp: OLEVariant;  
begin
  Result := False;
  // ---
  { Check if file exists }
  if not FileExists(SourceDocument) then
  begin
    ShowMessage('Specified Document not found.');
    Exit;
  end;
  // ---
  { Create the OLE Object }
  try
    WordApp := CreateOLEObject('Word.Application');
  except
    on E: Exception do
    begin
      E.Message := 'Word is not available.';
      raise;
    end;
  end;
  // ---
  try
    { Hide Word }
    WordApp.Visible := False;
    { Open the document }
    WordApp.Documents.Open(SourceDocument);
    { Initialize parameters}
    WordApp.Selection.Find.ClearFormatting;
    WordApp.Selection.Find.Text := SearchString;
    WordApp.Selection.Find.Replacement.Text := ReplaceString;
    WordApp.Selection.Find.Forward := True;
    WordApp.Selection.Find.Wrap := wdFindContinue;
    WordApp.Selection.Find.Format := False;
    WordApp.Selection.Find.MatchCase := wrfMatchCase in Flags;
    WordApp.Selection.Find.MatchWholeWord := False;
    WordApp.Selection.Find.MatchWildcards := wrfMatchWildcards in Flags;
    WordApp.Selection.Find.MatchSoundsLike := False;
    WordApp.Selection.Find.MatchAllWordForms := False;
    { Perform the search}
    if wrfReplaceAll in Flags then
    begin
      WordApp.Selection.Find.Execute(Replace := wdReplaceAll)
    end
    else
    begin
      WordApp.Selection.Find.Execute(Replace := wdReplaceOne);
    end;
    { Save word }
    WordApp.ActiveDocument.SaveAs(DestDocument);
    { Assume that successful }
    Result := True;
    { Close the document }
    WordApp.ActiveDocument.Close(wdDoNotSaveChanges);
    if (FALSE) then
    begin
      PrintDoc(DestDocument);
    end;
  finally
    { Quit Word }
    WordApp.Quit;
    WordApp := Unassigned;
  end;
end;





procedure TOrderClass.WordErstellen;
var WordTabelle: OleVariant; //Name der Tabelle die erzeugt werden soll
    FileName, doc :OleVariant; //Schnittstellenvariable
    WordApplication1 : TWordApplication;
    WordDocument1 : TWordDocument;
begin
  WordApplication1 := TWordApplication.Create(nil);
  WordDocument1 := TWordDocument.Create(nil);
  try
    //Name des zu öffnenden Dokumentes
    FileName := 'D:\bestellung.doc';
    //Verbindung zu Word aktivieren
    WordApplication1.Connect;
    //Dokument öffnen
    WordApplication1.Documents.OpenOld(FileName, EmptyParam, EmptyParam,
                                       EmptyParam, EmptyParam, EmptyParam,
                                       EmptyParam, EmptyParam, EmptyParam,
                                       EmptyParam);
    //Verbindung zum aktiven Dokument
    WordDocument1.ConnectTo(WordApplication1.ActiveDocument);
    //Word sichtbar machen
    WordApplication1.Visible := True;
    //Übergabe des aktiven Dokumentsin die Variable doc
    doc := WordApplication1.ActiveDocument;
    //Tabelle erzeugen  mit 5 Zeilen und 5 Spalten
    WordTabelle := doc.Tables.Add(WordApplication1.selection.range, 5, 5,
                   emptyParam,emptyParam) ;
    //Keine Rahmen: links, rechts, oben, unten
    WordTabelle.borders.item(wdBorderLeft).LineStyle := wdLineStyleNone;
    WordTabelle.Borders.item(wdBorderRight).LineStyle := wdLineStyleNone;
    WordTabelle.Borders.item(wdBorderTop).LineStyle := wdLineStyleNone;
    WordTabelle.Borders.item(wdBorderBottom).LineStyle := wdLineStyleNone;

    //!!!!!!!!!!!Der Index einer Tabelle in Word beginnt immer mit 1,
    //nicht mit 0 wie in Delphi!!!!!!!!!!!!!!!!!!!!!!!
    //Schriftgröße in der 2. Zeile und 2. Spalte auf 14 setzen
    WordTabelle.cell(2,2).range.font.size := 14;
    //Schriftgrad in der 2. Zeile und 2.Spalte aud Fett setzen
    WordTabelle.cell(2,2).range.font.bold := true;
    //Textübergabe in die 2. Zeile und 2. Spalte
    WordTabelle.cell(2,2).range.text := 'Hallo Welt';
  finally
    WordApplication1.Free;
    WordDocument1.Free;
  end;
end;

end.
