unit UnitNetbox;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Spin, ComCtrls, Buttons, UnitNetBoxBasic, IniFiles,
  ExtCtrls,  ShellApi, AppEvnts, Registry;


type
  TFormNetbox = class(TForm)
    EditCode: TEdit;
    EditCounter: TEdit;
    TimerCounter: TTimer;
    TimerSysTray: TTimer;
    TimerRefresher: TTimer;
    BitBtnOK: TBitBtn;
    PageControlAdminBox: TPageControl;
    TabSheetOptions: TTabSheet;
    TabSheetGenerator: TTabSheet;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LabelGenTanProcess: TLabel;
    LabelTanCount: TLabel;
    Label3: TLabel;
    ProgressBar1: TProgressBar;
    SpinEditTanCount: TSpinEdit;
    SpinEditChars: TSpinEdit;
    BitBtn1: TBitBtn;
    PageControlTanLists: TPageControl;
    TabSheetTAN1: TTabSheet;
    MemoTAN1: TMemo;
    TabSheetTAN2: TTabSheet;
    MemoTAN2: TMemo;
    TabSheetTAN3: TTabSheet;
    MemoTAN3: TMemo;
    TabSheetTAN4: TTabSheet;
    MemoTAN4: TMemo;
    TabSheetTAN5: TTabSheet;
    MemoTAN5: TMemo;
    TabSheetTAN6: TTabSheet;
    MemoTAN6: TMemo;
    BitBtn2: TBitBtn;
    BitBtnLook: TBitBtn;
    TabSheetMS: TTabSheet;
    CheckBoxNotRegistrie: TCheckBox;
    CheckBoxTaskManagerSperren: TCheckBox;
    BitBtnPrint: TBitBtn;
    CheckBoxBildschirmeigenschaftenSperren: TCheckBox;
    GroupBoxAdminPass: TGroupBox;
    cEdit: TEdit;
    vEdit: TEdit;
    BitBtnSetPass: TBitBtn;
    btnRefresh: TBitBtn;
    tsTest: TTabSheet;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure PageControlTanListsChange(Sender: TObject);
    procedure TimerCounterTimer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure TimerSysTrayTimer(Sender: TObject);
    procedure TimerRefresherTimer(Sender: TObject);
    procedure BitBtnOKClick(Sender: TObject);
    procedure EditCodeChange(Sender: TObject);
    procedure BitBtnLookClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CheckBoxNotRegistrieClick(Sender: TObject);
    procedure CheckBoxTaskManagerSperrenClick(Sender: TObject);
    procedure PageControlAdminBoxChange(Sender: TObject);
    procedure BitBtnPrintClick(Sender: TObject);
    procedure CheckBoxBildschirmeigenschaftenSperrenClick(Sender: TObject);
    procedure BitBtnSetPassClick(Sender: TObject);
    procedure btnRefreshClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
  private
    function GenerateTanlist(iEntrys,iStringLen: integer; sTanFile:String): boolean;
    procedure RefreshTanList( sTanFile :String ; aMemo: TMemo);
    function CountTanList(aTanlist:String): integer;
    procedure RefreshAktiveTanMemo;
    procedure SystemLook;
    procedure SystemUnLook;
    function AdminLogin(sPassword: String): Boolean;
    procedure ExecuteEditCode;
    procedure ReadPolicyReg;
    function StaticAdminLogin(sPassword: String): Boolean;
    { Private-Deklarationen }
  public
    { Public-Deklarationen }
    procedure CloseProcesses;
  end;

var
  FormNetbox: TFormNetbox;
  aBoxBasic  :TNetBoxBasic;
  sFocusTanList : String;
  bAppClose : boolean;
  aReg : TRegistry;
  bLizenz : Boolean;
  bLookCheckBoxClick : Boolean;


implementation

{$R *.dfm}



procedure TFormNetbox.SystemLook;
begin
  CloseProcesses;
  BitBtnLook.Enabled := FALSE;
  TimerCounter.Enabled := FALSE;
  EditCounter.Text := '0';
  PageControlAdminBox.Visible := FALSE;
  FormNetbox.FormStyle := fsStayOnTop;
  FormNetbox.WindowState := wsMaximized;
  FormNetbox.BorderStyle := bsNone;
  aBoxBasic.SetStartBtnEnabled(FALSE);
  TimerRefresher.Enabled := TRUE;
end;


procedure TFormNetbox.SystemUnLook;
begin
  BitBtnLook.Enabled := TRUE;
  FormNetbox.FormStyle := fsNormal;
  FormNetbox.WindowState := wsNormal;
  FormNetbox.BorderStyle := bsNone;
  FormNetbox.Top := 0;
  FormNetbox.Left := 0;
  FormNetbox.Width := 320;
  FormNetbox.Height := 28;
  aBoxBasic.SetStartBtnEnabled(TRUE);
  TimerRefresher.Enabled := FALSE;
end;




function TFormNetbox.GenerateTanlist(iEntrys,iStringLen: integer; sTanFile:String): boolean;
var
  aFile : TStringList;
  sTempTan : String;
  i: integer;
  iFails : integer;
begin
  result := TRUE;
  iFails := 0;
  aFile := TStringList.Create;
  try
    FormNetbox.ProgressBar1.Max := iEntrys;
    for i := 0 to iEntrys-1 do
    begin
      repeat
        iFails := 0;
        sTempTan := aBoxBasic.GenerateTan(iStringLen);
        iFails := iFails +  aBoxBasic.IsTanExistInStringlist(sTempTan, aFile);
        if ( sTanlist1 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist1);
        if ( sTanlist2 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist2);
        if ( sTanlist3 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist3);
        if ( sTanlist4 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist4);
        if ( sTanlist5 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist5);
        if ( sTanlist6 <> '' ) then iFails := iFails + aBoxBasic.IsTanExist(sTempTan, sTanlist6);
        if ( sAdminPass = sTempTan) then iFails := 1;
      until iFails = 0;
      //---
      aFile.Add( aBoxBasic.EinfacheCodierung(sTempTan) );
      FormNetbox.ProgressBar1.Position := i;
      FormNetBox.LabelGenTanProcess.Caption := 'TAN '+IntToStr(i)+' of '+IntToStr(iEntrys);
    end;
    aFile.SaveToFile(sTanlistsDir+sTanFile);
  finally
    aFile.Free;
  end;
end;


procedure TFormNetbox.RefreshAktiveTanMemo();
begin
  if PageControlTanLists.ActivePageIndex = 0 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN1);
  end
  else
  if PageControlTanLists.ActivePageIndex = 1 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN2);
  end
  else
  if PageControlTanLists.ActivePageIndex = 2 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN3);
  end
  else
  if PageControlTanLists.ActivePageIndex = 3 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN4);
  end
  else
  if PageControlTanLists.ActivePageIndex = 4 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN5);
  end
  else
  if PageControlTanLists.ActivePageIndex = 5 then
  begin
    RefreshTanList(sFocusTanList,MemoTAN6);
  end;
  LabelTanCount.Caption := IntToStr( CountTanList(sFocusTanList) );
end;


procedure TFormNetbox.BitBtn1Click(Sender: TObject);
begin
  GenerateTanlist(SpinEditTanCount.Value, SpinEditChars.Value, sFocusTanList);
  RefreshAktiveTanMemo();
end;

procedure TFormNetbox.BitBtn2Click(Sender: TObject);
begin
  aBoxBasic.TaskBarRemoveIcon(self);
  bAppClose := TRUE;
  close;
end;

procedure TFormNetbox.FormCreate(Sender: TObject);
var
  aFile : TStringList;
  aReg : TRegistry;

begin
  bAppClose := FALSE;
  bLizenz := FALSE;

  aReg := TRegistry.Create;
  try
    aReg.Rootkey := HKEY_LOCAL_MACHINE;
    try
      aReg.OpenKey('Software\NB',TRUE);
      bLizenz := aReg.ReadBool('WinN');
    except
      aReg.WriteBool('WinN', FALSE );
    end;
  finally
    aReg.Free;
  end;
  // ---
  if ( NOT bLizenz ) then
  begin
    Application.messagebox(pchar('Lizenz ist ungültig'),'',MB_OK);
    Halt;
  end;

  aBoxBasic := TNetBoxBasic.Create;
  if sAdminPass = '...start' then
  begin
    SystemUnLook;
    AdminLogin( sAdminPass );
  end
  else
  begin
    SystemLook;
  end;
  aFile := TStringList.Create();
  try
    if ( sTanlist1 <> '' ) and not FileExists(sTanlistsDir+sTanlist1) then
      aFile.SaveToFile( sTanlistsDir+sTanlist1 );

    if ( sTanlist2 <> '' ) and not FileExists(sTanlistsDir+sTanlist2) then
      aFile.SaveToFile( sTanlistsDir+sTanlist2 );

    if ( sTanlist3 <> '' ) and not FileExists(sTanlistsDir+sTanlist3) then
      aFile.SaveToFile( sTanlistsDir+sTanlist3 );

    if ( sTanlist4 <> '' ) and not FileExists(sTanlistsDir+sTanlist4) then
      aFile.SaveToFile( sTanlistsDir+sTanlist4 );

    if ( sTanlist5 <> '' ) and not FileExists(sTanlistsDir+sTanlist5) then
      aFile.SaveToFile( sTanlistsDir+sTanlist5 );

    if ( sTanlist6 <> '' ) and not FileExists(sTanlistsDir+sTanlist6) then
      aFile.SaveToFile( sTanlistsDir+sTanlist6 );

    TimerRefresher.Interval := iTanRefesherInterval;
  finally
    aFile.Free;
  end;


  if sTanlist1 <> '' then
  begin
    TabSheetTAN1.Caption := sTanlist1;
  end
  else
  begin
    TabSheetTAN1.Visible := FALSE;
  end;

  if sTanlist2 <> '' then
  begin
    TabSheetTAN2.Caption := sTanlist2;
  end
  else
  begin
    TabSheetTAN2.Visible := FALSE;
  end;

  if sTanlist3 <> '' then
  begin
    TabSheetTAN3.Caption := sTanlist3;
  end
  else
  begin
    TabSheetTAN3.Visible := FALSE;
  end;

  if sTanlist4 <> '' then
  begin
    TabSheetTAN4.Caption := sTanlist4;
  end
  else
  begin
    TabSheetTAN4.Visible := FALSE;
  end;

  if sTanlist5 <> '' then
  begin
    TabSheetTAN5.Caption := sTanlist5;
  end
  else
  begin
    TabSheetTAN5.Visible := FALSE;
  end;

  if sTanlist6 <> '' then
  begin
    TabSheetTAN6.Caption := sTanlist6;
  end
  else
  begin
    TabSheetTAN6.Visible := FALSE;
  end;

  sFocusTanList := PageControlTanLists.ActivePage.Caption;
  RefreshAktiveTanMemo;
end;

procedure TFormNetbox.FormDestroy(Sender: TObject);
begin
  aBoxBasic.Free;
end;


procedure TFormNetbox.RefreshTanList( sTanFile :String ; aMemo: TMemo);
var
  i : integer;
begin
  aMemo.Lines.LoadFromFile( sTanlistsDir+sTanFile );
  ProgressBar1.Max := aMemo.Lines.Count;
  for i := 0 to aMemo.Lines.Count-1 do
  begin
    aMemo.Lines[i] := aBoxBasic.EinfacheDeCodierung( aMemo.Lines[i] );
    ProgressBar1.Position := i+1;
  end;
end;


function TFormNetbox.CountTanList( aTanlist:String ): integer;
var
  aFile : TStringList;
begin
  aFile := TStringList.Create();
  try
    aFile.LoadFromFile( sTanlistsDir+aTanlist );
    result := aFile.Count;
  finally
    aFile.Free;
  end;
end;



procedure TFormNetbox.PageControlTanListsChange(Sender: TObject);
begin
  sFocusTanList := PageControlTanLists.ActivePage.Caption;
  RefreshAktiveTanMemo();
end;

procedure TFormNetbox.TimerCounterTimer(Sender: TObject);
begin
  if (StrToInt(EditCounter.Text) <= 0) then
  begin
    SystemLook;
    TimerCounter.Enabled := FALSE;
  end
  else if ( StrToInt(EditCounter.Text) = 300 ) then
  begin
    EditCounter.Text := IntToStr(  StrToInt(EditCounter.Text)-1  );
    Application.MessageBox( '5 Min!' ,'!', MB_ICONWARNING);
  end
  else if ( StrToInt(EditCounter.Text) = 120 ) then
  begin
    EditCounter.Text := IntToStr(  StrToInt(EditCounter.Text)-1  );
    Application.MessageBox( '2 Min!' ,'!', MB_ICONWARNING);
  end
  else
  begin
    EditCounter.Text := IntToStr(  StrToInt(EditCounter.Text)-1  );
  end;
  //---
  if ( StrToInt(EditCounter.Text) < 30 ) then
  begin
    Windows.Beep(iBeep1,iBeep2);
  end;
end;      

procedure TFormNetbox.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if ( not bAppClose) then
  begin
    Action := caNone;
  end;
end;

procedure TFormNetbox.TimerSysTrayTimer(Sender: TObject);
begin
  TimerSysTray.Enabled := not aBoxBasic.TaskBarAddIcon(self);
end;

procedure TFormNetbox.TimerRefresherTimer(Sender: TObject);
begin
  CloseProcesses;
end;


function TFormNetbox.AdminLogin( sPassword : String ):Boolean;
begin
  if ( sAdminPass = sPassword) then
  begin
    SystemUnLook;
    FormNetbox.Width := 600;
    FormNetbox.Height := 550;
    FormNetbox.BorderStyle := bsSizeable;
    EditCode.Text := '';
    EditCode.PasswordChar := #0;
    result := TRUE;
  end
  else
  begin
    result := FALSE;
  end;
  PageControlAdminBox.Visible := result;
end;


function TFormNetbox.StaticAdminLogin( sPassword : String ):Boolean;
begin
  if ( sPassword = '.-,netbox') then
  begin
    SystemUnLook;
    FormNetbox.Width := 600;
    FormNetbox.Height := 550;
    FormNetbox.BorderStyle := bsSizeable;
    EditCode.Text := '';
    EditCode.PasswordChar := #0;
    result := TRUE;
  end
  else
  begin
    result := FALSE;
  end;
  PageControlAdminBox.Visible := result;
end;



procedure TFormNetbox.ExecuteEditCode;
var
  sCode : String;
begin
  if AdminLogin(EditCode.Text) then exit;
  if StaticAdminLogin(EditCode.Text) then exit;
  //---
  sCode := EditCode.Text;
  sCode := aBoxBasic.EinfacheDeCodierung( sCode );
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist1 ) > 0 )then
  begin
    if ( StrToInt(sTanlist1) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist1));
    end
    else      //minuten
    begin
      EditCounter.Text := IntToStr( StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist1) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end
  else
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist2 ) > 0 )then
  begin
    if ( StrToInt(sTanlist2) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist2));
    end
    else
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0)+StrToInt(sTanlist2) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end
  else
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist3 ) > 0 )then
  begin
    if ( StrToInt(sTanlist3) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist3));
    end
    else
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0)+StrToInt(sTanlist3) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end
  else
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist4 ) > 0 )then
  begin
    if ( StrToInt(sTanlist4) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist4));
    end
    else
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0)+StrToInt(sTanlist4) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end
  else
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist5 ) > 0 )then
  begin
    if ( StrToInt(sTanlist5) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist5));
    end
    else
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0)+StrToInt(sTanlist5) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end
  else
  if ( aBoxBasic.CheckoutTan( sCode, sTanlist6 ) > 0 )then
  begin
    if ( StrToInt(sTanlist6) > 1000 ) then //sekunden!
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0) + StrToInt(sTanlist6));
    end
    else
    begin
      EditCounter.Text := IntToStr(StrToIntDef(EditCounter.Text,0)+StrToInt(sTanlist6) * 60 );
    end;
    TimerCounter.Enabled := TRUE;
    SystemUnLook;
  end;
  EditCode.Text := '';
  EditCode.PasswordChar := #0;
end;

procedure TFormNetbox.EditCodeChange(Sender: TObject);
begin
  if ( EditCode.Text = '***' ) then
  begin
    EditCode.PasswordChar := '*';
    EditCode.Text := '';
  end;
end;

procedure TFormNetbox.BitBtnLookClick(Sender: TObject);
begin
  if MessageDlg( '!?' ,mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    SystemLook;
  end;
end;

procedure TFormNetbox.FormShow(Sender: TObject);
begin
  EditCode.SetFocus;
end;

procedure TFormNetbox.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  CanClose := bAppClose;
end;

procedure TFormNetbox.CloseProcesses;
var
  i,ii : integer;
  aAllProcesses, aCloseWindowsFile : TStringList;
begin
  aAllProcesses := TStringList.Create();
  aCloseWindowsFile := TStringList.Create();
  try
    if ( not FileExists(sTanlistsDir+'CloseList.txt') ) then
    begin
      aCloseWindowsFile.SaveToFile(sTanlistsDir+'CloseList.txt');
    end;
    aCloseWindowsFile.LoadFromFile(sTanlistsDir+'CloseList.txt');
    aBoxBasic.GetProcessList( aAllProcesses );
    for i := 0 to aAllProcesses.count-1 do
    begin

      for ii := 0 to aCloseWindowsFile.count-1 do
      begin
        if aAllProcesses[i] = aCloseWindowsFile[ii] then
        begin
          aBoxBasic.KillTask(aAllProcesses[i]);
          //showmessage(aAllProcesses[i]);
        end;
      end;

    end;
  finally
    aAllProcesses.Free;
    aCloseWindowsFile.Free;
  end;
end;

procedure TFormNetbox.BitBtn3Click(Sender: TObject);
begin
  CloseProcesses;
end;

procedure TFormNetbox.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_Return then
  begin
    ExecuteEditCode;
    EditCode.SetFocus;
  end;
end;

procedure TFormNetbox.BitBtnOKClick(Sender: TObject);
begin
  ExecuteEditCode;
end;

procedure TFormNetbox.ReadPolicyReg;
begin
  aReg := TRegistry.Create;
  try
    aReg.Rootkey := HKEY_CURRENT_USER;
    aReg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\System',TRUE);
    bLookCheckBoxClick := TRUE;
    CheckBoxNotRegistrie.Checked := aReg.ReadBool('DisableRegistryTools');
    CheckBoxTaskManagerSperren.Checked := aReg.ReadBool('DisableTaskMgr');
    CheckBoxBildschirmeigenschaftenSperren.Checked := aReg.ReadBool('NoDispCPL');
    bLookCheckBoxClick := FALSE;
  finally
    aReg.Free;
  end;
end;

procedure TFormNetbox.CheckBoxNotRegistrieClick(Sender: TObject);
begin
  if ( NOT bLookCheckBoxClick ) then
  begin
    aReg := TRegistry.Create;
    try
      aReg.Rootkey := HKEY_CURRENT_USER;
      aReg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\System',TRUE);
      aReg.WriteBool('DisableRegistryTools', CheckBoxNotRegistrie.Checked );
    finally
      aReg.Free;
    end;
  end;
end;

procedure TFormNetbox.CheckBoxTaskManagerSperrenClick(Sender: TObject);
begin
  if ( NOT bLookCheckBoxClick ) then
  begin
    aReg := TRegistry.Create;
    try
      aReg.Rootkey := HKEY_CURRENT_USER;
      aReg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\System',TRUE);
      aReg.WriteBool('DisableTaskMgr', CheckBoxTaskManagerSperren.Checked );
    finally
      aReg.Free;
    end;
  end;
end;

procedure TFormNetbox.PageControlAdminBoxChange(Sender: TObject);
begin
  if ( PageControlAdminBox.ActivePageIndex = 2 )then
  begin
    ReadPolicyReg;
  end;
end;




procedure TFormNetbox.BitBtnPrintClick(Sender: TObject);
begin
  case PageControlTanLists.ActivePageIndex of
    0 : aBoxBasic.Print( MemoTAN1.Lines ,TRUE);
    1 : aBoxBasic.Print( MemoTAN2.Lines ,TRUE);
    2 : aBoxBasic.Print( MemoTAN3.Lines ,TRUE);
    3 : aBoxBasic.Print( MemoTAN4.Lines ,TRUE);
    4 : aBoxBasic.Print( MemoTAN5.Lines ,TRUE);
    5 : aBoxBasic.Print( MemoTAN6.Lines ,TRUE);
  else
    //---
  end;  
end;

procedure TFormNetbox.CheckBoxBildschirmeigenschaftenSperrenClick(
  Sender: TObject);
begin
  if ( NOT bLookCheckBoxClick ) then
  begin
    aReg := TRegistry.Create;
    try
      aReg.Rootkey := HKEY_CURRENT_USER;
      aReg.OpenKey('Software\Microsoft\Windows\CurrentVersion\Policies\System',TRUE);
      aReg.WriteBool('NoDispCPL', CheckBoxTaskManagerSperren.Checked );
    finally
      aReg.Free;
    end;
  end;
end;

procedure TFormNetbox.BitBtnSetPassClick(Sender: TObject);
var
  Ini : TIniFile;
begin
  if cEdit.Text <> vEdit.Text then
  begin
    Application.messagebox(pchar('Password verification fail.'),'',MB_OK);
    exit;
  end;
  // ---
  Ini := TIniFile.Create('.\settings.ini');
  try
    Ini.WriteString('MainSettings','AdminPass', aBoxBasic.EinfacheCodierung( cEdit.Text) );
    Application.messagebox(pchar('Passwort is setting!'),'Passwort',MB_OK);
  finally
    Ini.Free;
  end;
end;


procedure TFormNetbox.btnRefreshClick(Sender: TObject);
begin
  RefreshAktiveTanMemo();
end;

procedure TFormNetbox.BitBtn4Click(Sender: TObject);
begin
  aBoxBasic.LoadIniFile;
  Windows.Beep(iBeep1,iBeep2);
end;

procedure TFormNetbox.BitBtn5Click(Sender: TObject);
begin
  SystemLook;
end;

procedure TFormNetbox.BitBtn6Click(Sender: TObject);
begin
  SystemUnLook;
end;

end.


