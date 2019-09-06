unit Unit_Tastatur;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm_Tastatur = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    BitBtn13: TBitBtn;
    BitBtn14: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    BitBtn17: TBitBtn;
    BitBtn18: TBitBtn;
    BitBtn19: TBitBtn;
    BitBtn20: TBitBtn;
    BitBtn21: TBitBtn;
    BitBtn22: TBitBtn;
    BitBtn23: TBitBtn;
    BitBtn24: TBitBtn;
    BitBtn25: TBitBtn;
    BitBtn26: TBitBtn;
    BitBtn27: TBitBtn;
    BitBtn28: TBitBtn;
    BitBtn29: TBitBtn;
    BitBtn30: TBitBtn;
    BitBtn31: TBitBtn;
    BitBtn32: TBitBtn;
    BitBtn33: TBitBtn;
    BitBtn34: TBitBtn;
    BitBtn35: TBitBtn;
    BitBtn36: TBitBtn;
    BitBtn37: TBitBtn;
    BitBtn38: TBitBtn;
    BitBtn39: TBitBtn;
    BitBtn40: TBitBtn;
    BitBtn41: TBitBtn;
    BitBtn42: TBitBtn;
    BitBtn43: TBitBtn;
    BitBtn44: TBitBtn;
    BitBtn45: TBitBtn;
    BitBtn46: TBitBtn;
    BitBtn47: TBitBtn;
    BitBtn48: TBitBtn;
    BitBtn49: TBitBtn;
    BitBtn50: TBitBtn;
    BitBtn51: TBitBtn;
    BitBtn52: TBitBtn;
    BitBtn53: TBitBtn;
    BitBtn54: TBitBtn;
    BitBtn55: TBitBtn;
    BitBtn56: TBitBtn;
    BitBtn57: TBitBtn;
    BitBtn58: TBitBtn;
    BitBtn59: TBitBtn;
    BitBtn60: TBitBtn;
    BitBtn61: TBitBtn;
    BitBtn62: TBitBtn;
    BitBtn63: TBitBtn;
    BitBtn64: TBitBtn;
    BitBtn65: TBitBtn;
    BitBtn66: TBitBtn;
    BitBtn67: TBitBtn;
    BitBtn68: TBitBtn;
    BitBtn69: TBitBtn;
    BitBtn71: TBitBtn;
    BitBtn72: TBitBtn;
    BitBtn73: TBitBtn;
    BitBtn74: TBitBtn;
    BitBtn75: TBitBtn;
    Panel2: TPanel;
    BitBtn89: TBitBtn;
    BitBtn90: TBitBtn;
    BitBtn91: TBitBtn;
    BitBtn92: TBitBtn;
    BitBtn93: TBitBtn;
    BitBtn94: TBitBtn;
    BitBtn95: TBitBtn;
    BitBtn96: TBitBtn;
    BitBtn97: TBitBtn;
    BitBtn98: TBitBtn;
    BitBtn70: TBitBtn;
    BitBtn76: TBitBtn;
    BitBtn77: TBitBtn;
    BitBtn78: TBitBtn;
    BitBtn79: TBitBtn;
    BitBtn80: TBitBtn;
    BitBtn81: TBitBtn;
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn19Click(Sender: TObject);
    procedure BitBtn20Click(Sender: TObject);
    procedure BitBtn21Click(Sender: TObject);
    procedure BitBtn22Click(Sender: TObject);
    procedure BitBtn23Click(Sender: TObject);
    procedure BitBtn24Click(Sender: TObject);
    procedure BitBtn25Click(Sender: TObject);
    procedure BitBtn26Click(Sender: TObject);
    procedure BitBtn27Click(Sender: TObject);
    procedure BitBtn29Click(Sender: TObject);
    procedure BitBtn30Click(Sender: TObject);
    procedure BitBtn31Click(Sender: TObject);
    procedure BitBtn32Click(Sender: TObject);
    procedure BitBtn33Click(Sender: TObject);
    procedure BitBtn34Click(Sender: TObject);
    procedure BitBtn35Click(Sender: TObject);
    procedure BitBtn36Click(Sender: TObject);
    procedure BitBtn37Click(Sender: TObject);
    procedure BitBtn38Click(Sender: TObject);
    procedure BitBtn39Click(Sender: TObject);
    procedure BitBtn40Click(Sender: TObject);
    procedure BitBtn41Click(Sender: TObject);
    procedure BitBtn43Click(Sender: TObject);
    procedure BitBtn44Click(Sender: TObject);
    procedure BitBtn45Click(Sender: TObject);
    procedure BitBtn46Click(Sender: TObject);
    procedure BitBtn47Click(Sender: TObject);
    procedure BitBtn48Click(Sender: TObject);
    procedure BitBtn49Click(Sender: TObject);
    procedure BitBtn50Click(Sender: TObject);
    procedure BitBtn51Click(Sender: TObject);
    procedure BitBtn52Click(Sender: TObject);
    procedure BitBtn53Click(Sender: TObject);
    procedure BitBtn54Click(Sender: TObject);
    procedure BitBtn56Click(Sender: TObject);
    procedure BitBtn57Click(Sender: TObject);
    procedure BitBtn58Click(Sender: TObject);
    procedure BitBtn59Click(Sender: TObject);
    procedure BitBtn60Click(Sender: TObject);
    procedure BitBtn61Click(Sender: TObject);
    procedure BitBtn62Click(Sender: TObject);
    procedure BitBtn63Click(Sender: TObject);
    procedure BitBtn64Click(Sender: TObject);
    procedure BitBtn65Click(Sender: TObject);
    procedure BitBtn71Click(Sender: TObject);
    procedure BitBtn42Click(Sender: TObject);
    procedure BitBtn55Click(Sender: TObject);
    procedure BitBtn81Click(Sender: TObject);
    procedure BitBtn95Click(Sender: TObject);
    procedure BitBtn96Click(Sender: TObject);
    procedure BitBtn97Click(Sender: TObject);
    procedure BitBtn92Click(Sender: TObject);
    procedure BitBtn93Click(Sender: TObject);
    procedure BitBtn94Click(Sender: TObject);
    procedure BitBtn89Click(Sender: TObject);
    procedure BitBtn90Click(Sender: TObject);
    procedure BitBtn91Click(Sender: TObject);
    procedure BitBtn98Click(Sender: TObject);
    procedure BitBtn77Click(Sender: TObject);
    procedure BitBtn76Click(Sender: TObject);
    procedure BitBtn79Click(Sender: TObject);
    procedure BitBtn80Click(Sender: TObject);
    procedure BitBtn70Click(Sender: TObject);
  private
    WorkEdit : TEdit;
    procedure Big;
    procedure Small;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
  end;

function DlgTastatur( var Edit : TEdit ):Boolean;

implementation

{$R *.dfm}


function DlgTastatur( var Edit : TEdit ):Boolean;
var
  aTastatur: TForm_Tastatur;
  iTop,iLeft : integer;
begin
  iTop := Mouse.CursorPos.Y+20;
  //iLeft := Mouse.CursorPos.X;
  iLeft := 0;
  //--
  aTastatur := TForm_Tastatur.Create(Application);
  try
    aTastatur.WorkEdit := Edit;
    aTastatur.Top := iTop;
    aTastatur.Left := iLeft;
    if (aTastatur.ShowModal = mrOk) then
    begin
      //
    end;
  finally
    aTastatur.Free;
  end;
end;



procedure TForm_Tastatur.BitBtn15Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn15.Caption;
end;

procedure TForm_Tastatur.BitBtn14Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn14.Caption;
end;

procedure TForm_Tastatur.BitBtn16Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn16.Caption;
end;

procedure TForm_Tastatur.BitBtn17Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn17.Caption;
end;

procedure TForm_Tastatur.BitBtn18Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn18.Caption;
end;

procedure TForm_Tastatur.BitBtn19Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn19.Caption;
end;

procedure TForm_Tastatur.BitBtn20Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn20.Caption;
end;

procedure TForm_Tastatur.BitBtn21Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn21.Caption;
end;

procedure TForm_Tastatur.BitBtn22Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn22.Caption;
end;

procedure TForm_Tastatur.BitBtn23Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn23.Caption;
end;

procedure TForm_Tastatur.BitBtn24Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn24.Caption;
end;

procedure TForm_Tastatur.BitBtn25Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn25.Caption;
end;

procedure TForm_Tastatur.BitBtn26Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn26.Caption;
end;

procedure TForm_Tastatur.BitBtn27Click(Sender: TObject);
begin
  WorkEdit.Text := Copy( WorkEdit.Text , 0, StrLen(PChar(WorkEdit.Text))-1 );
end;

procedure TForm_Tastatur.BitBtn29Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn29.Caption;
end;

procedure TForm_Tastatur.BitBtn30Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn30.Caption;
end;

procedure TForm_Tastatur.BitBtn31Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn31.Caption;
end;

procedure TForm_Tastatur.BitBtn32Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn32.Caption;
end;

procedure TForm_Tastatur.BitBtn33Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn33.Caption;
end;

procedure TForm_Tastatur.BitBtn34Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn34.Caption;
end;

procedure TForm_Tastatur.BitBtn35Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn35.Caption;
end;

procedure TForm_Tastatur.BitBtn36Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn36.Caption;
end;

procedure TForm_Tastatur.BitBtn37Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn37.Caption;
end;

procedure TForm_Tastatur.BitBtn38Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn38.Caption;
end;

procedure TForm_Tastatur.BitBtn39Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn39.Caption;
end;

procedure TForm_Tastatur.BitBtn40Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn40.Caption;
end;

procedure TForm_Tastatur.BitBtn41Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn41.Caption;
end;

procedure TForm_Tastatur.BitBtn43Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn43.Caption;
end;

procedure TForm_Tastatur.BitBtn44Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn44.Caption;
end;

procedure TForm_Tastatur.BitBtn45Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn45.Caption;
end;

procedure TForm_Tastatur.BitBtn46Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn46.Caption;
end;

procedure TForm_Tastatur.BitBtn47Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn47.Caption;
end;

procedure TForm_Tastatur.BitBtn48Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn48.Caption;
end;

procedure TForm_Tastatur.BitBtn49Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn49.Caption;
end;

procedure TForm_Tastatur.BitBtn50Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn50.Caption;
end;

procedure TForm_Tastatur.BitBtn51Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn51.Caption;
end;

procedure TForm_Tastatur.BitBtn52Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn52.Caption;
end;

procedure TForm_Tastatur.BitBtn53Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn53.Caption;
end;

procedure TForm_Tastatur.BitBtn54Click(Sender: TObject);
begin
  //WorkEdit.Text := WorkEdit.Text + BitBtn26.Caption;
end;

procedure TForm_Tastatur.BitBtn56Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn56.Caption;
end;

procedure TForm_Tastatur.BitBtn57Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn57.Caption;
end;

procedure TForm_Tastatur.BitBtn58Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn58.Caption;
end;

procedure TForm_Tastatur.BitBtn59Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn59.Caption;
end;

procedure TForm_Tastatur.BitBtn60Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn60.Caption;
end;

procedure TForm_Tastatur.BitBtn61Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn61.Caption;
end;

procedure TForm_Tastatur.BitBtn62Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn62.Caption;
end;

procedure TForm_Tastatur.BitBtn63Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn63.Caption;
end;

procedure TForm_Tastatur.BitBtn64Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn64.Caption;
end;

procedure TForm_Tastatur.BitBtn65Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn65.Caption;
end;

procedure TForm_Tastatur.BitBtn71Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + ' ';
end;

procedure TForm_Tastatur.Big;
begin
  BitBtn29.Caption := 'Q';
  BitBtn30.Caption := 'W';
  BitBtn31.Caption := 'E';
  BitBtn32.Caption := 'R';
  BitBtn33.Caption := 'T';
  BitBtn34.Caption := 'Z';
  BitBtn35.Caption := 'U';
  BitBtn36.Caption := 'I';
  BitBtn37.Caption := 'O';
  BitBtn38.Caption := 'P';
  BitBtn39.Caption := 'Ü';

  BitBtn43.Caption := 'A';
  BitBtn44.Caption := 'S';
  BitBtn45.Caption := 'D';
  BitBtn46.Caption := 'F';
  BitBtn47.Caption := 'G';
  BitBtn48.Caption := 'H';
  BitBtn49.Caption := 'J';
  BitBtn50.Caption := 'K';
  BitBtn51.Caption := 'L';
  BitBtn52.Caption := 'Ö';
  BitBtn53.Caption := 'Ä';

  BitBtn56.Caption := 'Y';
  BitBtn57.Caption := 'X';
  BitBtn58.Caption := 'C';
  BitBtn59.Caption := 'V';
  BitBtn60.Caption := 'B';
  BitBtn61.Caption := 'N';
  BitBtn62.Caption := 'M';
end;


procedure TForm_Tastatur.Small;
begin
  BitBtn29.Caption := 'q';
  BitBtn30.Caption := 'w';
  BitBtn31.Caption := 'e';
  BitBtn32.Caption := 'r';
  BitBtn33.Caption := 't';
  BitBtn34.Caption := 'z';
  BitBtn35.Caption := 'u';
  BitBtn36.Caption := 'i';
  BitBtn37.Caption := 'o';
  BitBtn38.Caption := 'p';
  BitBtn39.Caption := 'ü';

  BitBtn43.Caption := 'a';
  BitBtn44.Caption := 's';
  BitBtn45.Caption := 'd';
  BitBtn46.Caption := 'f';
  BitBtn47.Caption := 'g';
  BitBtn48.Caption := 'h';
  BitBtn49.Caption := 'j';
  BitBtn50.Caption := 'k';
  BitBtn51.Caption := 'l';
  BitBtn52.Caption := 'ö';
  BitBtn53.Caption := 'ä';

  BitBtn56.Caption := 'y';
  BitBtn57.Caption := 'x';
  BitBtn58.Caption := 'c';
  BitBtn59.Caption := 'v';
  BitBtn60.Caption := 'b';
  BitBtn61.Caption := 'n';
  BitBtn62.Caption := 'm';
end;

procedure TForm_Tastatur.BitBtn42Click(Sender: TObject);
begin
  if ( BitBtn42.Caption = 'lock' ) then
  begin
    BitBtn42.Caption := '(lock)';
    Big;
  end
  else
  begin
    BitBtn42.Caption := 'lock';
    Small;
  end;
end;

procedure TForm_Tastatur.BitBtn55Click(Sender: TObject);
begin
  if ( BitBtn55.Caption = 'shift' ) then
  begin
    BitBtn55.Caption := '(shift)';
    Big;
  end
  else
  begin
    BitBtn55.Caption := 'shift';
    Small;
  end;
end;

procedure TForm_Tastatur.BitBtn81Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn24.Caption;
end;

procedure TForm_Tastatur.BitBtn95Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn95.Caption;
end;

procedure TForm_Tastatur.BitBtn96Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn96.Caption;
end;

procedure TForm_Tastatur.BitBtn97Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn97.Caption;
end;

procedure TForm_Tastatur.BitBtn92Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn92.Caption;
end;

procedure TForm_Tastatur.BitBtn93Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn93.Caption;
end;

procedure TForm_Tastatur.BitBtn94Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn94.Caption;
end;

procedure TForm_Tastatur.BitBtn89Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn89.Caption;
end;

procedure TForm_Tastatur.BitBtn90Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn90.Caption;
end;

procedure TForm_Tastatur.BitBtn91Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn91.Caption;
end;

procedure TForm_Tastatur.BitBtn98Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn98.Caption;
end;

procedure TForm_Tastatur.BitBtn77Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn77.Caption;
end;

procedure TForm_Tastatur.BitBtn76Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn76.Caption;
end;

procedure TForm_Tastatur.BitBtn79Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn79.Caption;
end;

procedure TForm_Tastatur.BitBtn80Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn80.Caption;
end;

procedure TForm_Tastatur.BitBtn70Click(Sender: TObject);
begin
  WorkEdit.Text := WorkEdit.Text + BitBtn70.Caption;
end;

end.
