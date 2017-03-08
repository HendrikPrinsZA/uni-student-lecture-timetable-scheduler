unit student_rooster_u;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Menus, StdCtrls, module_u, ComCtrls,ComObj, ImgList,
  ExtCtrls, Buttons, Spin,ExtActns, OleServer, ExcelXP,jpeg, ToolWin, EASendMailObjLib_TLB,ShellAPI,Registry,
  ColorGrd, AdvCombo, ColCombo, AdvToolBtn, AdvPanel, ushldlg, AdvPicture,
  GIFImg, AdvProgr, AdvCircularProgress, ColListb, AdvSmoothGauge,
  AdvPageControl, rtflabel, AdvSplitter, AdvSmoothTrackBar, AeroButtons,
  AdvSmoothButton, AdvGlassButton, AdvGlowButton, AdvSmoothMessageDialog,
  TaskDialog, AdvGroupBox, AdvSmoothPanel, OleCtrls, SHDocVw;

type
  TForm1 = class(TForm)
    sGridMain: TStringGrid;
    mm1: TMainMenu;
    File1: TMenuItem;
    Edit1: TMenuItem;
    Help1: TMenuItem;
    Open1: TMenuItem;
    Save1: TMenuItem;
    N1: TMenuItem;
    Exit1: TMenuItem;
    cbbGroups: TComboBox;
    cbbAdd: TComboBox;
    btMain: TButton;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    trcPermutations: TTrackBar;
    cbbCurrent: TListBox;
    rg1: TRadioGroup;
    lblindex: TLabel;
    lblTotal: TLabel;
    pnlAddModule: TPanel;
    lbl4: TLabel;
    sGridAdd: TStringGrid;
    bt1: TButton;
    bt2: TButton;
    lbl6: TLabel;
    edtModuleName: TEdit;
    rgGroups: TRadioGroup;
    bt3: TButton;
    bt4: TButton;
    pnl1: TPanel;
    Addnewmodulemanually1: TMenuItem;
    bt5: TButton;
    tmrTutorial: TTimer;
    shpAddModule: TShape;
    shpCurrent: TShape;
    shpGroups: TShape;
    shpFinal: TShape;
    btn1: TSpeedButton;
    utorial1: TMenuItem;
    tmrUsability: TTimer;
    pbGenerate: TProgressBar;
    pbLoad: TProgressBar;
    red1: TRichEdit;
    pnlLoad: TPanel;
    rgSite: TRadioGroup;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lblYear: TLabel;
    lblSemester: TLabel;
    lbl13: TLabel;
    lblLanguage: TLabel;
    View1: TMenuItem;
    Fullscreen1: TMenuItem;
    pnlFullScreen: TPanel;
    btnLeave: TBitBtn;
    sGridFull: TStringGrid;
    trcFull: TTrackBar;
    lblPos: TLabel;
    lblTop: TLabel;
    lblMid: TLabel;
    pnlAdvertisement: TPanel;
    imgAdvertisement: TImage;
    tmrAdds: TTimer;
    pbAdds: TProgressBar;
    rbNew: TRadioButton;
    rbEdit: TRadioButton;
    cbbNames: TComboBox;
    dlgOpen: TOpenDialog;
    SaveModuleList1: TMenuItem;
    SaveCurrentModules1: TMenuItem;
    N2: TMenuItem;
    UpdateLoadmodulelist1: TMenuItem;
    Openmodulelist1: TMenuItem;
    Open2: TMenuItem;
    Grid1: TMenuItem;
    Saveasimage2: TMenuItem;
    Saveasexcel2: TMenuItem;
    N3: TMenuItem;
    Filter1: TMenuItem;
    Regular1: TMenuItem;
    statMain: TStatusBar;
    grp1: TGroupBox;
    lbl18: TLabel;
    lblName: TLabel;
    pnlEmail: TPanel;
    lbl19: TLabel;
    lbl22: TLabel;
    lbl23: TLabel;
    lbl24: TLabel;
    btSend: TButton;
    btCancel: TButton;
    bt11: TButton;
    edtSubject: TEdit;
    redMessage: TRichEdit;
    edtName: TEdit;
    lbl20: TLabel;
    btn5: TSpeedButton;
    pnlShare: TPanel;
    lbl21: TLabel;
    lbl25: TLabel;
    lbl26: TLabel;
    edtShareName: TEdit;
    lbl27: TLabel;
    edtShareAddress: TEdit;
    btnClearAllLocks: TBitBtn;
    btnPlay: TSpeedButton;
    btnPause: TSpeedButton;
    btn6: TSpeedButton;
    dlgSave: TSaveDialog;
    bt8: TButton;
    bt9: TButton;
    bt10: TButton;
    lbl28: TLabel;
    Sorttimetables1: TMenuItem;
    Standard1: TMenuItem;
    Latesleeper1: TMenuItem;
    Gohomeearly1: TMenuItem;
    Compact1: TMenuItem;
    Loose1: TMenuItem;
    Image1: TImage;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    chkPracs: TCheckBox;
    dlgColor1: TColorDialog;
    pnlColors: TPanel;
    lstColors: TListBox;
    lblColorName: TLabel;
    shpColor: TShape;
    btn7: TButton;
    lbl29: TLabel;
    AdvToolButton1: TAdvToolButton;
    AdvToolButton2: TAdvToolButton;
    AdvPanel1: TAdvPanel;
    cmbYear: TComboBox;
    Label1: TLabel;
    cmbSem: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    sgridFilter: TStringGrid;
    cmbLanguage: TComboBox;
    Label4: TLabel;
    SpeedButton1: TSpeedButton;
    btnFilter: TButton;
    btnClearFilters: TButton;
    AdvToolButton3: TAdvToolButton;
    GroupBox1: TGroupBox;
    btnAdd: TAdvToolButton;
    pgWizard: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Label5: TLabel;
    AdvToolButton5: TAdvToolButton;
    Label6: TLabel;
    AdvToolButton6: TAdvToolButton;
    Label7: TLabel;
    AdvToolButton8: TAdvToolButton;
    AdvToolButton9: TAdvToolButton;
    RichEdit1: TRichEdit;
    AdvToolButton4: TAdvToolButton;
    AdvToolButton12: TAdvToolButton;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    lblFacName: TLabel;
    lblFacNmr: TLabel;
    lstModules: TListBox;
    lstCurrent: TListBox;
    Wizard1: TMenuItem;
    Label14: TLabel;
    lbl: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    lbl2Name: TLabel;
    lbl2Year: TLabel;
    lbl2Sem: TLabel;
    lbl2NmrOfGroups: TLabel;
    Label15: TLabel;
    Label19: TLabel;
    lbl1Name: TLabel;
    Label21: TLabel;
    lbl1Year: TLabel;
    Label23: TLabel;
    lbl1Sem: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    RichEdit2: TRichEdit;
    AdvPanel2: TAdvPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    SpeedButton2: TSpeedButton;
    AdvToolButton13: TAdvToolButton;
    cmbYear2: TComboBox;
    cmbSem2: TComboBox;
    sgridFilter2: TStringGrid;
    ComboBox3: TComboBox;
    btnFilter2: TButton;
    btnClearFilters2: TButton;
    AdvToolButton14: TAdvToolButton;
    RichEdit3: TRichEdit;
    Button1: TButton;
    RichEdit4: TRichEdit;
    Label9: TLabel;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    Button2: TButton;
    Button3: TButton;
    RichEdit5: TRichEdit;
    Label28: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    rgpSlider: TRadioGroup;
    AdvToolButton15: TAdvToolButton;
    AdvToolButton16: TAdvToolButton;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    lblClash: TLabel;
    GroupBox2: TGroupBox;
    popModules: TPopupMenu;
    ChangeColour1: TMenuItem;
    EditLectures1: TMenuItem;
    N4: TMenuItem;
    Remove1: TMenuItem;
    cmbY: TComboBox;
    Label32: TLabel;
    Label33: TLabel;
    cmbS: TComboBox;
    Label34: TLabel;
    cmbL: TComboBox;
    btnUnlock: TSpeedButton;
    btnLock: TSpeedButton;
    AdvToolButton17: TAdvToolButton;
    AdvToolButton18: TAdvToolButton;
    N5: TMenuItem;
    Recommendtoafriend1: TMenuItem;
    Sendmessagetodevelopers1: TMenuItem;
    Label8: TLabel;
    edtTheURL: TEdit;
    Label35: TLabel;
    procedure cbbCurrentChange(Sender: TObject);
    procedure cbbGroupsChange(Sender: TObject);
    procedure sGridMainDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure btMainClick(Sender: TObject);
    procedure trcPermutationsChange(Sender: TObject);
    procedure bt2Click(Sender: TObject);
    procedure bt3Click(Sender: TObject);
    procedure bt4Click(Sender: TObject);
    procedure rgGroupsClick(Sender: TObject);
    procedure sGridAddSetEditText(Sender: TObject; ACol, ARow: Integer;
      const Value: String);
    procedure bt1Click(Sender: TObject);
    procedure Addnewmodulemanually1Click(Sender: TObject);
    procedure bt5Click(Sender: TObject);
    procedure rg1Click(Sender: TObject);
    procedure tmrTutorialTimer(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure utorial1Click(Sender: TObject);
    procedure tmrUsabilityTimer(Sender: TObject);
    procedure Exit1Click(Sender: TObject);
    procedure Fullscreen1Click(Sender: TObject);
    procedure btnLeaveClick(Sender: TObject);
    procedure sGridFullDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure trcFullChange(Sender: TObject);
    procedure tmrAddsTimer(Sender: TObject);
    procedure rbNewClick(Sender: TObject);
    procedure rbEditClick(Sender: TObject);
    procedure cbbNamesChange(Sender: TObject);
    procedure sGridAddDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure SaveModuleList1Click(Sender: TObject);
    procedure Openmodulelist1Click(Sender: TObject);
    procedure UpdateLoadmodulelist1Click(Sender: TObject);
    procedure Saveasexcel2Click(Sender: TObject);
    procedure Saveasimage2Click(Sender: TObject);
    procedure Regular1Click(Sender: TObject);
    procedure Filter1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btSendClick(Sender: TObject);
    procedure bt11Click(Sender: TObject);
    procedure btCancelClick(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure sGridMainSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure btnClearAllLocksClick(Sender: TObject);
    procedure btnPauseClick(Sender: TObject);
    procedure btnPlayClick(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure tmrpauseTimer(Sender: TObject);
    procedure bt8Click(Sender: TObject);
    procedure bt9Click(Sender: TObject);
    procedure bt10Click(Sender: TObject);
    procedure Standard1Click(Sender: TObject);
    procedure Latesleeper1Click(Sender: TObject);
    procedure Gohomeearly1Click(Sender: TObject);
    procedure Compact1Click(Sender: TObject);
    procedure Loose1Click(Sender: TObject);
    procedure SaveCurrentModules1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Open2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure lstColorsClick(Sender: TObject);
    procedure shpColorMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure btn7Click(Sender: TObject);
    procedure AdvToolButton1Click(Sender: TObject);
    procedure AdvToolButton2Click(Sender: TObject);
    procedure AdvToolButton3Click(Sender: TObject);
    procedure btnFilterClick(Sender: TObject);
    procedure btnClearFiltersClick(Sender: TObject);
    procedure AdvPanel1CaptionDBlClick(Sender: TObject);
    procedure AdvPanel1EndCollapsExpand(Sender: TObject);
    procedure btnAddClick(Sender: TObject);
    procedure cbbAddKeyPress(Sender: TObject; var Key: Char);
    procedure cbbAddKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure cbbAddKeyUp(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure AdvToolButton12Click(Sender: TObject);
    procedure AdvToolButton4Click(Sender: TObject);
    procedure AdvToolButton5Click(Sender: TObject);
    procedure AdvToolButton8Click(Sender: TObject);
    procedure AdvToolButton9Click(Sender: TObject);
    procedure AdvToolButton6Click(Sender: TObject);
    procedure AdvToolButton7Click(Sender: TObject);
    procedure AdvToolButton10Click(Sender: TObject);
    procedure lstModulesMouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure lstCurrentDragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure Wizard1Click(Sender: TObject);
    procedure lstCurrentDragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure lstCurrentClick(Sender: TObject);
    procedure cmbYear2Change(Sender: TObject);
    procedure cmbSem2Change(Sender: TObject);
    procedure AdvPanel2EndCollapsExpand(Sender: TObject);
    procedure btnFilter2Click(Sender: TObject);
    procedure btnClearFilters2Click(Sender: TObject);
    procedure btnAdd2Click(Sender: TObject);
    procedure AdvToolButton14Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure rgpSliderClick(Sender: TObject);
    procedure AdvToolButton15Click(Sender: TObject);
    procedure AdvToolButton16Click(Sender: TObject);
    procedure popModulesPopup(Sender: TObject);
    procedure ChangeColour1Click(Sender: TObject);
    procedure EditLectures1Click(Sender: TObject);
    procedure Remove1Click(Sender: TObject);
    procedure btnLockClick(Sender: TObject);
    procedure btnUnlockClick(Sender: TObject);
    procedure AdvToolButton17Click(Sender: TObject);
    procedure AdvToolButton18Click(Sender: TObject);
    procedure AdvToolButton17MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Sendmessagetodevelopers1Click(Sender: TObject);
    procedure Recommendtoafriend1Click(Sender: TObject);
    procedure Label35Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
  iSize = 100000;
  iMaxGroups = 40;
  iMaxRows = 28;
  iMaxModules = 10000;
  INTERNET_CONNECTION_MODEM = 1;
  INTERNET_CONNECTION_LAN = 2;
  INTERNET_CONNECTION_PROXY = 4;
  INTERNET_CONNECTION_MODEM_BUSY = 8;

var
  Form1: TForm1;
  moduleList: array[1..iMaxModules] of subject;
  arrCurrent: array[1..100] of subject;
  moduleCount: Integer;
  //arrTable: array[1..iSize,1..5,1..iMaxRows] of string;
  //arrValidTable: array[1..iSize,1..5,1..iMaxRows] of string;
  //arrValid: array[1..iSize] of Boolean;

  arrTable:array of array of array of string;
  arrClashTable:array of array of array of string;
  arrCCount:array of Integer;

  arrStrings: array[1..20] of string;
  arrColors: array[1..20] of TColor;

  arrAdd: array[1..iMaxGroups,1..5,1..iMaxRows] of string;
  colorCount: Integer;

  iTrulyValid: Integer;
  arrPosibleCount: Integer;
  arrClashCount:Integer;

  iTutStep:Integer;
  iAlgorithm:Integer;
  sLanguage:string;

  //Variables for the usability statistics
  iTime:Integer;
  iTotalClicks,iSelectNewModule,iSelectCurrent,iSelectGroups,iSelectTypes:Integer;
  iTimeModulesAdded,iTimeFull,iUserErrors,iRemoveModule,iHelp,iCustomModule:Integer;
  iSaves,iLoads,iTrack,iPause:Integer;
  sSave:string;

implementation

{$R *.dfm}

function cleanupGrid(sGridMain:TStringGrid):Boolean;
var
  iX,iY:Integer;
  iPos,iLeft,iRight:Integer;
begin
  for iX:=1 to 5 do
    for iY:=1 to iMaxRows do
    begin
      if Pos('$',sGridMain.Cells[iX, iY])>0 then
      begin
        //ShowMessage(sGridMain.Cells[iX, iY]);
        iPos:=Pos('$',sGridMain.Cells[iX, iY]);
        iRight:=Pos(')',sGridMain.Cells[iX, iY]);
        //sGridMain.Cells[iX, iY]:='';
      end;
    end;
end;

function isNumber(sNumber: string):boolean;
var
  icheck: integer;
  rNumber: double;
begin
    val(sNumber,rNumber,icheck);
    if icheck = 0 then isNumber:=true
    else isNumber:=false;
end;

function getNumber(sLyn:string):Integer;
var
  iPos,iNmr:Integer;
  sNmr,sA:string;
begin
  result:=-1;
  iNmr:=0;
  if Pos('Group ',sLyn)>0 then
  begin
    while ((Length(sLyn)>1) and (isNumber(Copy(sLyn,1,1))=false)) do
    begin
      Delete(sLyn,1,1);
    end;
    sNmr:=Copy(sLyn,1,Length(sLyn));
    //ShowMessage(sNmr);
    if isNumber(sNmr) then
      iNmr:=StrToInt(sNmr);
    Result:=iNmr;
  end else
  begin
    if ((Pos('S',sLyn)<1) AND (Pos('K',sLyn)<1)) then
    begin
      //ShowMessage('No S or K = '+IntToStr(iNmr));
      //sLyn:='G03';
      while ((Length(sLyn)>1) and (isNumber(Copy(sLyn,1,1))=false)) do
      begin
        Delete(sLyn,1,1);
      end;
      //ShowMessage('String without letters = '+sLyn);
      sNmr:=Copy(sLyn,1,1);

      if isNumber(sNmr) then
        iNmr:=10*StrToInt(sNmr);

      Delete(sLyn,1,1);
      sNmr:=Copy(sLyn,1,1);
      if isNumber(sNmr) then
        iNmr:=iNmr+StrToInt(sNmr);
      result:=iNmr;
      //ShowMessage('Number = '+IntToStr(iNmr));
    end else
    begin
      //ShowMessage('String = '+sLyn);
      sA:=Copy(sLyn,1,1);
      Delete(sLyn,1,1);

      sNmr:=Copy(sLyn,1,1);
      if isNumber(sNmr) then
        iNmr:=iNmr+StrToInt(sNmr);

      if sA = 'S' then
        result:=iNmr
      else if sA = 'K' then
      begin
        if ((iNmr = 1) OR (iNmr = 2))then
          result:=1
        else if ((iNmr = 3) OR (iNmr = 4))then
          result:=2;
      end;
    end;
  end;
end;

/////////////////COMEBACK
{function getIndexOfModule(_name:string;iYear,iSem:Integer):Integer;
var
  a: Integer;
begin
  Result := -1;
  for a:=1 to moduleCount do
  begin
    if (moduleList[a].sName = _name) AND (moduleList[a].iYear=iYear) AND (moduleList[a].iType=iSem) then
    begin
      Result := a;
      Break;
    end;
  end;
end;}

function getIndexOfModule(_name:string;year,sem:Integer):Integer;
var
  a: Integer;
begin
  Result := -1;
  for a:=1 to moduleCount do
  begin
    if (moduleList[a].sName = _name) AND (moduleList[a].iYear = year) AND (moduleList[a].iType = sem) then
    begin
      Result := a;
      Break;
    end;
  end;
end;

function addModule(name:string;year,sem:Integer):Boolean;
begin
  Inc(moduleCount);
  moduleList[moduleCount].sName:=name;
  moduleList[moduleCount].iYear:=year;
  moduleList[moduleCount].iType:=sem;
end;

function addGroup(iIndex:Integer;sLang:string):Boolean;
begin
  moduleList[iIndex].iGroupsNmr:=moduleList[iIndex].iGroupsNmr+1;
  //ShowMessage(IntToStr(moduleList[iIndex].iGroupsNmr));
  moduleList[iIndex].sLang[moduleList[iIndex].iGroupsNmr]:=sLang;
end;

function addClassToGroup(iIndex,iGroup,day,session:Integer;sVenue:string):Boolean;
begin
  moduleList[iIndex].sClasses[iGroup,day,session]:=sVenue;
  //ShowMessage(sVenue);
end;

function convertDay(sLyn:string):Integer;
var
  iIndex:Integer;
begin
  iIndex:=0;
  //ShowMessage(sLyn);
  if sLyn = 'Monday' then
    iIndex:=1
  else if sLyn = 'Tuesday' then
    iIndex:=2
  else if sLyn = 'Wednesday' then
    iIndex:=3
  else if sLyn = 'Thursday' then
    iIndex:=4
  else if sLyn = 'Friday' then
    iIndex:=5
  else
    iIndex:=-1;
  result:=iIndex;
end;

function convertTime(_from:string):Integer;
var
  iFrom:Integer;
begin
  result:=-1;
  if _from = '07:30:00' then
    iFrom:=1
  else if _from = '08:00:00' then
    iFrom:=2
  else if _from = '08:30:00' then
    iFrom:=3
  else if _from = '09:00:00' then
    iFrom:=4
  else if _from = '09:30:00' then
    iFrom:=5
  else if _from = '10:00:00' then
    iFrom:=6
  else if _from = '10:30:00' then
    iFrom:=7
  else if _from = '11:00:00' then
    iFrom:=8
  else if _from = '11:30:00' then
    iFrom:=9
  else if _from = '12:00:00' then
    iFrom:=10
  else if _from = '12:30:00' then
    iFrom:=11
  else if _from = '13:00:00' then
    iFrom:=12
  else if _from = '13:30:00' then
    iFrom:=13
  else if _from = '14:00:00' then
    iFrom:=14
  else if _from = '14:30:00' then
    iFrom:=15
  else if _from = '15:00:00' then
    iFrom:=16
  else if _from = '15:30:00' then
    iFrom:=17
  else if _from = '16:00:00' then
    iFrom:=18
  else if _from = '16:30:00' then
    iFrom:=19
  else if _from = '17:00:00' then
    iFrom:=20
  else if _from = '17:30:00' then
    iFrom:=21
  else if _from = '18:00:00' then
    iFrom:=22
  else if _from = '18:30:00' then
    iFrom:=23
  else if _from = '19:00:00' then
    iFrom:=24
  else if _from = '19:30:00' then
    iFrom:=25
  else if _from = '20:00:00' then
    iFrom:=26
  else if _from = '20:30:00' then
    iFrom:=27
  else if _from = '21:00:00' then
    iFrom:=28
  else if _from = '21:30:00' then
    iFrom:=29
  else if _from = '22:00:00' then
    iFrom:=-1
  else if _from = '22:30:00' then
    iFrom:=-1
  else if _from = '23:00:00' then
    iFrom:=-1
  else iFrom:=-1;
  result:=iFrom;
end;


function convertTimes(_from,_to:string;iFrom,iTo:Integer):Integer;
var
  iIndex:Integer;
begin
  iIndex:=0;
  result:=-1;
  //ShowMessage(sLyn);
  iFrom:=convertTime(_from);
  iTo:=convertTime(_to);
  //=====================================Later!!!
  result:=iTo-iFrom;
end;

function analyseString(sLyn:string;pbLoad:TProgressBar;iRgp:Integer):String;
var
  iPos:Integer;
  sName,sLine,sVenue,sLang,sCopy,sFrom,sTo,sCheck,sTest,sHold:string;
  iYear,iSem,iGroup,day,session,iFrom,iTo,iDuration,a:Integer;
  bCorrect:Boolean;
begin
  result:='';
  sCheck:='';
  bCorrect:=True;
  sLine:=sLyn;
  Delete(sLine,1,8);
  sLine:=StringReplace(sLine,'</td><td>','/',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'</td></tr>','',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'/Q1','',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'/Q2','',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'/Q3','',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'/Q4','',[rfReplaceAll]);
  sLine:=StringReplace(sLine,'/Y','',[rfReplaceAll]);
  sHold:=sLine;


  iPos:=Pos('/',sLine);
  if iPos>1 then
  begin
    //ShowMessage(IntToStr(iPos));
    sCopy:=Copy(sLine,1,iPos-1);
    if isNumber(sCopy) then
      iYear:=StrToInt(sCopy)
    else
      bCorrect:=False;
    sCheck:=sCheck+'Year= '+intToStr(iYear);
    Delete(sLine,1,iPos);
  end else
    bCorrect:=False;


  iPos:=Pos('/',sLine);
  if iPos>1 then
  begin
    sName:=Copy(sLine,1,iPos-1);
    Delete(sLine,1,iPos);
    sCheck:='Name= '+sName+ ', '+sCheck;
  end else
    bCorrect:=False;

  if (bCorrect=True) then
  begin
    iPos:=Pos('/',sLine);
    sCopy:=Copy(sLine,1,iPos-1);
    Delete(sLine,1,iPos);
    iGroup:=getNumber(sCopy);
    sCheck:=sCheck+', iGroup= '+intToStr(iGroup);
    if ((iGroup>iMaxGroups) AND (iRgp=3)) then
    begin
      while(iGroup>iMaxGroups) do
        iGroup:=iGroup-iMaxGroups;
    end else if (iGroup>iMaxGroups) then
    begin
      bCorrect:=False;
    end;

  end;

  iPos:=Pos('/',sLine);
  sLang:=Copy(sLine,1,iPos-1);
  Delete(sLine,1,iPos);

  iPos:=Pos('/',sLine);
  if Pos('T',Copy(sLine,1,iPos-1))>0 then
    sName:=sName+' T'
  else if Pos('P',Copy(sLine,1,iPos-1))>0 then
    sName:=sName+' P';
  Delete(sLine,1,iPos);

  if (bCorrect=True) then
  begin

    iPos:=Pos('/',sLine);
    sCopy:=Copy(sLine,1,iPos-1);
    Delete(sLine,1,iPos);

    iPos:=Pos('/',sLine);
    sTest:=Copy(sLine,1,iPos-1);

    if sTest=sCopy then
      Delete(sLine,1,iPos);

    iSem:=getNumber(sCopy);

    iPos:=Pos('/',sLine);
    sCopy:=Copy(sLine,1,iPos-1);
    day:=convertDay(sCopy);
    if day<1 then
      bCorrect:=False;

    Delete(sLine,1,iPos);
    iPos:=Pos('/',sLine);
    sFrom:=Copy(sLine,1,iPos-1);

    Delete(sLine,1,iPos);
    iPos:=Pos('/',sLine);
    sTo:=Copy(sLine,1,iPos-1);

    iDuration:=convertTimes(sFrom,sTo,iFrom,iTo);
    iFrom:=convertTime(sFrom);
    iTo:=convertTime(sTo);

    if ((iDuration<0) or (iFrom<0) or (iTo<0)) then
      bCorrect:=False;

    Delete(sLine,1,iPos);
    sVenue:=sLine;
  end;
  
  //if bCorrect = False then
  //  ShowMessage('Found false at: '+sLyn);
  {ShowMessage('iYear: '+intToStr(iYear)+#10+
              'sName: '+sName+#10+
              'iGroup: '+intToStr(iGroup)+#10+
              'sLang: '+sLang+#10+
              'iSem: '+intToStr(iSem)+#10+
              'iDay: '+intToStr(day)+#10+
              'sFrom: '+sFrom+#10+
              'sTo: '+sTo+#10+
              'iFrom: '+intToStr(iFrom)+#10+
              'iTo: '+intToStr(iTo)+#10+
              'iDuration: '+intToStr(iDuration)+#10+
              'sVenue: '+sVenue+#10
              );} 

  if bCorrect = True then
  begin
        iPos:=getIndexOfModule(sName,iYear,iSem);
        if (iPos<1) then
        begin
          addModule(sName,iYear,iSem);
        end;
        iPos:=getIndexOfModule(sName,iYear,iSem);
        if (iPos>0) then
        begin
          //found module
          //See if group exists
          if Length(moduleList[iPos].sLang[iGroup])<1 then
          begin
            //Group doesn't exist so create.
            moduleList[iPos].sLang[iGroup]:=sLang;
            Inc(moduleList[iPos].iGroupsNmr);
          end;
          //Add the class
          for a:=0 to iDuration-1 do
          begin
            moduleList[iPos].sClasses[iGroup,day,iFrom+a]:=sVenue;
          end;
        end;
      //red1.Lines.Add(sHold);
  end else
  begin
    iTo:=0;
    iFrom:=Pos('/',sHold);
    iPos:=Pos(' ',sHold);
    sLyn:=sHold;

    while ((Length(sHold)>0) and ((iFrom+1)<iPos)) do
    begin
      Delete(sHold,1,iFrom);
      iFrom:=Pos('/',sHold);
    end;
    if ((Length(sHold)>1) and (Pos('/',sHold)>1)) then
    begin
      iFrom:=Pos('/',sHold);
      sHold:=Copy(sHold,1,iFrom-1);
    end else
      sHold:='Module name not found';

    result:=sHold+#10;
  end;
  pbLoad.Position:=pbLoad.Position+1;
end;



function updateStats():Boolean;
var
  filename,sLyn:string;
  myLer:TextFile;
begin
  if ((iLoads>iTrack) or (Length(sSave)=0)) then
  begin
    sSave:= 'stats_'+intToStr(iLoads)+'_'+intToStr(iTime)+'.txt';
    iTrack:=iLoads;
  end;
  filename := sSave;
  assignFile(myLer,filename);
  rewrite(myler);
  sLyn:='';
  writeln(myLer,sLyn);
  sLyn:='===User statistics for the Timetable generator===';
  writeln(myLer,sLyn);
  sLyn:='Total clicks:'+#9+#9+#9+intToStr(iTotalClicks);
  writeln(myLer,sLyn);
  sLyn:='User errors:'+#9+#9+#9+intToStr(iUserErrors);
  writeln(myLer,sLyn);
  sLyn:='Times assisted:'+#9+#9+#9+intToStr(iHelp);
  writeln(myLer,sLyn);
  sLyn:='';
  writeln(myLer,sLyn);
  sLyn:='Modules added:'+#9+#9+#9+intToStr(iSelectNewModule);
  writeln(myLer,sLyn);
  sLyn:='Custom modules added:'+#9+#9+intToStr(iCustomModule);
  writeln(myLer,sLyn);
  sLyn:='Modules removed:'+#9+#9+intToStr(iRemoveModule);
  writeln(myLer,sLyn);
  sLyn:='';
  writeln(myLer,sLyn);
  sLyn:='Modules viewed:'+#9+#9+#9+intToStr(iSelectCurrent);
  writeln(myLer,sLyn);
  sLyn:='Groups viewed:'+#9+#9+#9+intToStr(iSelectGroups);
  writeln(myLer,sLyn);
  sLyn:='Timetable types viewed:'+#9+#9+intToStr(iSelectTypes);
  writeln(myLer,sLyn);
  sLyn:='';
  writeln(myLer,sLyn);
  sLyn:='Files Loaded:'+#9+#9+#9+intToStr(iLoads);
  writeln(myLer,sLyn);
  sLyn:='Files saved:'+#9+#9+#9+intToStr(iSaves);
  writeln(myLer,sLyn);

  sLyn:='';
  writeln(myLer,sLyn);
  sLyn:='==Time statistics==';
  writeln(myLer,sLyn);
  sLyn:='Time taken to add modules:'+#9+FloatToStr(iTimeModulesAdded/60)+'min';
  writeln(myLer,sLyn);
  sLyn:='Full time:'+#9+#9+#9+FloatToStr(iTimeFull/60)+'min';
  writeln(myLer,sLyn);
  closefile(myler);
  result:= True;
end;

function chooseType(grid:TStringGrid;option:Integer;pbGenerate:TProgressBar):Boolean; //1 late sleeper, 2 home early
var
  iDay,iPeriod,iDay1,iPeriod1,iPermutations,iCheck,iCountBase,iCountCompare,a,b,iCountSpaces:Integer;
  arrTemp: array[1..5,1..iMaxRows] of string;
  prev:Boolean;
  iPosition:Integer;
  rStep:Double;
begin
  if option=0 then
    pbGenerate.Position:=100;
  pbGenerate.max:=arrPosibleCount;
  pbGenerate.Visible:=True;
  pbGenerate.Position:=1;
  if ((option = 1) or (option = 2)) then
  begin
    for iPermutations:=0 to arrPosibleCount-1 do
    begin
      pbGenerate.Position:=pbGenerate.Position+1;
      iCountBase:=0;
      for iDay:=1 to 5 do
      begin
        for iPeriod:=1 to iMaxRows do
        begin
          if Length(arrTable[iPermutations,iDay-1,iPeriod-1])=0 then
          begin
            iCountBase:=iCountBase+iPeriod;
          end;
        end;
      end;
      for iCheck:=iPermutations+1 to arrPosibleCount-1 do
      begin
        iCountCompare:=0;
        for iDay1:=1 to 5 do
          for iPeriod1:=1 to iMaxRows do
          begin
            if Length(arrTable[iCheck,iDay1-1,iPeriod1-1])=0 then
            begin
              iCountCompare:=iCountCompare+iPeriod1;
            end;
          end;
          if option=1 then //Compare
          begin
            a:=iCountCompare;
            b:=iCountBase;
          end else if option=2 then
          begin
            b:=iCountCompare;
            a:=iCountBase;
          end;
          if (a<b) then
          begin
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTemp[iDay,iPeriod]:=arrTable[iPermutations,iDay-1,iPeriod-1];
              end;
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTable[iPermutations,iDay-1,iPeriod-1]:=arrTable[iCheck,iDay-1,iPeriod-1];
              end;
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTable[iCheck,iDay-1,iPeriod-1]:=arrTemp[iDay,iPeriod];
              end;
          end;
      end;
    end;
  end else if ((option=3) or (option=4)) then
  begin       //For compact timetable
    for iPermutations:=1 to arrPosibleCount do
    begin
      iCountBase:=1;
      for iDay:=1 to 5 do
      begin
        prev := False;
        iCountSpaces:=0;
        for iPeriod:=1 to iMaxRows do
        begin
          if Length(arrTable[iPermutations,iDay,iPeriod])>0 then
          begin
            if prev = True then
              iCountBase:=iCountBase+2;
            iCountBase:=iCountBase-iCountSpaces;
            iCountSpaces:=0;
            prev := True;
          end else
          begin
            if prev = False then
              iCountSpaces:=iCountSpaces+2;
            prev:=False;
            iCountBase:=iCountBase-2;
          end;
        end;
      end;
      for iCheck:=iPermutations+1 to arrPosibleCount+1 do
      begin
        iCountCompare:=1;
        for iDay1:=1 to 5 do
        begin
          iCountSpaces:=0;
          prev := False;
          for iPeriod1:=1 to iMaxRows do
          begin
            if Length(arrTable[iCheck,iDay1,iPeriod1])>0 then
            begin
              if prev = True then
                iCountCompare:=iCountCompare+2;
              iCountCompare:=iCountCompare-iCountSpaces;
              iCountSpaces:=0;
              prev := True;
            end else
            begin
              if prev = False then
                iCountSpaces:=iCountSpaces+2;
              prev:=False;
              iCountCompare:=iCountCompare-2;
            end;
          end;
          
          if option=3 then //Compare
          begin
            a:=iCountCompare;
            b:=iCountBase;
          end else if option=4 then
          begin
            b:=iCountCompare;
            a:=iCountBase;
          end;
          if (a<b) then
          begin
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTemp[iDay,iPeriod]:=arrTable[iPermutations,iDay,iPeriod];
              end;
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTable[iPermutations,iDay,iPeriod]:=arrTable[iCheck,iDay,iPeriod];
              end;
            for iDay:=1 to 5 do
              for iPeriod:=1 to iMaxRows do
              begin
                arrTable[iCheck,iDay,iPeriod]:=arrTemp[iDay,iPeriod];
              end;
          end;
          //ShowMessage('Base count for '+ IntToStr(iPermutations)+' = '+intToStr(iCountBase)+' , compared to ' + IntToStr(iCheck)+' of '+ IntToStr(iCountCompare));
        end;
      end;
    end;
  end;
end;

function clearGrid(grid:TStringGrid):Boolean;
var
  day,period: Integer;
begin
  for day:=1 to 5 do
    for period:=1 to iMaxRows do
    begin
      if Pos('*',grid.Cells[day,period])<1 then
        grid.Cells[day,period] := '';
    end;
  result:=True;
end;


function getFile(cbbAdd:TCombobox;filename:String):Boolean;
var
  a,b,c,d,group,day,period,iPos: Integer;
  sLyn,venue: string;
  myLer: TextFile;
Begin
  for a:=1 to iMaxModules do
  begin
    moduleList[a].sName:='';
    moduleList[a].iGroupsNmr:=0;
    moduleList[a].iType:=0;
    moduleList[a].iYear:=0;
    moduleList[a].iLock:=0;
    for b:=1 to iMaxGroups do
    begin
      moduleList[a].sLang[b]:='';
      for c:=1 to 5 do
      begin
        for d:=1 to iMaxRows do
        begin
          moduleList[a].sClasses[b,c,d]:='';
        end;
      end;
    end;
  end;
  moduleCount:=0;
  if FileExists(filename) then
  begin
    assignFile(myLer,filename);
    reset(myler);
    while NOT Eof(myLer) do
    begin
      Readln(myLer,sLyn);
      if (Copy(sLyn,0,1)='@') then
      begin
        moduleCount := moduleCount+1;
        iPos:=Pos(',',sLyn);
        moduleList[moduleCount].sName:=Copy(sLyn,2,iPos-2);
        Delete(sLyn,1,iPos);
        iPos:=Pos(',',sLyn);
        moduleList[moduleCount].iYear:=StrToInt(Copy(sLyn,1,iPos-1));
        Delete(sLyn,1,iPos);
        iPos:=Pos(',',sLyn);
        moduleList[moduleCount].iType:=StrToInt(Copy(sLyn,1,iPos-1));
        Delete(sLyn,1,iPos);
        group:=0;
      end else if (Copy(sLyn,0,1)='#') then
      begin
        moduleList[moduleCount].iGroupsNmr:=moduleList[moduleCount].iGroupsNmr+1;
        group:=group+1;
        iPos:=Pos(',',sLyn);
        moduleList[moduleCount].sLang[group]:=Copy(sLyn,iPos+1,Length(sLyn));
      end else
      begin
        d:=Pos(',',sLyn);
        day:=StrToInt(Copy(sLyn,0,d-1));
        Delete(sLyn,1,d);
        d:=Pos(',',sLyn);
        period:=StrToInt(Copy(sLyn,0,d-1));
        venue:=Copy(sLyn,d+1,Length(sLyn));
        moduleList[moduleCount].sClasses[group,day,period]:=moduleList[moduleCount].sName + ' ('+venue+')';
      end;
    end;
    closefile(myler);
    for a:=1 to moduleCount do
    begin
      cbbAdd.Items.AddObject(moduleList[a].sName,TObject(a));
      //cbbAdd.Items.Add(moduleList[a].sName);
    end;
  end else
    MessageDlg('File not found',mtError,[mbOK],0);
end;

function CountFiles : integer;
var
	Rec : TSearchRec;
	nFileCount : integer;
	foo : string;
begin
	nFileCount := 0;
	if FindFirst('advertisements/*.jpg', faAnyFile, Rec) = 0 then
	begin
		repeat
			// Exclude directories from the list of files.
			if ((Rec.Attr and faDirectory) <> faDirectory) then
				Inc(nFileCount);
		until FindNext(Rec) <> 0;
		FindClose(Rec);
	end;
	Result := nFileCount;
end;

procedure TForm1.cbbAddKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
SystemParametersInfo(SPI_SETBEEP, 0, nil, SPIF_SENDWININICHANGE);
  if GetKeyState(Key)=GetKeyState(13) then
  begin
    btnAddClick(Sender);
    //KeyPress(Key);
    //Key := null;
    key:=GetKeyState(08); // Make key NIL so no bee
  end;
end;

procedure TForm1.cbbAddKeyPress(Sender: TObject; var Key: Char);
begin
  //if Key='13' then
  //  btnAddClick(Sender);
end;

procedure TForm1.cbbAddKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    SystemParametersInfo(SPI_SETBEEP, 1, nil, SPIF_SENDWININICHANGE);
end;

procedure TForm1.cbbCurrentChange(Sender: TObject);
var
  index,a: Integer;
begin
  if cbbCurrent.ItemIndex>-1 then
  begin

    //index := getIndexOfModule(cbbCurrent.Items.Strings[cbbCurrent.itemindex]);
    index := Integer(cbbCurrent.Items.Objects[cbbCurrent.itemindex]);
    //ShowMessage(intToStr(index));
    if index>-1 then
    begin
      //Subject found. Now add groups
      lblYear.Caption:=IntToStr(moduleList[index].iYear);
      if moduleList[index].iType>0 then
        lblSemester.Caption:=IntToStr(moduleList[index].iType)
      else
        lblSemester.Caption:='Year';
      lblName.Caption:=moduleList[index].sName;
      cbbGroups.Clear;
      for a:=1 to iMaxGroups do
      begin
        if (Length(moduleList[index].sLang[a])>0) then
        begin
          cbbGroups.Items.Add('Group '+intToStr(a));
        end;
      end;
      if cbbGroups.Items.Count>0 then
      begin
        if moduleList[index].iLock<1 then
        begin
          cbbGroups.Visible:=True;
          btnLock.Visible:=True;
          cbbGroups.ItemIndex := 0;
        end else
        begin
          cbbGroups.Visible:=False;
          btnLock.Visible:=False;
          cbbGroups.ItemIndex :=moduleList[index].iLock;
        end;
        cbbGroupsChange(Sender);
      end;
    end;
  end;
end;

procedure TForm1.cbbGroupsChange(Sender: TObject);
var
  index,day,period,iGroup: Integer;
begin
  if cbbGroups.ItemIndex>-1 then
  begin
    iGroup:=getNumber(cbbGroups.Items.Strings[cbbGroups.ItemIndex]);
    //ShowMessage('Group: '+cbbGroups.Items.Strings[cbbGroups.ItemIndex]+': '+IntToStr(iGroup));
    index := Integer(cbbCurrent.Items.Objects[cbbCurrent.itemindex]);
    //ShowMessage(IntToStr(index));
    if ((index>-1) and (iGroup>0)) then
    begin
      //Subject and group found. Show classes on grid
      lblLanguage.Caption:=moduleList[index].sLang[iGroup];
      clearGrid(sGridMain);
      clearGrid(sGridFull);
      for day:=1 to 5 do
      begin
        for period:=1 to iMaxRows do
        begin
          if Length(moduleList[index].sClasses[iGroup][day][period])>0 then
          begin
            sGridMain.Cells[day,period] := moduleList[index].sClasses[iGroup][day][period];
          end;
        end;
      end;
      cleanupGrid(sGridMain);

      if iTutStep = 4 then
      begin
        iTutStep:=5;
        shpGroups.Visible:=False;
      end;
    end;
  end;
end;




procedure TForm1.sGridMainDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
S : string;
iTel: Integer;
color: TColor;
found: Boolean;
Bmp:  TBitmap;
CellText: string;
R: TRect;
const
  L_PAD = 0;  // Amount between right side of image and start of text
  T_PAD = 0;   // Amount between top of cell and top of text
begin
  if ((Length(sGridMain.Cells[acol,arow])>0) AND (ACol>0) AND (ARow>0)) then
  begin
    //ShowMessage(sGridMain.Cells[acol,arow]);
    for iTel:=1 to colorCount do
    begin
      if Pos(arrStrings[iTel],sGridMain.Cells[ACol, ARow]) >0 then
      begin
          sGridMain.Canvas.Brush.Color := arrcolors[iTel];
          sGridMain.Canvas.FillRect(Rect);
          S := sGridMain.Cells[ACol, ARow];
          sGridMain.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
      end;
    end;
    sGridFull.Cells[ACol,ARow]:=sGridMain.Cells[ACol, ARow];
  end else if ((ACol>0) AND (ARow>0)) then
  begin
    if (Trunc((ARow-1)/2) mod 2) = 1 then
    begin
      sGridMain.Canvas.Brush.Color := cl3DLight;
      sGridMain.Canvas.FillRect(Rect);
    end else
    begin
      sGridMain.Canvas.Brush.Color := clInfoBk;
      sGridMain.Canvas.Pen.Color := clRed;
      sGridMain.Canvas.FillRect(Rect);
    end;
  end;

  {if ((ACol > 0) AND (ARow > 0)) then
  begin
    Bmp := TBitmap.Create;
    try
      if Pos('*',sGridMain.Cells[ACol,ARow])>0 then
      begin
        Bmp.Assign(imgLock.Picture);
        sGridMain.Canvas.TextOut(Rect.Left + L_PAD,Rect.Top + L_PAD,CellText);
        R.Top := Rect.Top + 1;
        R.Left := Rect.Right - Bmp.Width;
        R.Right := Rect.Right - 3;
        R.Bottom := R.Top + L_PAD + Bmp.Height -2;
        sGridMain.Canvas.StretchDraw(R, Bmp);
        //S := sGridMain.Cells[ACol, ARow];
        //ShowMessage(S);
        //sGridMain.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
      end;
    finally
      Bmp.Free;
    end;
  end;    }
  end;

function getCorrectTable(sGrid:TStringGrid;trc:TTrackBar;lblCurrent,lblTotal:TLabel;pbGenerate:TProgressBar;option:Integer;trcFull:TTrackBar):Boolean;
//var
  {iTel,iDay,iPeriod,iValid,iSuper,z,x,b,a:Integer;
  stringA,stringB:string;
  iPosition:Integer;
  rStep,rBy:Double; }
begin
  {iPosition:=Round(100/20);
  clearGrid(sGrid);
  //clear arrValidTable
  for iTel:=1 to iAlgorithm do
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
      begin
            arrValidTable[iTel,iDay,iPeriod]:='';
      end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;
  //count valid arrays and put in arrValidTable    
  iValid:=0;
  for iTel:=1 to iAlgorithm do
  begin
    if (arrValid[iTel] = True) then
    begin
      iValid:=iValid+1;
      for iDay:=1 to 5 do
        for iPeriod:=1 to iMaxRows do
        begin
              arrValidTable[iValid,iDay,iPeriod]:=arrTable[iTel,iDay,iPeriod];
        end;
    end;
  end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;
  for iTel:=1 to iValid do
    arrValid[iTel]:=True;

  //clear arrTable
  for iTel:=1 to iAlgorithm do
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
      begin
            arrTable[iTel,iDay,iPeriod]:='';
      end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;
  //Get rid of duplicates in arrValidTable, set in arrTable
  rStep:=pbGenerate.Position;
  if (iValid=0) then
    rBy:=0
  else
    rBy:=(100-rStep)/iValid;
  for a:=1 to iValid-1 do
  begin
    rStep:=rStep+rBy;
    pbGenerate.Position:=Round(rStep);
    stringA:='';
    for z:=1 to 5 do
      for x:=1 to iMaxRows do
      begin
        stringA:=stringA+arrValidTable[a,z,x];
      end;
    for b:=a+1 to iValid do
    begin
      if arrValid[b] = True then
      begin
        stringB:='';
        for iDay:=1 to 5 do
        begin
          for iPeriod:=1 to iMaxRows do
          begin
            stringB:=stringB+arrValidTable[b,iDay,iPeriod];
          end;
        end;
        if CompareStr(stringA,stringB) = 0 then
        begin
          arrValid[b]:=False;
        end;
      end;
    end;
  end;

  iSuper:=0;
  for a:=1 to iValid do
  begin
    if arrValid[a] = True then
    begin
      iSuper:=iSuper+1;
      for iDay:=1 to 5 do
        for iPeriod:=1 to iMaxRows do
        begin
          arrTable[iSuper,iDay,iPeriod] := arrValidTable[a,iDay,iPeriod];
        end;
    end;
  end;
  arrPosibleCount:=iSuper-1;
  trc.Max:=arrPosibleCount;
  trcFull.Max:=arrPosibleCount;
  lblCurrent.Caption:=IntToStr(1);
  lblTotal.Caption:=IntToStr(arrPosibleCount+1);
  trc.Position:=0;
  trcFull.Position:=0;
  if arrPosibleCount=0 then
  begin
    MessageDlg('Not one permutation exists without a clash'+#10+#10+'Please remove a module and try again'+#10+'Or consult your faculty',mtInformation,[mbOK],0);
  end;}
end;



procedure TForm1.btMainClick(Sender: TObject);
{var
  iCount,a,b,iIndex,iPermutations,c,iBounds: Integer;
  iGroup,iSubject,iDay,iPeriod,z,x,iValid: Integer;

  check,placed: Boolean;
  arrMoves: array[1..iSize] of Integer;

  stringA,stringB: string;
  iPosition:Integer; }
begin
{  iPosition:=Round(100/30);
  Screen.Cursor:=crHourglass;
  pbGenerate.Visible:=True;
  pbGenerate.position:=0;
  clearGrid(sGridMain);
  clearGrid(sGridFull);
  iCount := 0;
  for a:=0 to cbbCurrent.Items.Count-1 do
  begin
    iIndex := Integer(cbbCurrent.Items.Objects[a]);
    if iIndex>-1 then
    begin
      iCount := iCount+1;//Number of subjects chosen
      arrCurrent[iCount] := moduleList[iIndex];
    end;
  end;

  iPermutations:=iAlgorithm;
  {for a:=1 to iCount do
  begin
    //ShowMessage(IntToStr(arrCurrent[a].iGroupsNmr));
    iPermutations:=iPermutations*arrCurrent[a].iGroupsNmr;
  end; }

  {iGroup:=1;
  iSubject:=1;


  for iSubject:=1 to iCount do
  begin
    arrMoves[iSubject]:=arrCurrent[iSubject].iGroupsNmr;
  end;

  for a:=1 to iAlgorithm do
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
      begin
            arrTable[a,iDay,iPeriod]:='';
      end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;

  for a:=1 to iAlgorithm do
  begin
    arrValid[a]:=False;
  end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;
  
  a:=1;
  while (a<iAlgorithm) do
  begin
    check:=True;
    for iSubject:=1 to iCount do
    begin
      Randomize;
      iGroup := 1 + Random(iMaxGroups);
      while (Length(arrCurrent[iSubject].sLang[iGroup])<1) do
      begin
        Inc(iGroup);
        if (iGroup = iMaxGroups+1) then
          iGroup:=1;
      end;
      for iDay:=1 to 5 do
        for iPeriod:=1 to iMaxRows do
        begin
          if Length(arrCurrent[iSubject].sClasses[iGroup,iDay,iPeriod])>0 then
          begin
            if Length(arrTable[a,iDay,iPeriod])>0 then
            begin
              check:=False;
            end else
              arrTable[a,iDay,iPeriod]:=arrCurrent[iSubject].sClasses[iGroup,iDay,iPeriod];
          end;
          if Pos('*',sGridMain.Cells[iDay,iPeriod])>0 then
            arrTable[a,iDay,iPeriod]:=sGridMain.Cells[iDay,iPeriod];
        end;
    end;
    if check = True then
      arrValid[a]:=True;
    Inc(a);
  end;
  pbGenerate.Position:=pbGenerate.Position+iPosition;
  getCorrectTable(sGridMain,trcPermutations,lblindex,lblTotal,pbGenerate,rg1.ItemIndex,trcFull);
  trcPermutationsChange(Sender);
  if iTutStep = 5 then
  begin
    iTutStep:=1;
    shpCurrent.Visible:=False;
    tmrTutorial.Enabled:=False;
    MessageDlg('You have completed the tutorial'+#10+#10+'Please click on the ''i'' icons if you'+#10+'have any other queries',mtInformation,[mbOK],0);
  end;

  pbGenerate.Visible:=False;
  Screen.Cursor:=crDefault;
  //pnlWaitAdd.Visible:=False;  }
end;

procedure TForm1.trcPermutationsChange(Sender: TObject);
var
  iIndex,iDay,iPeriod: Integer;
begin
  if rgpSlider.ItemIndex=0 then
  begin
    iIndex:=trcPermutations.Position;
    lblindex.Caption:=IntToStr(iIndex+1);
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
      begin
        sGridMain.cells[iDay,iPeriod]:=arrTable[iIndex,iDay-1,iPeriod-1];
        sGridFull.cells[iDay,iPeriod]:=arrTable[iIndex,iDay-1,iPeriod-1];
      end;
  end else
  begin
    iIndex:=trcPermutations.Position;
    lblindex.Caption:=IntToStr(iIndex+1);
    lblClash.Caption:=IntToSTr(arrCCount[arrPosibleCount+iIndex+1]);
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
      begin
        sGridMain.cells[iDay,iPeriod]:=arrTable[arrPosibleCount+iIndex+1,iDay-1,iPeriod-1];
        sGridFull.cells[iDay,iPeriod]:=arrTable[arrPosibleCount+iIndex+1,iDay-1,iPeriod-1];
      end;
  end;

end;

procedure TForm1.bt2Click(Sender: TObject);
begin
  pnlAddModule.Visible:=False;
  clearGrid(sGridAdd);
end;

procedure TForm1.bt3Click(Sender: TObject);
begin
  rgGroups.Items.Add('Group '+intToStr(rgGroups.Items.count+1));
  rgGroups.ItemIndex:=rgGroups.Items.Count-1;
  if rgGroups.Items.count>0 then
  begin
    rgGroupsClick(Sender);
  end;
end;

procedure TForm1.bt4Click(Sender: TObject);
begin
  if rgGroups.Items.count>0 then
  begin
    rgGroups.Items.Delete(rgGroups.Items.Count-1);
    rgGroupsClick(Sender);
  end;

end;

procedure TForm1.rgGroupsClick(Sender: TObject);
var
  iTel,iDay,iPeriod,iIndex:Integer;
begin
  clearGrid(sGridAdd);
  if rbNew.Checked = True then
  begin
    for iDay:=1 to 5 do
      for iPeriod:=1 to iMaxRows do
        sGridAdd.Cells[iDay,iPeriod]:=arrAdd[rgGroups.itemindex+1,iDay,iPeriod];
  end else
  begin
    iIndex := Integer(cbbNames.Items.Objects[cbbNames.Itemindex]);
    if iIndex>0 then
    begin
      for iDay:=1 to 5 do
        for iPeriod:=1 to iMaxRows do
          sGridAdd.Cells[iDay,iPeriod]:=moduleList[iIndex].sClasses[strToInt(rgGroups.Items.Strings[rgGroups.itemindex]),iDay,iPeriod];
    end;
  end;


end;

procedure TForm1.rgpSliderClick(Sender: TObject);
begin
  if (arrPosibleCount<0) AND (arrClashCount<0) then
  begin
    Messagedlg('Please generate timetable first',mtInformation,[mbOK],0);
  end else
  begin
    if rgpSlider.ItemIndex=0 then
    begin
      if arrPosibleCount>-1 then
      begin
        trcPermutations.Position:=0;
        trcPermutations.Max:=arrPosibleCount;
        lblTotal.Caption:=IntToStr(arrPosibleCount+1);
        trcPermutationsChange(Sender);
      end else
      begin
        Messagedlg('There are no timetable combinations without clashes'+#10+
                   'Look at the timetables with clashes',mtInformation,[mbOK],0);
        rgpSlider.ItemIndex:=1;
        rgpSliderClick(Sender);
      end;
    end else
    begin
      if arrClashCount>-1 then
      begin
        trcPermutations.Position:=0;
        trcPermutations.Max:=arrClashCount;
        lblTotal.Caption:=IntToStr(arrClashCount+1);
        trcPermutationsChange(Sender);
      end else
      begin
        Messagedlg('There are no timetable combinations with clashes'+#10+
                   'Look at the timetables without clashes',mtInformation,[mbOK],0);
        rgpSlider.ItemIndex:=0;
        rgpSliderClick(Sender);
      end;
    end;
  end;
end;

procedure TForm1.sGridAddSetEditText(Sender: TObject; ACol, ARow: Integer;
  const Value: String);
var
  iIndex:Integer;
begin
    if rbNew.Checked=True then
    begin
      arrAdd[rgGroups.ItemIndex+1,ACol,ARow]:=sGridAdd.Cells[ACol,ARow];
    end else
    begin
      //iIndex:=getIndexOfModule(cbbNames.Items.Strings[cbbNames.Itemindex]);
      iIndex := Integer(cbbNames.Items.Objects[cbbNames.Itemindex]);
      if iIndex>0 then
      begin
        moduleList[iIndex].sClasses[strToInt(rgGroups.Items.Strings[rgGroups.itemindex]),ACol,ARow]:=cbbNames.Items.Strings[cbbNames.Itemindex]+' ('+sGridAdd.Cells[ACol,ARow]+')';
      end;
    end;
end;

procedure TForm1.bt1Click(Sender: TObject);
var
  a,iDay,iPeriod: Integer;
begin
  Inc(iTotalClicks);
  if Length(edtModuleName.Text)>0 then
  begin
    If rgGroups.Items.Count>0 then
    begin
        moduleCount := moduleCount+1;
        moduleList[moduleCount].sName:=edtModuleName.Text;
        moduleList[moduleCount].iYear:=cmbY.ItemIndex+1;
        ShowMessage(intToSTr(cmbS.ItemIndex));
        moduleList[moduleCount].iType:=cmbS.ItemIndex;
        for a:=1 to rgGroups.Items.Count do
        begin
          moduleList[moduleCount].iGroupsNmr:=moduleList[moduleCount].iGroupsNmr+1;
          moduleList[moduleCount].sLang[a]:='B';
          for iDay:=1 to 5 do
          begin
            for iPeriod:=1 to iMaxRows do
            begin
              if Length(arrAdd[a,iDay,iPeriod])>0 then
              begin
                moduleList[moduleCount].sClasses[a,iDay,iPeriod]:=moduleList[moduleCount].sName + ' ('+arrAdd[a,iDay,iPeriod]+')';
              end;
            end;
          end;
        end;
        cbbAdd.Items.AddObject(edtModuleName.Text,TObject(Integer(moduleCount)));
        pnlAddModule.Visible:=False;
        Inc(iCustomModule);

    end else
    begin
      MessageDlg('Please add a group for the module',mtError,[mbOK],0);
      Inc(iUserErrors);
    end;
  end else begin
    MessageDlg('Please insert the name of the module',mtError,[mbOK],0);
    Inc(iUserErrors);
  end;
end;

procedure TForm1.Addnewmodulemanually1Click(Sender: TObject);
begin
  pnlAddModule.Visible:=True;
  pnlAddModule.Align:=alClient;
  pnlAddModule.BringToFront;
end;

procedure TForm1.bt5Click(Sender: TObject);
var
  index,iResult: Integer;
begin
  if cbbCurrent.ItemIndex>-1 then
  begin
    iResult:=MessageDlg('Are you sure you want to remove '''+cbbCurrent.Items.Strings[cbbCurrent.itemindex]+'''',mtWarning,mbOKCancel,0);
    if iResult<2 then
    begin
      cbbCurrent.Items.Delete(cbbCurrent.itemindex);
      if cbbCurrent.Items.count>0 then
      begin
        cbbCurrent.ItemIndex:=cbbCurrent.Items.Count-1;
        cbbCurrentChange(Sender);
      end else
      begin
        cbbGroups.ItemIndex:=-1;
        cbbGroups.Clear;
        clearGrid(sGridMain);
        clearGrid(sGridFull);
      end;
      Inc(iRemoveModule);
      Inc(iTotalClicks);
    end;
  end else
  begin
    MessageDlg('You have to select a module to delete', mtInformation,[mbOK],0);
    Inc(iTotalClicks);
  end;
end;

procedure TForm1.rg1Click(Sender: TObject);
begin
  chooseType(sGridMain,rg1.ItemIndex,pbGenerate);
  pbGenerate.Visible:=false;
  pbGenerate.Position:=0;

  trcPermutations.Position:=0;
  //trcFull.Position:=0;
  trcPermutationsChange(Sender);
end;

procedure TForm1.tmrTutorialTimer(Sender: TObject);
begin


  if iTutStep = 1 then
  begin
    if shpAddModule.Visible = False then
      shpAddModule.Visible:=True;
    if shpAddModule.Brush.Color = clLime then
      shpAddModule.Brush.Color := clWhite
    else
      shpAddModule.Brush.Color := clLime
  end else if iTutStep = 2 then
  begin
    if shpAddModule.Visible = False then
      shpAddModule.Visible:=True;
    if shpAddModule.Brush.Color = clLime then
      shpAddModule.Brush.Color := clWhite
    else
      shpAddModule.Brush.Color := clLime
  end else if iTutStep = 3 then
  begin
    if shpCurrent.Visible = False then
      shpCurrent.Visible:=True;
    if shpCurrent.Brush.Color = clLime then
      shpCurrent.Brush.Color := clWhite
    else
      shpCurrent.Brush.Color := clLime
  end else if iTutStep = 4 then
  begin
    if shpGroups.Visible = False then
      shpGroups.Visible:=True;
    if shpGroups.Brush.Color = clLime then
      shpGroups.Brush.Color := clWhite
    else
      shpGroups.Brush.Color := clLime
  end else if iTutStep = 5 then
  begin
    if shpFinal.Visible = False then
      shpFinal.Visible := True;
    if shpFinal.Brush.Color = clLime then
      shpFinal.Brush.Color := clWhite
    else
      shpFinal.Brush.Color := clLime
  end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
  MessageDlg('Choosing the type of timetable:'+#10+#10+
              'Standard           - This is the default and it will generate the list randomly'+#10+
              'Late Sleeper      - Sorts the list by the latest groups'+#10+
              'Go home early - Sorts the list by the earliest groups'+#10+
              'Compact          - Has the least time between classes'+#10+
              'Loose                - Has the most time between classes'+#10,mtInformation,[mbOK],0);
  Inc(iHelp);
  Inc(iTotalClicks);
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
  MessageDlg('Scrollbar on the left:'+#10+#10+
              'This gives you the ability to choose any one'+#10+
              'of the possible permutations',mtInformation,[mbOK],0);
  Inc(iHelp);
  Inc(iTotalClicks);
end;

procedure TForm1.utorial1Click(Sender: TObject);
begin
  MessageDlg('Welcome to the tutorial:'+#10+#10+
        'This will guide you through the basic steps, please'+#10+
        'follow the flashing green circle to complete your goals.'+#10+
        'If you get stuck, just hover over the flashing circle'+#10+
        'to get a hint.',mtInformation,[mbOK],0);
  tmrTutorial.Enabled:=True;
  iTutStep:=1;
  Inc(iHelp);
  Inc(iTotalClicks);
end;

procedure TForm1.Wizard1Click(Sender: TObject);
var
  i:Integer;
begin
  pgWizard.Visible:=True;
  pgWizard.BringToFront;
  lstModules.Clear;
  for i := 0 to cbbAdd.Items.Count - 1 do
    lstModules.AddItem(cbbAdd.Items.Strings[i],cbbAdd.Items.Objects[i]);

end;

procedure TForm1.tmrUsabilityTimer(Sender: TObject);
begin
  Inc(iTime);
end;

procedure TForm1.EditLectures1Click(Sender: TObject);
begin
  rbEditClick(Sender);
  rbEdit.Checked:=True;
  pnlAddModule.Visible:=True;
  pnlAddModule.Align:=alClient;
  pnlAddModule.BringToFront;
  cbbNames.ItemIndex:=cbbNames.Items.IndexOf(cbbCurrent.Items.Strings[cbbCurrent.ItemIndex]);
  cbbNamesChange(Sender);
end;

procedure TForm1.Exit1Click(Sender: TObject);
begin
  Inc(iTotalClicks);
  updateStats();
  Form1.Close;
end;

function sortClashes(size:Integer):Boolean;
var
  i,a,test,iSwap:Integer;
begin
  for i := arrClashCount to size-1 do
  begin
    iSwap:=-1;
    test:=arrCCount[i];
    for a := i+1 to size do
    begin
      if arrCCount[a]<test then
      begin
        test:=arrCCount[a];
        iSwap:=a;
      end;
    end;
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
var
  arrComb: array of integer;
  arrGroups: array of integer;
  arrTables: array of Integer;
  theTable: array[1..5,1..iMaxRows] of string;

  I,TOTALCOMBOS,M,DIGITS,COMBO,MODULES,D,days,periods,iD,iP,index: integer;
  sLyn:String;
  MemoryStatus: TMemoryStatus;
  iCount,iCountClashes,xx,iResult:Integer;
  dTime:double;
begin
  dTime:=5.9624017957351290684624017957351e-4;
  iCount:=-1;
  iCountClashes:=-1;
  pbGenerate.Visible:=True;
  days:=5;
  periods:=iMaxRows;
  MODULES:=cbbCurrent.Items.Count;
  setLength(arrGroups,MODULES);
  setLength(arrComb,MODULES);

  for I := 0 to cbbCurrent.Items.Count - 1 do
  begin
    if moduleList[Integer(cbbCurrent.Items.Objects[I])].iLock<1 then
      arrGroups[I]:=moduleList[Integer(cbbCurrent.Items.Objects[I])].iGroupsNmr
    else
      arrGroups[I]:=1;
  end;


  TOTALCOMBOS:=1;
  for I:=0 to MODULES-1 do
  begin
    TOTALCOMBOS:=TOTALCOMBOS*arrGroups[I];
  end;

  iResult:=MessageDlg('Estimated time'+#10+#10+'It will take about '+FloatToStr((TOTALCOMBOS*dTime)/60)+' mins to generated the timetables'+
                      #10+'would you like to continue?',mtInformation,[mbYes,mbNo],0);
  if iResult = 7 then
  begin

  end else
  begin
    pbGenerate.Max:=TOTALCOMBOS;
    pbGenerate.Position:=1;
    setLength(arrTables,TOTALCOMBOS);

    arrPosibleCount:=-1;
    arrClashCount:=-1;
    arrTable:=nil;
    arrClashTable:=nil;
    setLength(arrTable,TOTALCOMBOS,days,periods);
    //setLength(arrClashTable,TOTALCOMBOS,days,periods);
    setlength(arrCCount,TOTALCOMBOS);
    for I:=0 to TOTALCOMBOS-1 do
    begin
      arrTables[I]:=0;
      pbGenerate.Position:=pbGenerate.Position+1;
      DIGITS:=I;
      for M:=1 to MODULES do
      begin
        D:=DIGITS mod arrGroups[M-1];
        DIGITS:=Round(DIGITS/arrGroups[M-1]);
        arrComb[M-1]:=D;
      end;
      sLyn:='';
      for iD:=0 to days-1 do
          for iP:=0 to periods-1 do
            theTable[iD+1,iP+1]:='';
      for M:=1 to MODULES do
      begin
        index:=Integer(cbbCurrent.Items.Objects[M-1]);
        if moduleList[index].iLock<1 then
        begin
          for iD:=0 to days-1 do
          begin
            for iP:=0 to periods-1 do
            begin
              if Length(moduleList[index].sClasses[arrComb[M-1]+1,iD+1,iP+1])>0 then
                if Length(theTable[iD+1,iP+1])>0 then
                begin
                  theTable[iD+1,iP+1]:=theTable[iD+1,iP+1]+' | '+moduleList[index].sClasses[arrComb[M-1]+1,iD+1,iP+1];
                  Inc(arrTables[I]);
                end else
                begin
                  theTable[iD+1,iP+1]:=moduleList[index].sClasses[arrComb[M-1]+1,iD+1,iP+1];
                end;
            end;
          end;
        end else
        begin
          xx:=moduleList[index].iLock;
          for iD:=0 to days-1 do
          begin
            for iP:=0 to periods-1 do
            begin
              if Length(moduleList[index].sClasses[xx,iD+1,iP+1])>0 then
                if Length(theTable[iD+1,iP+1])>0 then
                begin
                  theTable[iD+1,iP+1]:=theTable[iD+1,iP+1]+' | '+moduleList[index].sClasses[xx,iD+1,iP+1];
                  Inc(arrTables[I]);
                end else
                begin
                  theTable[iD+1,iP+1]:=moduleList[index].sClasses[xx,iD+1,iP+1];
                end;
            end;
          end;
        end;
      end;

      if arrTables[I] = 0 then
      begin
        Inc(iCount);
        for iD:=0 to days-1 do
          for iP:=0 to periods-1 do
            arrTable[iCount,iD,iP]:=theTable[iD+1,iP+1];
      end else
      begin
        Inc(iCountClashes);
        for iD:=0 to days-1 do
          for iP:=0 to periods-1 do
            arrTable[TOTALCOMBOS-iCountClashes-1,iD,iP]:=theTable[iD+1,iP+1];
            //arrClashTable[iCountClashes,iD,iP]:=theTable[iD+1,iP+1];
        arrCCount[TOTALCOMBOS-iCountClashes-1]:=arrTables[I];
      end;
    end;
    trcPermutations.Max:=iCount;
    arrPosibleCount:=iCount;
    arrClashCount:=iCountClashes;

    rgpSlider.Items.Clear;
    rgpSlider.Items.Add('Best ('+intToStr(arrPosibleCount+1)+')');
    rgpSlider.Items.Add('Clashes ('+intToStr(arrClashCount+1)+')');
    lblTotal.Caption:=intToStr(arrPosibleCount+1);
    rgpSlider.ItemIndex:=0;
    rgpSliderClick(Sender);
    arrGroups:=nil;
    arrComb:=nil;
    arrTables:=nil;
    //pnlLoadAdd.Visible:=False;
    pbGenerate.Visible:=False;

    //Show timetable tools

    lblindex.Visible:=True;
    lblTotal.Visible:=True;
    label29.Visible:=True;
    label30.Visible:=True;
    label31.Visible:=True;
    lblClash.Visible:=True;
    rgpSlider.Visible:=True;
    AdvToolButton15.Visible:=True;
    AdvToolButton16.Visible:=True;
    trcPermutations.Visible:=True;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  pgWizard.Visible:=False;
end;

function listModules(cbbFull:TComboBox;pnlTimer:TPanel;prog1:TAdvProgress):Boolean;
var
  sLines:TStringList;
  a:Integer;
begin
  with cbbFull do
   begin
    Clear;
    prog1.max:=moduleCount;
    for a:=1 to moduleCount do
    begin
      prog1.Position:=prog1.Position+1;
      Items.AddObject(moduleList[a].sName,@moduleList[a]);
      end;
    end;
end;


function InternetGetConnectedState(lpdwFlags: LPDWORD;dwReserved: DWORD): BOOL;
stdcall; external 'WININET.DLL';

function IsConnectedToInternet: Boolean;
var
dwConnectionTypes: Integer;
begin
  try
    dwConnectionTypes := INTERNET_CONNECTION_MODEM + INTERNET_CONNECTION_LAN + INTERNET_CONNECTION_PROXY;
  if InternetGetConnectedState(@dwConnectionTypes, 0) then
    Result := true
  else
    Result := false;
  except
    Result := false;
  end;
end;

function Download_HTM(const sURL, sLocalFileName : string): boolean;
begin
  Result := True;
  with TDownLoadURL.Create(nil) do
  try
    URL:=sURL;
    Filename:=sLocalFileName;
    try
      ExecuteTarget(nil);
    except
      on E: Exception do
      begin
        MessageDlg('Could not access the page'+#10+'Please try again'+#10+'If problem persists try accessing the page through your browser first', mtInformation, [mbOK], 0);
        Result:=False;
      end;
    end;
  finally
    Free;
  end;
end;

procedure TForm1.Fullscreen1Click(Sender: TObject);
var
  a:Integer;
begin
  if pnlFullScreen.Visible = False then
  begin
    Form1.Align:=alClient;
    pnlFullScreen.Align:=alClient;
    pnlFullScreen.Visible:=True;
    pnlFullScreen.BringToFront;
    sGridFull.Top:=40;
    sGridFull.Left:=16;
    sGridFull.Height:=pnlFullScreen.Height-64;
    sGridFull.Width:=pnlFullScreen.Width-64;
    btnLeave.Top:=10;
    btnLeave.Left:=16;
    btnLeave.Width:=pnlFullScreen.Width-128;
    lblPos.Top:=12;
    lblMid.Top:=12;
    lblTop.Top:=12;
    lblPos.Left:=btnLeave.Left+btnLeave.Width+10;
    lblMid.Left:=lblPos.Left+10;
    lblTop.Left:=lblMid.Left+10;
    lblMid.Caption:='/';
    lblTop.Caption:=IntToStr(trcFull.Max+1);
    lblPos.Caption:=IntToStr(trcFull.position+1);
    trcFull.Top:=sGridFull.Top;
    trcFull.Left:=sGridFull.Width+sGridFull.Left+10;
    trcFull.Height:=sGridFull.Height;
    //Setting up the grid
    sGridFull.RowCount := 29;
    sGridFull.ColCount := 6;
    for a:=0 to 28 do
    begin
      sGridFull.RowHeights[a] := Round(sGridFull.Height/28)-2;
    end;
    for a:=1 to 5 do
    begin
      sGridFull.ColWidths[a] := Round(sGridFull.Width/5)-20;
    end;
    sGridFull.ColWidths[0] := 85;
    sGridFull.Cells[1,0]:= 'MONDAY';
    sGridFull.Cells[2,0]:= 'TUESDAY';
    sGridFull.Cells[3,0]:= 'WEDNESDAY';
    sGridFull.Cells[4,0]:= 'THURSDAY';
    sGridFull.Cells[5,0]:= 'FRIDAY';
    sGridFull.Cells[0,1]:= '07:30-08:00';
    sGridFull.Cells[0,2]:= '08:00-08:30';
    sGridFull.Cells[0,3]:= '08:30-09:00';
    sGridFull.Cells[0,4]:= '09:00-09:30';
    sGridFull.Cells[0,5]:= '09:30-10:00';
    sGridFull.Cells[0,6]:= '10:00-10:30';
    sGridFull.Cells[0,7]:= '10:30-11:00';
    sGridFull.Cells[0,8]:= '11:00-11:30';
    sGridFull.Cells[0,9]:= '11:30-12:00';
    sGridFull.Cells[0,10]:= '12:00-12:30';
    sGridFull.Cells[0,11]:= '12:30-13:00';
    sGridFull.Cells[0,12]:= '13:00-13:30';
    sGridFull.Cells[0,13]:= '13:30-14:00';
    sGridFull.Cells[0,14]:= '14:00-14:30';
    sGridFull.Cells[0,15]:= '14:30-15:00';
    sGridFull.Cells[0,16]:= '15:00-15:30';
    sGridFull.Cells[0,17]:= '15:30-16:00';
    sGridFull.Cells[0,18]:= '16:00-16:30';
    sGridFull.Cells[0,19]:= '16:30-17:00';
    sGridFull.Cells[0,20]:= '17:00-17:30';
    sGridFull.Cells[0,21]:= '17:30-18:00';
    sGridFull.Cells[0,22]:= '18:00-18:30';
    sGridFull.Cells[0,23]:= '18:30-19:00';
    sGridFull.Cells[0,24]:= '19:00-19:30';
    sGridFull.Cells[0,25]:= '19:30-20:00';
    sGridFull.Cells[0,26]:= '20:00-20:30';
    sGridFull.Cells[0,27]:= '20:30-21:00';
    sGridFull.Cells[0,28]:= '21:00-21:30';
    Regular1.Visible:=True;
    Fullscreen1.Visible:=False;
  end else
  begin
    btnLeaveClick(Sender);
    Regular1.Visible:=False;
    Fullscreen1.Visible:=True;
    Form1.Top:=20;
    Form1.Width:=1095;
    Form1.Height:=759;
    Form1.Left:=20;
  end;
end;

procedure TForm1.btnLeaveClick(Sender: TObject);
begin
  pnlFullScreen.Visible:=False;
  Form1.Align:=alNone;
  Form1.Top:=129;
  Form1.Width:=1095;
  Form1.Height:=735;
  Form1.Left:=218;
end;

procedure TForm1.btnLockClick(Sender: TObject);
var
  iIndex:Integer;
begin
  iIndex:=Integer(cbbCurrent.Items.Objects[cbbCurrent.ItemIndex]);
  moduleList[iIndex].iLock:=cbbGroups.ItemIndex+1;
  btnLock.Visible:=False;
  cbbGroups.Visible:=False;
end;

procedure TForm1.sGridFullDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
S : string;
iTel: Integer;
color: TColor;
found: Boolean;
begin
  if ((Length(sGridFull.Cells[acol,arow])>0) AND (ACol>0) AND (ARow>0)) then
  begin
    //ShowMessage(sGridMain.Cells[acol,arow]);
    for iTel:=1 to colorCount do
    begin
      if Pos(arrStrings[iTel],sGridMain.Cells[ACol, ARow]) >0 then
      begin
          sGridFull.Canvas.Brush.Color := arrcolors[iTel];
          sGridFull.Canvas.FillRect(Rect);
          S := sGridFull.Cells[ACol, ARow];
          sGridFull.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
      end;
    end;
  end else if ((ACol>0) AND (ARow>0)) then
  begin
    if (Trunc((ARow-1)/2) mod 2) = 1 then
    begin
      sGridFull.Canvas.Brush.Color := cl3DLight;
      sGridFull.Canvas.FillRect(Rect);
    end else
    begin
      sGridFull.Canvas.Brush.Color := clInfoBk;
      sGridFull.Canvas.Pen.Color := clRed;
      sGridFull.Canvas.FillRect(Rect);
    end;
  end;
  end;

procedure TForm1.trcFullChange(Sender: TObject);
begin
  trcPermutations.Position:=trcFull.Position;
  trcPermutationsChange(Sender);
  lblPos.Caption:=IntToStr(trcFull.Position+1);
end;

procedure TForm1.tmrAddsTimer(Sender: TObject);
begin
  pbAdds.Position:=pbAdds.Position+1;
  if pbAdds.Position=Round(pbAdds.Max/2) then
  begin
    Randomize;
    imgAdvertisement.Picture.LoadFromFile('advertisements/'+intToStr(1+Random(CountFiles))+'.jpg');
  end;
  if pbAdds.Position=pbAdds.Max then
  begin
    pbAdds.Visible:=False;
    pbAdds.Position:=0;
    btnPause.Visible:=False;
    btnPlay.Visible:=False;
    btn6.Visible:=True;
    btn6Click(Sender);
    tmrAdds.Enabled:=False;
  end;
end;

procedure TForm1.rbNewClick(Sender: TObject);
begin
  edtModuleName.BringToFront;
  cmbY.ItemIndex:=0;
  cmbS.ItemIndex:=0;
  cmbL.ItemIndex:=0;
  rgGroups.Items.Clear;
  clearGrid(sGridAdd);
end;

procedure TForm1.rbEditClick(Sender: TObject);
var
  iTel:Integer;
begin
  cbbNames.BringToFront;
  cbbNames.Clear;
  for iTel:=0 to cbbAdd.Items.Count-1 do
  begin
    cbbNames.Items.AddObject(cbbAdd.Items.Strings[iTel],cbbAdd.Items.Objects[iTel]);
  end;
end;

procedure TForm1.cbbNamesChange(Sender: TObject);
var
  iIndex,group:Integer;
begin
  //iIndex:=getIndexOfModule(cbbNames.Items.Strings[cbbNames.Itemindex]);
  iIndex := Integer(cbbNames.Items.Objects[cbbNames.Itemindex]);
  rgGroups.Items.Clear;
  if iIndex>0 then
  begin
    cmbY.ItemIndex:=moduleList[iIndex].iYear-1;
    cmbS.ItemIndex:=moduleList[iIndex].iType;
    for group:=1 to iMaxGroups do
    begin
      if Length(moduleList[iIndex].sLang[group])>0 then
      begin
        rgGroups.Items.Add(IntToStr(group));
      end;
    end;
  end;
end;

procedure TForm1.ChangeColour1Click(Sender: TObject);
begin
  AdvToolButton1Click(Sender);
end;

procedure TForm1.cmbSem2Change(Sender: TObject);
begin
    cmbSem.ItemIndex:=cmbSem2.ItemIndex;
end;

procedure TForm1.cmbYear2Change(Sender: TObject);
begin
  cmbYear.ItemIndex:=cmbYear2.ItemIndex;
end;

procedure TForm1.sGridAddDrawCell(Sender: TObject; ACol, ARow: Integer;
  Rect: TRect; State: TGridDrawState);
var
S : string;
iTel: Integer;
color: TColor;
found: Boolean;
begin
  if ((Length(sGridAdd.Cells[acol,arow])>0) AND (ACol>0) AND (ARow>0)) then
  begin
    for iTel:=1 to colorCount do
    begin
      if Pos(arrStrings[iTel],sGridAdd.Cells[ACol, ARow]) >0 then
      begin
          sGridAdd.Canvas.Brush.Color := arrcolors[iTel];
          sGridAdd.Canvas.FillRect(Rect);
          S := sGridAdd.Cells[ACol, ARow];
          sGridAdd.Canvas.TextOut(Rect.Left + 2, Rect.Top + 2, S);
      end;
    end;
    //sGridAdd.Cells[ACol,ARow]:=sGridAdd.Cells[ACol, ARow];
  end else if ((ACol>0) AND (ARow>0)) then
  begin
    if (Trunc((ARow-1)/2) mod 2) = 1 then
    begin
      sGridAdd.Canvas.Brush.Color := cl3DLight;
      sGridAdd.Canvas.FillRect(Rect);
    end else
    begin
      sGridAdd.Canvas.Brush.Color := clInfoBk;
      sGridAdd.Canvas.Pen.Color := clRed;
      sGridAdd.Canvas.FillRect(Rect);
    end;
  end;
end;

function RefToCell(ARow, ACol: Integer): string;
begin
  Result := Chr(Ord('A') + ACol - 1) + IntToStr(ARow);
end;

function SaveAsExcelFile(AGrid: TStringGrid; ASheetName, AFileName: string): Boolean;
const
  xlWBATWorksheet = -4167;
var
  Row, Col: Integer;
  GridPrevFile: string;
  XLApp, Sheet, Data: OLEVariant;
  i, j: Integer;
begin
  // Prepare Data
  Data := VarArrayCreate([1, AGrid.RowCount, 1, AGrid.ColCount], varVariant);
  for i := 0 to AGrid.ColCount - 1 do
    for j := 0 to AGrid.RowCount - 1 do
    begin
      Data[j + 1, i + 1] := AGrid.Cells[i, j];
    end;
  // Create Excel-OLE Object
  Result := False;
  XLApp := CreateOleObject('Excel.Application');
  try
    // Hide Excel
    XLApp.Visible := False;
    // Add new Workbook
    XLApp.Workbooks.Add(xlWBatWorkSheet);
    Sheet := XLApp.Workbooks[1].WorkSheets[1];
    Sheet.Name := ASheetName;
    // Fill up the sheet
    Sheet.Range[RefToCell(1, 1), RefToCell(AGrid.RowCount,AGrid.ColCount)].Value := Data;
    // Save Excel Worksheet
    try
      XLApp.Workbooks[1].SaveAs(AFileName);
      Result := True;
    except
      // Error ?
    end;
  finally
    // Quit Excel
    if not VarIsEmpty(XLApp) then
    begin
      XLApp.DisplayAlerts := False;
      XLApp.Quit;
      XLAPP := Unassigned;
      Sheet := Unassigned;
    end;
  end;
end;


procedure TForm1.SaveModuleList1Click(Sender: TObject);
var
filename,sLyn,sA:string;
myLer:TextFile;
a,b,day,period,iTel:Integer;
begin
  dlgSave.Title := 'Save module file';
  dlgSave.InitialDir := GetCurrentDir+'\Timetables';
  dlgSave.Filter := 'Module file|*.mdlf';
  dlgSave.DefaultExt := 'mdf';
  dlgSave.FilterIndex := 1;
  if dlgSave.Execute then
  begin
    filename:=dlgSave.FileName;
    assignFile(myLer,filename);
    rewrite(myler);
    for a:=1 to moduleCount do
    begin
      sLyn:='@'+moduleList[a].sName+','+intToStr(moduleList[a].iYear)+','+intToStr(moduleList[a].iType)+',';
      writeln(myLer,sLyn);
      for b:=1 to iMaxGroups do
      begin
        if Length(moduleList[a].sLang[b])>0 then
        begin
          sLyn:='#'+intToStr(b)+','+moduleList[a].sLang[b];
          writeln(myLer,sLyn);
          for day:=1 to 5 do
          begin
            for period:=1 to iMaxRows do
            begin
              if Length(moduleList[a].sClasses[b,day,period])>0 then
              begin
                sA := moduleList[a].sClasses[b,day,period];
                Delete(sA,1,Pos('(',sA));
                Delete(sA,LastDelimiter(')',sA),Length(sA));
                sLyn:=IntToStr(day)+','+intToStr(period)+','+sA;
                writeln(myLer,sLyn);
              end;
            end;
          end;
        end;
      end;
    end;
    closefile(myler);
  end;
end;

procedure TForm1.Sendmessagetodevelopers1Click(Sender: TObject);
begin
  pnlEmail.Visible:=True;
  pnlEmail.BringToFront;
end;

procedure TForm1.Openmodulelist1Click(Sender: TObject);
var
  filename: string;
  iTel:Integer;
begin
  dlgOpen.Title := 'Open module file';
  dlgOpen.InitialDir := GetCurrentDir+'\Timetables';
  dlgOpen.Filter := 'Module file|*.mdlf';
  dlgOpen.DefaultExt := 'mdf';
  dlgOpen.FilterIndex := 1;
  if dlgOpen.Execute then
  begin
    filename:=dlgOpen.FileName;
    iTel:=0;
    if FileExists(filename) then
    begin
      cbbAdd.Clear;
      cbbGroups.Clear;
      cbbCurrent.Clear;
      clearGrid(sGridMain);
      clearGrid(sGridFull);
      getFile(cbbAdd,filename);
      while Pos('\',filename)>1 do
        Delete(filename,1,Pos('\',filename));
      statMain.Panels[0].Text:='Module file: "'+filename+'"';
      lblFacName.Caption:=filename;
      lblFacNmr.Caption:=intToStr(cbbAdd.Items.Count);
      statMain.Panels[1].Text:='Total modules in collection: '+intToStr(cbbAdd.Items.Count);
      statMain.Panels[2].Text:='Filtered modules: '+intToStr(cbbAdd.Items.Count);
    end;
  end;
end;

procedure TForm1.popModulesPopup(Sender: TObject);
begin
  if cbbCurrent.ItemIndex<0 then
  begin
    ChangeColour1.Enabled:=False;
    EditLectures1.Enabled:=False;
    Remove1.Enabled:=False;
  end else
  begin
    ChangeColour1.Enabled:=True;
    EditLectures1.Enabled:=True;
    Remove1.Enabled:=True;
  end;
end;

procedure TForm1.UpdateLoadmodulelist1Click(Sender: TObject);
begin
  pnlLoad.Top:=80;
  pnlLoad.Left:=96;
  pnlLoad.Visible:=True;
  pnlLoad.BringToFront;
end;

procedure TForm1.Saveasexcel2Click(Sender: TObject);
var
  sFilename:string;
begin
  dlgSave.Title := 'Save your excel file';
  dlgSave.InitialDir := GetCurrentDir;
  dlgSave.Filter := 'Excel file|*.xls';
  dlgSave.DefaultExt := 'xls';
  dlgSave.FilterIndex := 1;
  // Display the open file dialog
  if dlgSave.Execute then
  begin
    sFilename:=dlgSave.FileName;
    if SaveAsExcelFile(sGridMain, 'My Timetable', dlgSave.FileName) then
      ShowMessage('Timetable saved!');
  end;
end;

procedure TForm1.Saveasimage2Click(Sender: TObject);
var
  imgWindow: TBitmap;
  sFilename:string;
begin
  dlgSave.Title := 'Save your image';
  dlgSave.InitialDir := GetCurrentDir;
  dlgSave.Filter := 'Bitmap Image|*.bmp';
  dlgSave.DefaultExt := 'bmp';
  dlgSave.FilterIndex := 1;

  if dlgSave.Execute then
  begin
    sFilename:=dlgSave.FileName;
    imgWindow := TBitmap.Create;
    try
      imgWindow := Form1.GetFormImage;
      imgWindow.SaveToFile(sFilename);
    finally
      imgWindow.Free;
    end;
  end;
end;

procedure TForm1.Recommendtoafriend1Click(Sender: TObject);
begin
btn5Click(Sender);
end;

procedure TForm1.Regular1Click(Sender: TObject);
begin
  Fullscreen1Click(Sender);
end;

procedure TForm1.Remove1Click(Sender: TObject);
begin
  bt5.Click;
end;

procedure TForm1.Filter1Click(Sender: TObject);
begin
  AdvPanel1.Collaps:=False;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  a,iResult,iPics: Integer;
  sPic: string;
begin
  sgridFilter.ColWidths[0]:=Round(sgridFilter.Width/2);
  sgridFilter.ColWidths[1]:=Round(sgridFilter.Width/2)-5;
  sgridFilter.Cells[0,0]:='Year';
  sgridFilter.Cells[1,0]:='Semester';
  sgridFilter2.ColWidths[0]:=Round(sgridFilter.Width/2);
  sgridFilter2.ColWidths[1]:=Round(sgridFilter.Width/2)-5;
  sgridFilter2.Cells[0,0]:='Year';
  sgridFilter2.Cells[1,0]:='Semester';
  //Adds

  //Form1.Align:=alClient;
  {pnlAdvertisement.BringToFront;
  pnlAdvertisement.Align:=alClient;
  imgAdvertisement.Align:=alClient;
  imgAdvertisement.Width:=Form1.Width;
  pnlAdvertisement.Visible:=True;
  File1.Enabled:=False;
  View1.Enabled:=False;
  Edit1.Enabled:=False;
  Help1.Enabled:=False;
  iPics:=CountFiles;
  Randomize;
  sPic:=IntToStr(1+Random(iPics))+'.jpg';
  imgAdvertisement.Picture.LoadFromFile('advertisements/'+sPic);
  pbAdds.Top:=Form1.Height-100;
  pbAdds.Width:=Form1.Width-100;
  pbAdds.Left:=50; }

  //btCont.Left:=Round(Form1.Width/2)-92;
  //btCont.Top:=Round(Form1.Height/2)-41;

  //tmrAdds.Enabled:=True;


  iAlgorithm:=iSize;
  iTime:=0;
  shpAddModule.Hint:='Select the modules you are registered for'+#10+'You can add modules from the menu'+#10+'''Add new module manually''';

  pnlAddModule.Left:=96;
  pnlAddModule.Top:=32;

  //Setting up the grid
  sGridMain.RowCount := 29;
  sGridMain.ColCount := 6;
  for a:=0 to 28 do
  begin
    sGridMain.RowHeights[a] := Round(sGridMain.Height/28)-2;
  end;
  //pnlLoadAdd.Top:=Round(sGridMain.Height/28)-2+sGridMain.Top+3;
  //pnlLoadAdd.Height:=sGridMain.height-Round(sGridMain.Height/28)-2-6;
  for a:=1 to 5 do
  begin
    sGridMain.ColWidths[a] := Round(sGridMain.Width/5)-20;
  end;
  sGridMain.ColWidths[0] := 85;
  //pnlLoadAdd.Left:=85+sGridMain.left+3;
  //pnlLoadAdd.Width:=sGridMain.width-85-6;
  sGridMain.Cells[1,0]:= 'MONDAY';
  sGridMain.Cells[2,0]:= 'TUESDAY';
  sGridMain.Cells[3,0]:= 'WEDNESDAY';
  sGridMain.Cells[4,0]:= 'THURSDAY';
  sGridMain.Cells[5,0]:= 'FRIDAY';
  sGridMain.Cells[0,1]:= '07:30-08:00';
  sGridMain.Cells[0,2]:= '08:00-08:30';
  sGridMain.Cells[0,3]:= '08:30-09:00';
  sGridMain.Cells[0,4]:= '09:00-09:30';
  sGridMain.Cells[0,5]:= '09:30-10:00';
  sGridMain.Cells[0,6]:= '10:00-10:30';
  sGridMain.Cells[0,7]:= '10:30-11:00';
  sGridMain.Cells[0,8]:= '11:00-11:30';
  sGridMain.Cells[0,9]:= '11:30-12:00';
  sGridMain.Cells[0,10]:= '12:00-12:30';
  sGridMain.Cells[0,11]:= '12:30-13:00';
  sGridMain.Cells[0,12]:= '13:00-13:30';
  sGridMain.Cells[0,13]:= '13:30-14:00';
  sGridMain.Cells[0,14]:= '14:00-14:30';
  sGridMain.Cells[0,15]:= '14:30-15:00';
  sGridMain.Cells[0,16]:= '15:00-15:30';
  sGridMain.Cells[0,17]:= '15:30-16:00';
  sGridMain.Cells[0,18]:= '16:00-16:30';
  sGridMain.Cells[0,19]:= '16:30-17:00';
  sGridMain.Cells[0,20]:= '17:00-17:30';
  sGridMain.Cells[0,21]:= '17:30-18:00';
  sGridMain.Cells[0,22]:= '18:00-18:30';
  sGridMain.Cells[0,23]:= '18:30-19:00';
  sGridMain.Cells[0,24]:= '19:00-19:30';
  sGridMain.Cells[0,25]:= '19:30-20:00';
  sGridMain.Cells[0,26]:= '20:00-20:30';
  sGridMain.Cells[0,27]:= '20:30-21:00';
  sGridMain.Cells[0,28]:= '21:00-21:30';


  //Setting up the grid
  sGridAdd.RowCount := 29;
  sGridAdd.ColCount := 6;
  for a:=0 to 28 do
  begin
    sGridAdd.RowHeights[a] := Round(sGridAdd.Height/28)-2;
  end;
  for a:=1 to 5 do
  begin
    sGridAdd.ColWidths[a] := Round(sGridAdd.Width/5)-20;
  end;
  sGridAdd.ColWidths[0] := 85;
  sGridAdd.Cells[1,0]:= 'MONDAY';
  sGridAdd.Cells[2,0]:= 'TUESDAY';
  sGridAdd.Cells[3,0]:= 'WEDNESDAY';
  sGridAdd.Cells[4,0]:= 'THURSDAY';
  sGridAdd.Cells[5,0]:= 'FRIDAY';
  sGridAdd.Cells[0,1]:= '07:30-08:00';
  sGridAdd.Cells[0,2]:= '08:00-08:30';
  sGridAdd.Cells[0,3]:= '08:30-09:00';
  sGridAdd.Cells[0,4]:= '09:00-09:30';
  sGridAdd.Cells[0,5]:= '09:30-10:00';
  sGridAdd.Cells[0,6]:= '10:00-10:30';
  sGridAdd.Cells[0,7]:= '10:30-11:00';
  sGridAdd.Cells[0,8]:= '11:00-11:30';
  sGridAdd.Cells[0,9]:= '11:30-12:00';
  sGridAdd.Cells[0,10]:= '12:00-12:30';
  sGridAdd.Cells[0,11]:= '12:30-13:00';
  sGridAdd.Cells[0,12]:= '13:00-13:30';
  sGridAdd.Cells[0,13]:= '13:30-14:00';
  sGridAdd.Cells[0,14]:= '14:00-14:30';
  sGridAdd.Cells[0,15]:= '14:30-15:00';
  sGridAdd.Cells[0,16]:= '15:00-15:30';
  sGridAdd.Cells[0,17]:= '15:30-16:00';
  sGridAdd.Cells[0,18]:= '16:00-16:30';
  sGridAdd.Cells[0,19]:= '16:30-17:00';
  sGridAdd.Cells[0,20]:= '17:00-17:30';
  sGridAdd.Cells[0,21]:= '17:30-18:00';
  sGridAdd.Cells[0,22]:= '18:00-18:30';
  sGridAdd.Cells[0,23]:= '18:30-19:00';
  sGridAdd.Cells[0,24]:= '19:00-19:30';
  sGridAdd.Cells[0,25]:= '19:30-20:00';
  sGridAdd.Cells[0,26]:= '20:00-20:30';
  sGridAdd.Cells[0,27]:= '20:30-21:00';
  sGridAdd.Cells[0,28]:= '21:00-21:30';
  moduleCount := 0;
  arrColors[1] := clLime;
  arrColors[2] := clAqua;
  arrColors[3] := clGreen;
  arrColors[4] := clSkyBlue;
  arrColors[5] := clTeal;
  arrColors[6] := clMaroon;
  arrColors[7] := clOlive;
  arrColors[8] := clPurple;
  arrColors[9] := clFuchsia;
  arrColors[10] := clRed;
  arrColors[11] := clMoneyGreen;
  arrColors[12] := clMenuHighlight;
  arrColors[13] := clCream;
  arrColors[14] := clHotLight;
  arrColors[15] := clMedGray;
  arrColors[16] := clInfoBk;
  arrColors[17] := cl3DLight;
  arrColors[18] := cl3DDkShadow;
  arrColors[19] := clHighlight;
  arrColors[20] := clBtnFace;
  colorCount:=0;
  //Loading from file
  getFile(cbbAdd,'Timetables/default.mdlf');
  statMain.Panels[0].Text:='Module file: "modules.mdlf"';
  statMain.Panels[1].Text:='Total modules in collection: '+intToStr(cbbAdd.Items.Count);
  statMain.Panels[2].Text:='Filtered modules: '+intToStr(cbbAdd.Items.Count);

  lblFacName.Caption:='modules.mdlf';
  lblFacNmr.Caption:=intToStr(cbbAdd.Items.Count);

  {iResult:=MessageDlg('Welcome to the beta version of Student Scheduler'+#10+#10+'Would you like to do a quick tutorial?',mtInformation,[mbYes,mbNo],0);
  if iResult = 6 then
  begin
    MessageDlg('Welcome to the tutorial:'+#10+#10+
        'This will guide you through the basic steps, please'+#10+
        'follow the flashing green circle to complete your goals.'+#10+
        'If you get stuck, just hover over the flashing circle'+#10+
        'to get a hint.',mtInformation,[mbOK],0);
    iTutStep:=1;
    tmrTutorial.Enabled:=True;
    tmrUsability.Enabled:=True;
  end else
    tmrUsability.Enabled:=True;
  }
  end;

procedure TForm1.btSendClick(Sender: TObject);
var
  oSmtp : TMail;
  sMsg,sName: string;
begin
  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';
  // Set your sender email address
  oSmtp.FromAddr := 'timetableuser@gmail.com ';
  // Add recipient email address
  oSmtp.AddRecipientEx( 'timetabledevelopers@gmail.com', 0);
  // Set email subject
  oSmtp.Subject := edtSubject.Text;
  // Set HTML body format
  oSmtp.BodyFormat := 1;
  // Set HTML body text
  sMsg:=redMessage.Lines.Text;
  sName:=edtName.Text;
  oSmtp.BodyText := '<font size=5> From user: '+sName+#10+'Message: '+sMsg+'</font>';
  // Add attachment from local disk
  {if oSmtp.AddAttachment('c:\test.doc') <> 0 then
    ShowMessage( 'Failed to add attachment with error: ' +
    oSmtp.GetLastErrDescription()); }

  // Add attachment from remote website
  {if oSmtp.AddAttachment('http://www.emailarchitect.net/webapp/img/logo.jpg') <> 0 then
    ShowMessage( 'Failed to add attachment with error: ' +
    oSmtp.GetLastErrDescription());}
  // Your SMTP server address
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // User and password for ESMTP authentication, if your server doesn't require
  // user authentication, please remove the following codes
  oSmtp.UserName := 'timetableuser';
  oSmtp.Password := '9106235057086';

  // If your SMTP server requires SSL connection, please add this line
  // oSmtp.SSL_init();

  //ShowMessage( 'start to send email ...' );

  if oSmtp.SendMail() = 0 then
    ShowMessage( 'Message sent successfully!' )
  else
    ShowMessage( 'failed to send email with the following error: ' + oSmtp.GetLastErrDescription());
  pnlEmail.Visible:=False;

end;

procedure TForm1.bt11Click(Sender: TObject);
begin
  pnlEmail.Visible:=False;
end;

procedure TForm1.btCancelClick(Sender: TObject);
begin
  pnlEmail.Visible:=False;
end;

function BrowseURL(const URL: string) : boolean;
var
   Browser: string;
begin
   Result := True;
   Browser := '';
   with TRegistry.Create do
   try
     RootKey := HKEY_CLASSES_ROOT;
Access := KEY_QUERY_VALUE;
     if OpenKey('\htmlfile\shell\open\command', False) then
       Browser := ReadString('') ;
     CloseKey;
   finally
     Free;
   end;
   if Browser = '' then
   begin
     Result := False;
     Exit;
   end;
   Browser := Copy(Browser, Pos('"', Browser) + 1, Length(Browser)) ;
   Browser := Copy(Browser, 1, Pos('"', Browser) - 1) ;
   ShellExecute(0, 'open', PChar(Browser), PChar(URL), nil, SW_SHOW) ;
end;


procedure TForm1.btn4Click(Sender: TObject);
begin
  BrowseURL('http://www.facebook.com') ;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
  pnlShare.BringToFront;
  pnlShare.Visible:=True;
  pnlShare.SetFocus;
  edtShareName.SetFocus;
end;
procedure TForm1.sGridMainSelectCell(Sender: TObject; ACol, ARow: Integer;
  var CanSelect: Boolean);
begin
{  if Pos('Locked *',sGridMain.Cells[ACol,ARow])>0 then
    sGridMain.Cells[ACol,ARow]:=StringReplace(sGridMain.Cells[ACol,ARow],'Locked *','',[rfReplaceAll])
  else if Length(sGridMain.Cells[ACol,ARow])<1 then
    sGridMain.Cells[ACol,ARow]:='Locked *'
  else if Pos('*',sGridMain.Cells[ACol,ARow])>0 then
    sGridMain.Cells[ACol,ARow]:=StringReplace(sGridMain.Cells[ACol,ARow],'*','',[rfReplaceAll])
  else
    sGridMain.Cells[ACol,ARow]:=sGridMain.Cells[ACol,ARow]+'*';    }
end;

procedure TForm1.btnClearAllLocksClick(Sender: TObject);
var
  day,period: Integer;
begin
  for day:=1 to 5 do
    for period:=1 to iMaxRows do
    begin
      if Pos('Locked *',sGridMain.Cells[day,period])>0 then
        sGridMain.Cells[day,period]:=StringReplace(sGridMain.Cells[day,period],'Locked *','',[rfReplaceAll]);
      if Pos('*',sGridMain.Cells[day,period])>0 then
        sGridMain.Cells[day,period]:=StringReplace(sGridMain.Cells[day,period],'*','',[rfReplaceAll]);
    end;
end;

procedure TForm1.btnClearFilters2Click(Sender: TObject);
var
i:Integer;
begin
  btnClearFiltersClick(Sender);
  lstModules.Clear;
  for i := 0 to cbbAdd.Items.Count - 1 do
    lstModules.AddItem(cbbAdd.Items.Strings[i],cbbAdd.Items.Objects[i]);
  AdvPanel2.Collaps:=True;
end;

procedure TForm1.btnClearFiltersClick(Sender: TObject);
var
  i,b:Integer;
begin
  for i:=1 to sgridFilter.RowCount do
    for b:=0 to 2 do
    begin
      sgridFilter.Cells[b,i]:='';
      sgridFilter2.Cells[b,i]:='';
    end;
  cbbAdd.Clear;
  for i:=1 to moduleCount do
    cbbAdd.Items.AddObject(moduleList[i].sName,TObject(i));
  sgridFilter.RowCount:=2;
  sgridFilter2.RowCount:=2;
  AdvPanel1.Collaps:=True;
end;

procedure TForm1.btnFilter2Click(Sender: TObject);
var
  i:Integer;
begin
  btnFilterClick(Sender);
  lstCurrent.Clear;
  lstModules.Clear;
  for i := 0 to cbbAdd.Items.Count - 1 do
    lstModules.AddItem(cbbAdd.Items.Strings[i],cbbAdd.Items.Objects[i]);
  AdvPanel2.Collaps:=True;
end;

procedure TForm1.btnFilterClick(Sender: TObject);
var
  iTel:Integer;
  iIndex,iFilter,iYear,iSem,iA:Integer;
begin
  if Length(sgridFilter.Cells[1,1])>0 then
  begin
    cbbAdd.Clear;
    for iFilter:=1 to sgridFilter.RowCount-2 do
    begin
      iYear:=StrToInt(sgridFilter.Cells[0,iFilter]);
      iSem:=StrToInt(sgridFilter.Cells[1,iFilter]);
      for iTel:=1 to moduleCount do
      begin
        if ((iYear>0) and (iSem>0)) then
        begin
          if ((moduleList[iTel].iYear = iYear) and (moduleList[iTel].iType = iSem))
          then begin
            cbbAdd.Items.AddObject(moduleList[iTel].sName,TObject(iTel));
          end;
        end else if iYear>0 then
        begin
          if (moduleList[iTel].iYear = iYear)
          then begin
            cbbAdd.Items.AddObject(moduleList[iTel].sName,TObject(iTel));
          end;
        end else if iSem>0 then
        begin
          if (moduleList[iTel].iType = iSem)
          then begin
            cbbAdd.Items.AddObject(moduleList[iTel].sName,TObject(iTel));
          end;
        end;
      end;
    end;
    AdvPanel1.Collaps:=True;
    statMain.Panels[2].Text:='Filtered modules: '+intToStr(cbbAdd.Items.Count);
  end else
    MessageDlg('No filters added',mtInformation,[mbOK],0);
end;

procedure TForm1.btnPauseClick(Sender: TObject);
begin
  tmrAdds.Enabled:=False;
  btnPlay.Visible:=True;
  btnPause.Visible:=False;;
end;

procedure TForm1.btnPlayClick(Sender: TObject);
begin
  tmrAdds.Enabled:=True;
  btnPause.Visible:=True;
  btnPlay.Visible:=False;
end;

procedure TForm1.btnUnlockClick(Sender: TObject);
var
  iIndex:Integer;
begin
  iIndex:=Integer(cbbCurrent.Items.Objects[cbbCurrent.ItemIndex]);
  moduleList[iIndex].iLock:=0;
  btnLock.Visible:=True;
  cbbGroups.Visible:=True;
  cbbGroups.ItemIndex:=0;
  cbbGroupsChange(Sender);
end;

procedure TForm1.btn6Click(Sender: TObject);
begin
  Form1.Align:=alNone;
  pnlAdvertisement.Visible:=False;
  File1.Enabled:=True;
  View1.Enabled:=True;
  Edit1.Enabled:=True;
  Help1.Enabled:=True;
  Form1.Top:=1;
  Form1.Width:=1095;
  Form1.Height:=759;
  Form1.Left:=1;
end;

procedure TForm1.tmrpauseTimer(Sender: TObject);
begin
  Inc(iPause);
end;

procedure TForm1.bt8Click(Sender: TObject);
begin
  pnlShare.Visible:=False;
end;

procedure TForm1.bt9Click(Sender: TObject);
begin
  pnlAddModule.Visible:=False;
end;

procedure TForm1.bt10Click(Sender: TObject);
begin
  pnlLoad.Visible:=False;
end;

procedure TForm1.Standard1Click(Sender: TObject);
begin
  Standard1.Checked:=True;
  rg1.ItemIndex:=0;
  rg1.OnClick(Sender);
end;

procedure TForm1.Label35Click(Sender: TObject);
var
  MyLink: string;
begin
  MyLink := 'http://www.google.com/';
  ShellExecute(Application.Handle, PChar('open'), PChar(MyLink), nil, nil, SW_SHOW);
end;

procedure TForm1.Latesleeper1Click(Sender: TObject);
begin
  Latesleeper1.Checked:=True;
  rg1.ItemIndex:=1;
  rg1.OnClick(Sender);
end;

procedure TForm1.ListBox2DragDrop(Sender, Source: TObject; X, Y: Integer);
var
 I : Integer;
 Found : Boolean;
begin
 with (Source AS TListBox) do begin
   for I := 0 to Items.Count - 1 do
     if Selected[I] then
       (Sender AS TListBox).Items.Add(Items[I]);
       for I := Items.Count - 1 downto 0 do
         if Selected[I] then
               Items.Delete(I);
 end;
end;

procedure TForm1.ListBox2DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := (Source is TListBox);
end;

procedure TForm1.Gohomeearly1Click(Sender: TObject);
begin
  Gohomeearly1.Checked:=True;
  rg1.ItemIndex:=2;
  rg1.OnClick(Sender);
end;

procedure TForm1.Compact1Click(Sender: TObject);
begin
  Compact1.Checked:=True;
  rg1.ItemIndex:=3;
  rg1.OnClick(Sender);
end;

procedure TForm1.Loose1Click(Sender: TObject);
begin
  Loose1.Checked:=True;
  rg1.ItemIndex:=4;
  rg1.OnClick(Sender);
end;

procedure TForm1.SaveCurrentModules1Click(Sender: TObject);
var
filename,sLyn:string;
myLer:TextFile;
a:Integer;
begin
  if cbbCurrent.Items.Count>0 then
  begin
    dlgSave.Title := 'Save my module list';
    dlgSave.InitialDir := GetCurrentDir+'\Personal';
    dlgSave.Filter := 'Module file|*.pml';
    dlgSave.DefaultExt := 'pml';
    dlgSave.FilterIndex := 1;
    if dlgSave.Execute then
    begin
      filename:=dlgSave.FileName;
      assignFile(myLer,filename);
      rewrite(myler);
      sLyn:=statMain.Panels.Items[0].Text;
      a:=Pos('"',sLyn);
      Delete(sLyn,1,a);
      a:=Pos('"',sLyn);
      sLyn:=Copy(sLyn,1,a-1);
      writeln(myLer,sLyn);
      for a:=0 to cbbCurrent.Items.Count-1 do
      begin
        sLyn:=cbbCurrent.Items.Strings[a];
        writeln(myLer,sLyn);
      end;
      closefile(myler);
    end;
  end else MessageDlg('No modules added',mtInformation,[mbOK],0);
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
var
  a,b,c,d,group,day,period,iLines: Integer;
  sLyn,venue,filename,sURL,sA,sErrors: string;
  myLer: TextFile;
  status:Boolean;
Begin
  screen.Cursor:=crHourGlass;
  pbLoad.Visible:=True;
  red1.Lines.Clear;
  //sURL:=edtTheURL.Text;
  filename:='timetable.mdlf';
  //lblDownloadStatus.Caption:='Accessing '+sURL;
  case rgSite.ItemIndex of
    0: begin
          sURL:='http://www.up.ac.za/timetables/hatfield_timetable.html';
          filename:='hatfield.mdlf';
       end;
    1: begin
          sURL:='http://www.up.ac.za/timetables/theology_timetable.html';
          filename:='theology.mdlf';
                 //http://www.up.ac.za/timetables/theology_timetable.html
       end;
    2: begin
          sURL:='http://www.up.ac.za/timetables/eng_timetable.html';
          filename:='engineering.mdlf';
       end;
    3: begin
          sURL:='http://www.up.ac.za/timetables/groenkloof_timetable.html';
          filename:='groenkloof.mdlf';
       end;
    4: begin
          sURL:='http://www.up.ac.za/timetables/mamelodi_timetable.html';
          filename:='mamelodi.mdlf';
       end;
  end;

  If not IsConnectedToInternet Then
    red1.Lines.Add('No internet connection found');

  if IsConnectedToInternet then
  begin
    if NOT Download_HTM(sURL,filename) then
    begin
      status:=false;
      red1.Lines.Add('Could not access the page, please try again');
      Exit;
    end else
      status:=True;
    if status=True then
    begin
      for a:=1 to iMaxModules do
      begin
        moduleList[a].sName:='';
        moduleList[a].iGroupsNmr:=0;
        moduleList[a].iType:=0;
        moduleList[a].iYear:=0;
        moduleList[a].iLock:=0;
        for b:=1 to iMaxGroups do
        begin
          moduleList[a].sLang[b]:='';
          for c:=1 to 5 do
          begin
            for d:=1 to iMaxRows do
            begin
              moduleList[a].sClasses[b,c,d]:='';
            end;
          end;
        end;
      end;
      moduleCount:=0;
      iLines:=0;
      if FileExists(filename) then
      begin
        assignFile(myLer,filename);
        reset(myler);
        while (NOT Eof(myLer)) do
        begin
          Readln(myLer,sLyn);
          if sLyn = '<tbody>' then
            Break;
          //Inc(iLines);
        end;
        while (NOT Eof(myLer)) do
        begin
          Readln(myLer,sLyn);
          Inc(iLines);
          if sLyn = '</tbody>' then
            Break;
        end;
        closefile(myler);
      end else
        MessageDlg('File not found',mtError,[mbOK],0);

      sErrors:='';
      pbLoad.Max:=iLines;
      assignFile(myLer,filename);
      reset(myler);
      while (NOT Eof(myLer)) do
      begin
        Readln(myLer,sLyn);
        if sLyn = '<tbody>' then
          Break;
      end;
      while (NOT Eof(myLer)) do
      begin
        Readln(myLer,sLyn);
        if sLyn = '</tbody>' then
          Break;
        sErrors:=sErrors+analyseString(sLyn,pbLoad,rgSite.ItemIndex);
      end;
      closefile(myler);

      sLyn:=sErrors;
      iLines:=0;
      while Pos(#10,sLyn)>0 do
      begin
        Inc(iLines);
        Delete(sLyn,Pos(#10,sLyn),1);
      end;
        red1.Lines.Add('============================================================');
        red1.Lines.Add('Report');
        red1.Lines.Add('Total modules not added:'+intTostr(iLines));
        red1.Lines.Add('');
        red1.Lines.Add('This is because the format they were found on the website is not compatable');
        red1.Lines.Add('If your modules appear in the list above, add them manualy.');
        red1.Lines.Add('============================================================');
        red1.Lines.Add('Modules not added:');
        red1.Lines.Add(sErrors);
      assignFile(myLer,filename);
      rewrite(myler);
      for a:=1 to moduleCount do
      begin
        sLyn:='@'+moduleList[a].sName+','+intToStr(moduleList[a].iYear)+','+intToStr(moduleList[a].iType)+',';
        writeln(myLer,sLyn);
        for b:=1 to iMaxGroups do
        begin
          if Length(moduleList[a].sLang[b])>0 then
          begin
            sLyn:='#'+intToStr(b)+','+moduleList[a].sLang[b];
            writeln(myLer,sLyn);
            for day:=1 to 5 do
            begin
              for period:=1 to iMaxRows do
              begin
                if Length(moduleList[a].sClasses[b,day,period])>0 then
                begin
                  sA := moduleList[a].sClasses[b,day,period];
                  Delete(sA,1,Pos('(',sA));
                  Delete(sA,LastDelimiter(')',sA),Length(sA));
                  sLyn:=IntToStr(day)+','+intToStr(period)+','+sA;
                  writeln(myLer,sLyn);
                end;
              end;
            end;
          end;
        end;
      end;
      closefile(myler);

      cbbAdd.Clear;
      cbbGroups.Clear;
      cbbCurrent.Clear;
      clearGrid(sGridMain);
      clearGrid(sGridFull);
      getFile(cbbAdd,filename);
      statMain.Panels[0].Text:='Module file: "'+filename+'"';
      statMain.Panels[1].Text:='Total modules in collection: '+intToStr(cbbAdd.Items.Count);
      statMain.Panels[2].Text:='Filtered modules: '+intToStr(cbbAdd.Items.Count);

      lblFacName.Caption:=filename;
      lblFacNmr.Caption:=intToStr(cbbAdd.Items.Count);
    end else
    begin
      red1.Lines.Add('Could not download the file')
    end;
  end;
  screen.Cursor:=crDefault;
  pbLoad.Visible:=False;
end;

procedure TForm1.AdvPanel1CaptionDBlClick(Sender: TObject);
begin
  {if advPanel1.Collaps=true then
  begin
    AdvPanel1.Collaps:=False;
    AdvPanel1Maximize(Sender);
  end else
  begin
    AdvPanel1.Collaps:=True;
    AdvPanel1Minimize(Sender);
  end;   }
end;

procedure TForm1.AdvPanel1EndCollapsExpand(Sender: TObject);
begin
  if advPanel1.Collaps then
    advPanel1.Cursor:=crHandPoint
  else
    AdvPanel1.Cursor:=crDefault;
end;

procedure TForm1.AdvPanel2EndCollapsExpand(Sender: TObject);
begin
  if advPanel2.Collaps then
    advPanel2.Cursor:=crHandPoint
  else
    AdvPanel2.Cursor:=crDefault;
end;

procedure TForm1.AdvToolButton10Click(Sender: TObject);
begin
  pgWizard.TabIndex:=pgWizard.TabIndex-1;
end;

procedure TForm1.AdvToolButton12Click(Sender: TObject);
begin
  UpdateLoadmodulelist1Click(Sender);
end;

procedure TForm1.AdvToolButton14Click(Sender: TObject);
begin
  btn5Click(Sender);
end;

procedure TForm1.AdvToolButton15Click(Sender: TObject);
begin
  if trcPermutations.Position>0 then
  begin
    trcPermutations.Position:=trcPermutations.Position-1;
    trcPermutationsChange(Sender);
  end;
end;

procedure TForm1.AdvToolButton16Click(Sender: TObject);
begin
  if trcPermutations.Position<trcPermutations.Max then
  begin
    trcPermutations.Position:=trcPermutations.Position+1;
    trcPermutationsChange(Sender);
  end;
end;

procedure TForm1.AdvToolButton17Click(Sender: TObject);
begin
  Button4Click(sender);
end;

procedure TForm1.AdvToolButton17MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //Randomize;
  //image2.Picture.LoadFromFile('advertisements/'+intToStr(1+Random(CountFiles))+'.jpg');
  //pnlLoadAdd.Visible:=True;
end;

procedure TForm1.AdvToolButton18Click(Sender: TObject);
begin
//  SmoothMessageDlg('Get a quote from bookmark','Bla Bla Bla Bla Bla Bla'+#10
//  +'Bla Bla Bla Bla Bla Bla',mtInformation,[mbOK],0);
  //input.Instruction:='Get a quote from bookmark'+#10+'Hello'+#10+'Hello'+#10+'Hello'+#10+'Hello'+#10+'Hello';
  //input.Execute;
  //grpPanel.Transparent:=True;
end;

procedure TForm1.AdvToolButton1Click(Sender: TObject);
var
  a:Integer;
  check:Boolean;
begin
  check:=false;
  lstColors.Clear;
  for a:=1 to 20 do
  begin
    if Length(arrStrings[a])>0 then
    begin
      lstColors.Items.Add(arrStrings[a]);
      check:=True;
    end;
  end;
  if check=True then
  begin
    pnlColors.BringToFront;
    pnlColors.Visible:=True;
    lstColors.ItemIndex:=lstColors.Items.IndexOf(cbbCurrent.Items.Strings[cbbCurrent.ItemIndex]);
    if lstColors.ItemIndex<0 then
      lstColors.ItemIndex:=0;
    lstColorsClick(Sender);
  end else
    messagedlg('No modules added yet',mtInformation,[mbOK],0);

end;

procedure TForm1.AdvToolButton2Click(Sender: TObject);
  var
  color:TColor;
begin
  dlgColor1.Execute;
  color:=dlgColor1.Color;
  arrColors[lstColors.ItemIndex+1]:=color;
  shpColor.Brush.Color:=arrColors[lstColors.ItemIndex+1];
  cbbCurrentChange(Sender);
end;

procedure TForm1.AdvToolButton3Click(Sender: TObject);
var
  lst:TListItem;
  iIndex,iSem:Integer;
  found:Boolean;
begin
  if ((cmbYear.ItemIndex=0) and (cmbSem.ItemIndex=0) and (cmbLanguage.ItemIndex=0)) then
    MessageDlg('Invalid filter'+#10+'All modules will be shown',mtInformation,[mbOK],0)
  else begin
    found:=False;
    if (cmbSem.Items.Strings[cmbSem.ItemIndex]='1') or (cmbSem.Items.Strings[cmbSem.ItemIndex]='2') then
      iSem:=StrToInt(cmbSem.Items.Strings[cmbSem.ItemIndex])
    else
      iSem:=0;

    for iIndex:=1 to sgridFilter.RowCount-1 do
    begin
      if ((sgridFilter.Cells[0,iIndex]=IntToStr(cmbYear.ItemIndex)) and
         (sgridFilter.Cells[1,iIndex]=IntToStr(iSem))) then
          found := True;
    end;
    if found=False then
    begin
      sgridFilter.RowCount:=sgridFilter.RowCount+1;
      sgridFilter.Cells[0,sgridFilter.RowCount-2]:=IntToStr(cmbYear.Itemindex);
      sgridFilter.Cells[1,sgridFilter.RowCount-2]:=IntToStr(iSem);
      sgridFilter2.RowCount:=sgridFilter2.RowCount+1;
      sgridFilter2.Cells[0,sgridFilter2.RowCount-2]:=IntToStr(cmbYear.Itemindex);
      sgridFilter2.Cells[1,sgridFilter2.RowCount-2]:=IntToStr(iSem);
    end else
      MessageDlg('Filter already added',mtInformation,[mbOK],0);
  end;
end;

procedure TForm1.AdvToolButton4Click(Sender: TObject);
begin
  Openmodulelist1Click(Sender);
end;

procedure TForm1.AdvToolButton5Click(Sender: TObject);
begin
  pgWizard.TabIndex:=pgWizard.TabIndex+1;
end;

procedure TForm1.AdvToolButton6Click(Sender: TObject);
begin
  pgWizard.TabIndex:=pgWizard.TabIndex-1;
end;

procedure TForm1.AdvToolButton7Click(Sender: TObject);
begin
  pgWizard.TabIndex:=pgWizard.TabIndex+1;
end;

procedure TForm1.AdvToolButton8Click(Sender: TObject);
begin
  pgWizard.TabIndex:=pgWizard.TabIndex-1;
end;

procedure TForm1.AdvToolButton9Click(Sender: TObject);
begin
  if lstCurrent.Items.Count>0 then
    pgWizard.TabIndex:=pgWizard.TabIndex+1
  else
    Messagedlg('You need to add modules',mtInformation,[mbOK],0);
end;

procedure TForm1.btnAdd2Click(Sender: TObject);
var
 I,index,a : Integer;
 Found : Boolean;
 sVak : String;
begin
  if lstModules.ItemIndex>-1 then
  begin

  end;
end;

procedure TForm1.btnAddClick(Sender: TObject);
var
  found: Boolean;
  iTel,a:Integer;
  sVak:string;
begin
  if cbbAdd.ItemIndex>-1 then
  begin
      if cbbCurrent.Items.IndexOf(cbbAdd.Items.Strings[cbbAdd.ItemIndex])>-1 then
      begin
        MessageDlg('Module already added',mtInformation,[mbOK],0);
      end else
      begin
        //Add module to current modules
        cbbCurrent.Items.AddObject(cbbAdd.Items.Strings[cbbAdd.ItemIndex],TObject(cbbAdd.Items.Objects[cbbAdd.ItemIndex]));
        cbbCurrent.ItemIndex := cbbCurrent.Items.Count-1;
        sVak:=cbbAdd.Items.Strings[cbbAdd.ItemIndex];
        if chkPracs.Checked=True then
        begin
          for a:=0 to cbbAdd.Items.Count-1 do
          begin
            if (Pos(sVak,cbbAdd.Items.Strings[a])>0) AND
            (Length(sVak)<Length(cbbAdd.Items.Strings[a])) then
            begin
              cbbCurrent.Items.AddObject(cbbAdd.Items.Strings[a],TObject(cbbAdd.Items.Objects[a]));
            end;
          end;
        end;
        found:=False;
        for iTel:=1 to colorCount do
        begin
          if arrStrings[iTel] = cbbAdd.Items.Strings[cbbAdd.ItemIndex] then
          begin
            found:=True;
          end;
        end;
        if found = False then
        begin
          if (colorCount = 20) then
            colorCount:=17;
          colorCount:= colorCount+1;
          arrStrings[colorCount]:= cbbAdd.Items.Strings[cbbAdd.ItemIndex];
        end;
        cbbCurrentChange(Sender);
      end;
      if iTutStep = 1 then
      begin
        iTutStep:=2;
        shpAddModule.Visible:=False;
        shpAddModule.Hint:='Choose one more module';
      end else if iTutStep = 2 then
      begin
        iTutStep:=3;
        shpAddModule.Visible:=False;
      end;
  end;
end;

procedure TForm1.BitBtn1Click(Sender: TObject);
begin
  pnlLoad.Visible:=False;
end;

procedure TForm1.Open2Click(Sender: TObject);
var
  filename,sFilename,sLyn: string;
  iTel,a:Integer;
  sModules:array[1..1000] of string;
  myLer:TextFile;
begin
  dlgOpen.Title := 'Open my module list';
  dlgOpen.InitialDir := GetCurrentDir+'\Personal';
  dlgOpen.Filter := 'Module file|*.pml';
  dlgOpen.DefaultExt := 'pml';
  dlgOpen.FilterIndex := 1;
  if dlgOpen.Execute then
  begin
    filename:=dlgOpen.FileName;
    iTel:=1;
    if FileExists(filename) then
    begin
      assignFile(myLer,filename);
      reset(myler);
      Readln(myLer,sFilename);
      while NOT Eof(myLer) do
      begin
        Readln(myLer,sLyn);
        if Length(sLyn)>0 then
        begin
          sModules[iTel]:=sLyn;
          inc(iTel);
        end;
      end;
      CloseFile(myLer);
    end;

    if FileExists(sFilename) then
    begin
      cbbAdd.Clear;
      cbbGroups.Clear;
      cbbCurrent.Clear;
      clearGrid(sGridMain);
      clearGrid(sGridFull);
      getFile(cbbAdd,sFilename);
      while Pos('\',sFilename)>1 do
        Delete(sFilename,1,Pos('\',sFilename));
      statMain.Panels[0].Text:='Module file: "'+sFilename+'"';
      statMain.Panels[1].Text:='Total modules in collection: '+intToStr(cbbAdd.Items.Count);
      statMain.Panels[2].Text:='Filtered modules: '+intToStr(cbbAdd.Items.Count);
    end;

    cbbCurrent.Clear;
    for a:= 1 to iTel-1 do
    begin
      if cbbAdd.Items.IndexOf(sModules[a])>-1 then
      begin
        cbbAdd.ItemIndex:=cbbAdd.Items.IndexOf(sModules[a]);
        btnAdd.Click;
      end else
        MessageDlg('Could not find the module: '+sModules[a],mtInformation,[mbOK],0);
    end;

  end;
end;

procedure TForm1.BitBtn3Click(Sender: TObject);
var
  oSmtp : TMail;
  sMsg,sName,sAddress: string;
begin
  sAddress:=edtShareAddress.Text;
  oSmtp := TMail.Create(Application);
  oSmtp.LicenseCode := 'TryIt';
  // Set your sender email address
  oSmtp.FromAddr := 'timetableuser@gmail.com ';
  // Add recipient email address
  oSmtp.AddRecipientEx( sAddress, 0);
  // Set email subject
  oSmtp.Subject := 'Student timetable application';
  // Set HTML body format
  oSmtp.BodyFormat := 1;
  // Set HTML body text
  sMsg:='<div><h2> Student timetable application </h2></div>'+
        '<div>A friend has recommended this application</div>'+
        '<h3>Introduction</h3>'+
        '<p>This application will assist you in setting up your timetable for this semester.</p>'+
        '<p>This application will assist you in setting up your timetable for this semester.</p>'+
        '<p>This application will assist you in setting up your timetable for this semester.</p>'+
        '<p>This application will assist you in setting up your timetable for this semester.</p>';
  sName:=edtName.Text;
  oSmtp.BodyText := '<font size=5> From user: '+#10+sName+#10+'Message: '+sMsg+'</font>';
  // Add attachment from local disk
  {if oSmtp.AddAttachment('c:\test.doc') <> 0 then
    ShowMessage( 'Failed to add attachment with error: ' +
    oSmtp.GetLastErrDescription()); }

  // Add attachment from remote website
  {if oSmtp.AddAttachment('http://www.emailarchitect.net/webapp/img/logo.jpg') <> 0 then
    ShowMessage( 'Failed to add attachment with error: ' +
    oSmtp.GetLastErrDescription());}
  // Your SMTP server address
  oSmtp.ServerAddr := 'smtp.gmail.com';

  // User and password for ESMTP authentication, if your server doesn't require
  // user authentication, please remove the following codes
  oSmtp.UserName := 'timetableuser';
  oSmtp.Password := '9106235057086';

  // If your SMTP server requires SSL connection, please add this line
  // oSmtp.SSL_init();

  //ShowMessage( 'start to send email ...' );

  if oSmtp.SendMail() = 0 then
    ShowMessage( 'Message sent successfully!' )
  else
    ShowMessage( 'failed to send email with the following error: ' + oSmtp.GetLastErrDescription());
  pnlShare.Visible:=False;
end;

procedure TForm1.lstColorsClick(Sender: TObject);
begin
  if lstColors.ItemIndex>-1 then
  begin
    lblColorName.Caption:=lstColors.Items.Strings[lstColors.ItemIndex];
    shpColor.Brush.Color:=arrColors[lstColors.ItemIndex+1];
  end;
end;

procedure TForm1.lstCurrentClick(Sender: TObject);
var
  index:Integer;
begin
  index:=Integer(lstCurrent.Items.Objects[lstCurrent.ItemIndex]);
  lbl2Name.Caption:=moduleList[index].sName;
  lbl2Year.Caption:=IntToStr(moduleList[index].iYear);
  lbl2Sem.Caption:=IntToStr(moduleList[index].iType);
  if lstCurrent.ItemIndex>-1 then
  begin
    AdvToolButton14.Visible:=True;
    cbbCurrent.ItemIndex:=cbbCurrent.Items.IndexOfObject(TObject(lstCurrent.Items.Objects[lstCurrent.ItemIndex]));
    cbbCurrentChange(Sender);
  end else
    AdvToolButton14.Visible:=False;
end;

procedure TForm1.lstCurrentDragDrop(Sender, Source: TObject; X, Y: Integer);
var
 I,index,a : Integer;
 Found : Boolean;
 sVak : String;
begin
 with (Source AS TListBox) do begin
   for I := 0 to Items.Count - 1 do
     if Selected[I] then
     begin
       (Sender AS TListBox).AddItem(lstModules.Items.Strings[I],TObject(lstModules.Items.Objects[I]));
       cbbAdd.ItemIndex:=cbbAdd.Items.IndexOfObject(TObject(lstModules.Items.Objects[I]));
       btnAddClick(Sender);
       sVak:=cbbAdd.Items.Strings[cbbAdd.ItemIndex];
       for a:=0 to cbbAdd.Items.Count-1 do
       begin
        if (Pos(sVak,cbbAdd.Items.Strings[a])>0) AND (Length(sVak)<Length(cbbAdd.Items.Strings[a])) then
          begin
            (Sender AS TListBox).AddItem(cbbAdd.Items.Strings[a],TObject(cbbAdd.Items.Objects[a]));
          end;
        end;
     end;
       for I := Items.Count - 1 downto 0 do
         if Selected[I] then
               Items.Delete(I);
 end;
end;

procedure TForm1.lstCurrentDragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
    Accept := (Source is TListBox);
end;

procedure TForm1.lstModulesMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  index:Integer;
begin
  index:=Integer(lstModules.Items.Objects[lstModules.ItemIndex]);
  lbl1Name.Caption:=moduleList[index].sName;
  lbl1Year.Caption:=IntToStr(moduleList[index].iYear);
  lbl1Sem.Caption:=IntToStr(moduleList[index].iType);
  if ssShift in Shift then
    lstModules.BeginDrag(True);
end;

procedure TForm1.shpColorMouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  color:TColor;
begin
  dlgColor1.Execute;
  color:=dlgColor1.Color;
  arrColors[lstColors.ItemIndex+1]:=color;
  shpColor.Brush.Color:=arrColors[lstColors.ItemIndex+1];
  cbbCurrentChange(Sender);
end;

procedure TForm1.btn7Click(Sender: TObject);
begin
  pnlColors.Visible:=False;
end;

end.
