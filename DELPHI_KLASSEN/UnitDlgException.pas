unit UnitDlgException;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls,Unit_DataModule, ComCtrls, FileCtrl,
  ExtDlgs, dxCntner, dxExEdtr, dxEdLib, JPEG;


type
  TFormException = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Timer1: TTimer;
    StatusBar1: TStatusBar;
    SaveDialog1: TSaveDialog;
    SavePictureDialog1_: TSavePictureDialog;
    dxGraphicEditDokument1: TdxGraphicEdit;
    BitBtnHalt: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure BitBtnHaltClick(Sender: TObject);
  private
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

//var
  //FormException: TFormException;

function DlgException( sText : String ; bEditable : Boolean=false ):Boolean;
procedure ScreenShot(Bild: TBitMap);

implementation

{$R *.dfm}






function DlgException( sText : String ; bEditable : Boolean=False ):Boolean;
var
  s : string;
  i : integer;
  aDlgException : TFormException;
begin
  Result := false;
  aDlgException := TFormException.Create(Application);
  try
    aDlgException.Memo1.ReadOnly := not bEditable;
    aDlgException.Memo1.Text := sText;
    if (aDlgException.ShowModal = mrOk) then
    begin
      Result := true;
    end;
  finally
    aDlgException.Free;
  end;
end;


// Capture the entire screen
// Screenshot des gesamten Bildschirms
procedure ScreenShot(Bild: TBitMap);
var
  c: TCanvas;
  r: TRect;
begin
  c := TCanvas.Create;
  c.Handle := GetWindowDC(GetDesktopWindow);
  try
    r := Rect(0, 0, Screen.Width, Screen.Height);
    Bild.Width := Screen.Width;
    Bild.Height := Screen.Height;
    Bild.Canvas.CopyRect(r, c, r);
  finally
    ReleaseDC(0, c.Handle);
    c.Free;
  end;
end;



procedure TFormException.FormShow(Sender: TObject);
begin
  ScreenShot(dxGraphicEditDokument1.Picture.BitMap);
end;

procedure TFormException.BitBtn2Click(Sender: TObject);
var
  sRootDir :string;
  sTargetDirectory :string;
  sFinalFile :string;
  aPicture : HDC;
  aJpg: TJpegImage;
begin
  ScreenShot(dxGraphicEditDokument1.Picture.BitMap);
  SaveDialog1.Title := 'Bitte wählen sie ein Speicherort und Speichername für den Screenshot?';
  SaveDialog1.InitialDir := 'c:\\';
  SaveDialog1.Filter := 'Jpg Datei (*.jpg)|*.JPG';
  SaveDialog1.FileName := FormatDateTime('yyyymmdd_HHnnss', now);
  SaveDialog1.DefaultExt := 'jpg';
  SaveDialog1.FilterIndex := 1;

  if SaveDialog1.Execute then
  begin
    aJpg := TJpegImage.Create;
    try
      aJpg.CompressionQuality := 80;
      aJpg.Assign(dxGraphicEditDokument1.Picture.Graphic);
      aJpg.SaveToFile(SaveDialog1.FileName);
    finally
      aJpg.Free;
    end;
    //dxGraphicEditDokument1.Picture.Graphic.SaveToFile( SaveDialog1.FileName );
  end
  else
  begin
    ShowMessage('Speicherung abgebrochen');
  end;
end;



procedure TFormException.Timer1Timer(Sender: TObject);
begin
  StatusBar1.Panels[0].Text := DateToStr(now);
  StatusBar1.Panels[1].Text := TimeToStr(now);
end;



procedure TFormException.FormDestroy(Sender: TObject);
begin
  if ( dm.ZConnection1.Connected ) then
  begin
    SetLog(CON_ACTION_ARCASERROR, Memo1.Text, 'Global Exception');
  end;
end;

procedure TFormException.BitBtnHaltClick(Sender: TObject);
begin
  if Application.MessageBox(PChar( 'Möchten Sie Arcas erzwingend beenden?' ), PChar( 'Frage' ),MB_YESNO)=IDYES then
  begin
    halt;
  end;
end;

end.
