unit Unit15181;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, cxLookAndFeelPainters,
  cxButtons, cxLabel, cxDropDownEdit, cxCalendar, cxContainer, cxTextEdit,
  cxMaskEdit, cxGridLevel, cxClasses, cxControls, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  ExtCtrls, cxPC, DBAccess, Ora, MemDS, cxCheckBox, cxGroupBox,
  cxRadioGroup;

type
  TForm15181 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxComboBox1: TcxComboBox;
    cxDateEdit1: TcxDateEdit;
    cxDateEdit2: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    Panel3: TPanel;
    SearchButtonPerfomance: TcxButton;
    cxLabel5: TcxLabel;
    cxComboBox2: TcxComboBox;
    cxGrid1DBTableView1OPERATING_DAY: TcxGridDBColumn;
    cxGrid1DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1FACT: TcxGridDBColumn;
    cxGrid1DBTableView1NORMO: TcxGridDBColumn;
    cxGrid1DBTableView1START_WORK: TcxGridDBColumn;
    cxGrid1DBTableView1END_WORK: TcxGridDBColumn;
    Shape1: TShape;
    cxTabSheet1: TcxTabSheet;
    ResetButtonPerfomance: TcxButton;
    cxTextEdit1: TcxTextEdit;
    cxLabel6: TcxLabel;
    CheckAllTypeWorks: TcxCheckBox;
    cxGrid1DBTableView1DIFF_TIME: TcxGridDBColumn;
    Panel4: TPanel;
    cxTabSheet3: TcxTabSheet;
    cxTabSheet4: TcxTabSheet;
    cxTabSheet5: TcxTabSheet;
    cxTabSheet6: TcxTabSheet;
    cxTabSheet7: TcxTabSheet;
    cxTabSheet8: TcxTabSheet;
    Panel5: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel6: TPanel;
    Panel7: TPanel;
    ExportButtonPerformance: TcxButton;
    Panel8: TPanel;
    Shape2: TShape;
    cxDateEdit3: TcxDateEdit;
    cxDateEdit4: TcxDateEdit;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxLabel9: TcxLabel;
    ResetButtonRating: TcxButton;
    cxLabel10: TcxLabel;
    cxComboBox3: TcxComboBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel12: TcxLabel;
    Panel9: TPanel;
    SearchButtonRating: TcxButton;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    Panel10: TPanel;
    ExportButtonRating: TcxButton;
    cxGrid1DBTableView1TIME_WORK_SEC: TcxGridDBColumn;
    cxGrid1DBTableView1PERF_ONE_HOURS: TcxGridDBColumn;
    cxGrid1DBTableView1PERF_IN_PERC: TcxGridDBColumn;
    cxPageControl2: TcxPageControl;
    cxTabSheet9: TcxTabSheet;
    cxTabSheet10: TcxTabSheet;
    OraDataSource1: TOraDataSource;
    OraQuery1: TOraQuery;
    OraQuery2: TOraQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel12: TPanel;
    OraDataSource2: TOraDataSource;
    Panel13: TPanel;
    Shape3: TShape;
    cxComboBox4: TcxComboBox;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxLabel13: TcxLabel;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    Panel14: TPanel;
    btnSearchPerformanceWorks: TcxButton;
    btnResetPerformanceWorks: TcxButton;
    cxTextEdit3: TcxTextEdit;
    cxLabel17: TcxLabel;
    Panel15: TPanel;
    cxButton3: TcxButton;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid4DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid4DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGrid4DBTableView1WORK_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1SUMTIME_WORK_SEC: TcxGridDBColumn;
    cxGrid4DBTableView1ROUNDAVGPERF_ONE_HOURS2: TcxGridDBColumn;
    cxGrid4DBTableView1ROUNDAVGPERF_IN_PERC2: TcxGridDBColumn;
    cxGrid4DBTableView1SUMFACT: TcxGridDBColumn;
    OraQuery3: TOraQuery;
    cxTabSheet11: TcxTabSheet;
    Panel16: TPanel;
    Panel17: TPanel;
    Shape4: TShape;
    cxComboBox6: TcxComboBox;
    cxDateEdit7: TcxDateEdit;
    cxDateEdit8: TcxDateEdit;
    cxLabel18: TcxLabel;
    cxLabel19: TcxLabel;
    cxLabel20: TcxLabel;
    cxLabel21: TcxLabel;
    Panel18: TPanel;
    btnSearchResult: TcxButton;
    btnResetResult: TcxButton;
    cxTextEdit4: TcxTextEdit;
    cxLabel23: TcxLabel;
    Panel19: TPanel;
    cxButton4: TcxButton;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    OraDataSource3: TOraDataSource;
    cxGrid5DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid5DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid5DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid5DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid5DBTableView1SUMFACT: TcxGridDBColumn;
    cxGrid4DBTableView1AVGNORMO: TcxGridDBColumn;
    OraQuery4: TOraQuery;
    OraDataSource4: TOraDataSource;
    cxGrid2DBTableView1ID_WEIGHT: TcxGridDBColumn;
    cxGrid2DBTableView1MONTH_WEIGHT: TcxGridDBColumn;
    cxGrid2DBTableView1YEAR_WEIGHT: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_VISIT: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_PERFORMANCE: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_DISCIPLINE: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_EXECUTION: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_QUALITY: TcxGridDBColumn;
    cxGrid2DBTableView1WEIGHT_UNIVERSALITY: TcxGridDBColumn;
    cxGrid2DBTableView1SUM_WEIGHT: TcxGridDBColumn;
    cxComboBox7: TcxComboBox;
    cxComboBox8: TcxComboBox;
    btnAddWeight: TcxButton;
    btnChangeWeight: TcxButton;
    cxLabel16: TcxLabel;
    cxLabel22: TcxLabel;
    cxLabel24: TcxLabel;
    cxLabel25: TcxLabel;
    cxLabel26: TcxLabel;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxLabel29: TcxLabel;
    cxGrid2DBTableView1MONTH_W: TcxGridDBColumn;
    cxGrid4DBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGrid4DBTableView1PERFORMANCEONE: TcxGridDBColumn;
    cxGrid4DBTableView1PERFONEINPERC: TcxGridDBColumn;
    cxGrid5DBTableView1X: TcxGridDBColumn;
    cxGrid5DBTableView1PERF_ONE_HOURS: TcxGridDBColumn;
    cxGrid5DBTableView1PERF_IN_PERC: TcxGridDBColumn;
    cxGrid5DBTableView1PERFORMANCEONE: TcxGridDBColumn;
    cxGrid5DBTableView1PERFONEINPERC: TcxGridDBColumn;
    cxMaskEdit1: TcxMaskEdit;
    cxMaskEdit2: TcxMaskEdit;
    cxMaskEdit3: TcxMaskEdit;
    cxMaskEdit4: TcxMaskEdit;
    cxMaskEdit5: TcxMaskEdit;
    cxMaskEdit6: TcxMaskEdit;
    orqryRaiting1: TOraQuery;
    dsRaiting1: TOraDataSource;
    cxGrid3DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid3DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid3DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid3DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid3DBTableView1PERFORMANCE: TcxGridDBColumn;
    cxRdGrpSwitchDept: TcxRadioGroup;
    CheckBox1: TCheckBox;
    CheckBox2: TCheckBox;
    CheckBox3: TCheckBox;
    CheckBox4: TCheckBox;
    cxRdGrpWORK: TcxRadioGroup;
    cxRdGrpResult: TcxRadioGroup;
    cxGrid5DBTableView1DEPT_WORK: TcxGridDBColumn;
    orqryInitiaLData: TOraQuery;
    cxTabSheet12: TcxTabSheet;
    Panel11: TPanel;
    cxGrid6: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel20: TPanel;
    Shape5: TShape;
    cxComboBox5: TcxComboBox;
    cxDateEdit9: TcxDateEdit;
    cxDateEdit10: TcxDateEdit;
    cxLabel30: TcxLabel;
    cxLabel31: TcxLabel;
    cxLabel32: TcxLabel;
    cxLabel33: TcxLabel;
    Panel21: TPanel;
    btnSearchInitData: TcxButton;
    cxLabel34: TcxLabel;
    cxComboBox9: TcxComboBox;
    btnResetInitDATA: TcxButton;
    cxTextEdit5: TcxTextEdit;
    cxLabel35: TcxLabel;
    cxCheckBox1: TcxCheckBox;
    CheckBox5: TCheckBox;
    cxRdGrpForINITDATA: TcxRadioGroup;
    Panel22: TPanel;
    btnInitData: TcxButton;
    dsInitiaLData: TOraDataSource;
    cxGridDBTableView1OPERATING_DAY: TcxGridDBColumn;
    cxGridDBTableView1TAB_NUM: TcxGridDBColumn;
    cxGridDBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGridDBTableView1FULL_NAME: TcxGridDBColumn;
    cxGridDBTableView1DEPT_USER: TcxGridDBColumn;
    cxGridDBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGridDBTableView1WORK_UNIT: TcxGridDBColumn;
    cxGridDBTableView1WORK_NAME: TcxGridDBColumn;
    cxGridDBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGridDBTableView1FACT: TcxGridDBColumn;
    cxGridDBTableView1NORMO: TcxGridDBColumn;
    cxGridDBTableView1TIME_WORK_SEC: TcxGridDBColumn;
    cxGridDBTableView1PERF_ONE_HOURS: TcxGridDBColumn;
    cxGridDBTableView1PERF_IN_PERC: TcxGridDBColumn;
    cxGridDBTableView1START_WORK: TcxGridDBColumn;
    cxGridDBTableView1END_WORK: TcxGridDBColumn;
    cxGridDBTableView1DIFF_TIME: TcxGridDBColumn;
    cxGrid5DBTableView1TIME_WORK: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure SearchButtonPerfomanceClick(Sender: TObject);
    procedure ResetButtonPerfomanceClick(Sender: TObject);
    procedure ResetButtonRatingClick(Sender: TObject);
    procedure SearchButtonRatingClick(Sender: TObject);
    procedure ExportButtonPerformanceClick(Sender: TObject);
    procedure btnSearchPerformanceWorksClick(Sender: TObject);
    procedure btnSearchResultClick(Sender: TObject);
    procedure btnAddWeightClick(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxGrid2DBTableView1CellClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure btnChangeWeightClick(Sender: TObject);
    procedure ExportButtonRatingClick(Sender: TObject);
    procedure btnResetInitDATAClick(Sender: TObject);
    procedure btnSearchInitDataClick(Sender: TObject);
    procedure btnInitDataClick(Sender: TObject);
    procedure btnResetPerformanceWorksClick(Sender: TObject);
    procedure btnResetResultClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15181: TForm15181;

implementation


{$R *.dfm}

uses DM_Plan_Pers,
     Dmod,
     DMod2,
     cxGridExportLink,
     cxExport,
     DateUtils;

procedure TForm15181.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  cxPageControl1.Visible:=False;
  if BaseID in [0, 8] then
    begin
      cxPageControl1.Visible := TRUE;
      //---------------------------------- begin видимость вкладок
      cxTabSheet3.TabVisible := FALSE;
      cxTabSheet4.TabVisible := FALSE;
      cxTabSheet5.TabVisible := FALSE;
      cxTabSheet6.TabVisible := FALSE;
      cxTabSheet7.TabVisible := FALSE;
      //---------------------------------- end видимость вкладок
      OraQuery1.ReadOnly := True; // отключаем редактирование таблиц
      OraQuery2.ReadOnly:=True;
      OraQuery3.ReadOnly:=True;
      OraQuery4.ReadOnly:=True;
      orqryRaiting1.ReadOnly:=True;
      OraQuery1.Active := False;
      OraQuery1.Active := True;
      OraQuery2.Active := False;
      OraQuery2.Active := True;
      OraQuery3.Active := False;
      OraQuery3.Active := True;
      OraQuery4.Active := False;
      OraQuery4.Active := True;
      orqryRaiting1.Active := False;
      orqryRaiting1.Active := True;
      orqryInitiaLData.Active := False;
      orqryInitiaLData.Active := True;
      DM_PlanPers.q_Dept_Acc.Active:=False;
      DM_PlanPers.q_Dept_Acc.Params.ParamByName('id_user').AsInteger:=UserID;
      DM_PlanPers.q_Dept_Acc.Active:=True;
    end;
  cxComboBox1.Properties.Items.Clear;
  cxComboBox2.Properties.Items.Clear;
  cxComboBox3.Properties.Items.Clear;
  cxComboBox4.Properties.Items.Clear;
  cxComboBox5.Properties.Items.Clear;
  cxComboBox6.Properties.Items.Clear;
  cxComboBox7.Properties.Items.Clear;
  cxComboBox9.Properties.Items.Clear;

  OraQuery1.MacroByName('dept_FILTER').Active := False;
  OraQuery1.MacroByName('deptUSER_filter').Active := False;
  OraQuery1.MacroByName('date_filter').Active := False;
  OraQuery1.Macros.MacroByName('work_filter').Active := False;

  with DM_PlanPers.OraQuery1 do
    begin
      SQL.Clear;
      SQL.Add('SELECT a.id_dept, a.dept_name_short ');
      SQL.Add('FROM plan_pers_dept a INNER JOIN  user_access_dept b ON a.id_dept = b.id_dept ');
      SQL.Add('Where b.id_user = ' + IntToStr(UserID) + ' ');
      SQL.Add('ORDER BY dept_name_short');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;
  DM_PlanPers.OraQuery1.First;
  for i := 0 to DM_PlanPers.OraQuery1.RecordCount - 1 do
    begin
      cxComboBox1.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
        Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
      cxComboBox3.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
        Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
      cxComboBox4.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
        Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
      cxComboBox5.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
        Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
      cxComboBox6.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
        Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
      DM_PlanPers.OraQuery1.Next;
    end;

  with DM_PlanPers.OraQuery1 do
    begin
      SQL.Clear;
      SQL.Add('SELECT DISTINCT work_unit ');
      SQL.Add('FROM plan_pers_works_LIST ');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;
  DM_PlanPers.OraQuery1.First;
  for i := 0 to DM_PlanPers.OraQuery1.RecordCount - 1 do
    begin
      cxComboBox2.Properties.Items.Add(DM_PlanPers.OraQuery1.Fields[0].AsString);
      cxComboBox9.Properties.Items.Add(DM_PlanPers.OraQuery1.Fields[0].AsString);
      DM_PlanPers.OraQuery1.Next;
    end;


  with cxComboBox7.Properties.Items do
   begin
      AddObject('январь', TObject(1));
      AddObject('февраль', TObject(2));
      AddObject('март', TObject(3));
      AddObject('апрель', TObject(4));
      AddObject('май', TObject(5));
      AddObject('июнь', TObject(6));
      AddObject('июль', TObject(7));
      AddObject('август', TObject(8));
      AddObject('сентябрь', TObject(9));
      AddObject('октябрь', TObject(10));
      AddObject('ноябрь', TObject(11));
      AddObject('декабрь', TObject(12));
   end;

  cxComboBox8.Properties.Items.Add(IntToStr(YearOF(now) - 1));
  cxComboBox8.Properties.Items.Add(IntToStr(YearOF(now)));
  cxComboBox8.Properties.Items.Add(IntToStr(YearOF(now )+ 1));
end;

procedure TForm15181.SearchButtonPerfomanceClick(Sender: TObject);
var
  m: Integer;
begin

  if (DateToStr(cxDateEdit1.Date) = '00.00.0000') or (DateToStr(cxDateEdit2.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit1.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit2.Date) <> '00.00.0000')
       and (CheckBox1.Checked = FALSE))
      AND (cxComboBox1.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit1.Date) <> '00.00.0000') or (DateToStr(cxDateEdit2.Date) <> '00.00.0000'))
      AND ((CheckBox1.Checked = TRUE) or  (cxComboBox1.Text <> '')) then
    begin

      if (cxComboBox1.Text <> '') Then
        m := Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
      OraQuery1.MacroByName('date_filter').Active := True;

      OraQuery1.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRdGrpSwitchDept.ItemIndex = 0   Then
        begin
         OraQuery1.MacroByName('deptUSER_filter').Active := True;
         OraQuery1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
             OraQuery1.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpSwitchDept.ItemIndex = 1   Then
        begin
         OraQuery1.MacroByName('dept_FILTER').Active := True;
         OraQuery1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          OraQuery1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox1.Checked = True then
        begin
          OraQuery1.MacroByName('deptUSER_filter').Active := FALSE;
          OraQuery1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      OraQuery1.Params.ParamByName('date_start').AsDate := cxDateEdit1.Date;
      OraQuery1.Params.ParamByName('date_end').AsDate := cxDateEdit2.Date;

      if (cxComboBox2.Text <> '') and (CheckAllTypeWorks.Checked = False) then
      begin
        OraQuery1.MacroByName('work_filter').Active := True;
        OraQuery1.Params.ParamByName('WORK_UNIT').AsString := cxComboBox2.Text;
      end
      else begin
        OraQuery1.Macros.MacroByName('work_filter').Active := False;
      end;

      if CheckAllTypeWorks.Checked = True then
        OraQuery1.Macros.MacroByName('work_filter').Active := False;

      if cxTextEdit1.Text <> '' then
      begin
        OraQuery1.MacroByName('fio_filter').Active := True;
        OraQuery1.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit1.Text) + '%';
      end
      else begin
        OraQuery1.Macros.MacroByName('fio_filter').Active := False;
      end;
      OraQuery1.Active := False;
      OraQuery1.Active := True;
   // end
  // else
 //  begin
  //   OraQuery1.MacroByName('date_filter').Active := False;
   end;

end;

procedure TForm15181.ResetButtonPerfomanceClick(Sender: TObject);
begin
  cxDateEdit1.Clear;
  cxDateEdit2.Clear;
  cxComboBox1.Clear;
  cxComboBox2.Clear;
  cxTextEdit1.Clear;
  CheckAllTypeWorks.Checked := False;
  CheckBox1.Checked := False;
end;

procedure TForm15181.ResetButtonRatingClick(Sender: TObject);
begin
  cxDateEdit3.Clear;
  cxDateEdit4.Clear;
  cxComboBox3.Clear;
  cxTextEdit2.Clear;
end;

procedure TForm15181.btnResetInitDATAClick(Sender: TObject);
begin
  cxDateEdit9.Clear;
  cxDateEdit10.Clear;
  cxComboBox5.Clear;
  cxComboBox9.Clear;
  cxTextEdit5.Clear;
  cxCheckBox1.Checked := False;
  CheckBox5.Checked := False;
end;

procedure TForm15181.btnResetPerformanceWorksClick(Sender: TObject);
begin
  cxDateEdit5.Clear;
  cxDateEdit6.Clear;
  cxComboBox4.Clear;
  cxTextEdit3.Clear;
  CheckBox3.Checked := False;
end;

procedure TForm15181.btnResetResultClick(Sender: TObject);
begin
  cxDateEdit7.Clear;
  cxDateEdit8.Clear;
  cxComboBox6.Clear;
  cxTextEdit4.Clear;
  CheckBox4.Checked := False;
end;

procedure TForm15181.SearchButtonRatingClick(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit3.Date) = '00.00.0000') or (DateToStr(cxDateEdit4.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit3.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit4.Date) <> '00.00.0000')
       and (CheckBox2.Checked = FALSE)) AND (cxComboBox3.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit3.Date) <> '00.00.0000') or (DateToStr(cxDateEdit4.Date) <> '00.00.0000'))
      AND ((CheckBox2.Checked = TRUE) or  (cxComboBox3.Text <> '')) then
    begin
      if (cxComboBox3.Text <> '') then
        begin
         m := Integer(cxComboBox3.Properties.Items.Objects[cxComboBox3.ItemIndex]);
         orqryRaiting1.MacroByName('dept_FILTER').Active := True;
         orqryRaiting1.Params.ParamByName('dept_id').AsInteger  := m;
        end;

      orqryRaiting1.Params.ParamByName('nom_user').AsInteger := UserID;
      orqryRaiting1.MacroByName('date_filter').Active := TRUE;
      orqryRaiting1.Params.ParamByName('date_start').AsDate := cxDateEdit3.Date;
      orqryRaiting1.Params.ParamByName('date_end').AsDate := cxDateEdit4.Date;

      if CheckBox2.Checked = TRUE then
        begin
          orqryRaiting1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if cxTextEdit2.Text <> '' then
        begin
          orqryRaiting1.MacroByName('fio_filter').Active := True;
          orqryRaiting1.Params.ParamByName('FIO').AsString:= '%' + AnsiLowerCase(cxTextEdit2.Text) + '%';
        end
        else begin
          orqryRaiting1.Macros.MacroByName('fio_filter').Active := False;
      end;
    orqryRaiting1.Active := False;
    orqryRaiting1.Active := True;
    end
   else
   begin
    orqryRaiting1.MacroByName('date_filter').Active := False;
    orqryRaiting1.MacroByName('dept_FILTER').Active := False;
   end;

end;

procedure TForm15181.ExportButtonPerformanceClick(Sender: TObject);
begin
  if OraQuery1.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Произв-ть - груп-ка по работе.xls';
        if DM_PlanPers.SaveDialog1.Execute then
          begin
            ExportGridToExcel(DM_PlanPers.SaveDialog1.FileName, cxGrid1, True, True, True, 'xls');
          end;
        DM_PlanPers.SaveDialog1.Filter:= '';
      end
    else
      begin
        MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
      end;
end;

procedure TForm15181.btnSearchPerformanceWorksClick(Sender: TObject);
var
  m: Integer;
begin

  if (DateToStr(cxDateEdit5.Date) = '00.00.0000') or (DateToStr(cxDateEdit6.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit6.Date) <> '00.00.0000')
       AND (CheckBox3.Checked = False) AND (cxComboBox4.Text = ''))  then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') or (DateToStr(cxDateEdit6.Date) <> '00.00.0000'))
       AND ((CheckBox3.Checked = TRUE) or  (cxComboBox4.Text <> '')) then
    begin
      if  cxComboBox4.Text <> '' then
        begin
          m := Integer(cxComboBox4.Properties.Items.Objects[cxComboBox4.ItemIndex]);
          OraQuery2.MacroByName('dept_FILTER').Active := True;
          OraQuery2.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          OraQuery2.MacroByName('dept_FILTER').Active := FALSE;
        end;
      OraQuery2.Params.ParamByName('nom_user').AsInteger := UserID;
      OraQuery2.MacroByName('date_filter').Active := True;
      OraQuery2.Params.ParamByName('date_start').AsDate := cxDateEdit5.Date;
      OraQuery2.Params.ParamByName('date_end').AsDate := cxDateEdit6.Date;

      if cxRdGrpWORK.ItemIndex = 0   Then
         begin
          OraQuery2.MacroByName('deptUSER_filter').Active := True;
          OraQuery2.Params.ParamByName('dept_id').AsInteger  := m;
         end
      else
        begin
           OraQuery2.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpWORK.ItemIndex = 1   Then
         begin
           OraQuery2.MacroByName('dept_FILTER').Active := True;
           OraQuery2.Params.ParamByName('dept_id').AsInteger  := m;
         end
      else
        begin
          OraQuery2.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox3.Checked = TRUE then
        begin
          OraQuery2.MacroByName('dept_FILTER').Active := False;
        end;

      if cxTextEdit3.Text <> '' then
      begin
        OraQuery2.MacroByName('fio_filter').Active := True;
        OraQuery2.Params.ParamByName('FIO').AsString:= '%' + AnsiLowerCase(cxTextEdit3.Text) + '%';
      end
      else begin
        OraQuery2.Macros.MacroByName('fio_filter').Active := False;
      end;
      OraQuery2.Active := False;
      OraQuery2.Active := True;
    end
   else
   begin
     OraQuery2.MacroByName('date_filter').Active := False;
   end;
end;

procedure TForm15181.btnSearchResultClick(Sender: TObject);
var
  m: Integer;
begin

  if (DateToStr(cxDateEdit7.Date) = '00.00.0000') or (DateToStr(cxDateEdit8.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit7.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit8.Date) <> '00.00.0000')
       AND (CheckBox4.Checked = False) AND (cxComboBox6.Text = ''))then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit7.Date) <> '00.00.0000') or (DateToStr(cxDateEdit8.Date) <> '00.00.0000'))
       AND ((CheckBox4.Checked = TRUE) or  (cxComboBox6.Text <> '')) then
    begin
      if cxComboBox6.Text <> '' then
        begin
          m := Integer(cxComboBox6.Properties.Items.Objects[cxComboBox6.ItemIndex]);
          OraQuery3.MacroByName('dept_FILTER').Active := True;
          OraQuery3.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          OraQuery3.MacroByName('dept_FILTER').Active := False;
      end;

      OraQuery3.Params.ParamByName('nom_user').AsInteger := UserID;
      OraQuery3.MacroByName('date_filter').Active := True;
      OraQuery3.Params.ParamByName('date_start').AsDate := cxDateEdit7.Date;
      OraQuery3.Params.ParamByName('date_end').AsDate := cxDateEdit8.Date;

      if cxRdGrpResult.ItemIndex = 0   Then
         begin
          OraQuery3.MacroByName('deptUSER_filter').Active := True;
          OraQuery3.Params.ParamByName('dept_id').AsInteger  := m;
         end
      else
        begin
           OraQuery3.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpResult.ItemIndex = 1   Then
         begin
           OraQuery3.MacroByName('dept_FILTER').Active := True;
           OraQuery3.Params.ParamByName('dept_id').AsInteger  := m;
         end
      else
        begin
          OraQuery3.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox4.Checked = TRUE then
        begin
          OraQuery3.MacroByName('dept_FILTER').Active := False;
        end;

      if cxTextEdit4.Text <> '' then
      begin
        OraQuery3.MacroByName('fio_filter').Active := True;
        OraQuery3.Params.ParamByName('FIO').AsString:= '%' + AnsiLowerCase(cxTextEdit4.Text) + '%';
      end
      else begin
        OraQuery3.Macros.MacroByName('fio_filter').Active := False;
      end;
      OraQuery3.Active := False;
      OraQuery3.Active := True;
    end
   else
   begin
     OraQuery3.MacroByName('date_filter').Active := False;
   end;
end;

procedure TForm15181.btnAddWeightClick(Sender: TObject);
var
  month_weight_Index, i: Integer;
  year_weight: string;
  month_weight,
  w_visit,
  w_performance,
  w_discipline,
  w_execution,
  w_quality,
  w_universality : STRING;
  flag :Integer;

begin

   flag :=0;
   month_weight_Index :=  Integer(cxComboBox7.Properties.Items.Objects[cxComboBox7.ItemIndex]);
   month_weight := cxComboBox7.Text;
   year_weight := cxComboBox8.Text;
   w_visit := cxMaskEdit1.Text;
   w_performance := cxMaskEdit2.Text;
   w_discipline := cxMaskEdit3.Text;
   w_execution := cxMaskEdit4.Text;
   w_quality := cxMaskEdit5.Text;
   w_universality := cxMaskEdit6.Text;

   if (w_performance = '') or (w_discipline = '') or (w_visit = '') or (w_execution = '')
      or  (w_quality = '')  or (w_universality = '') or  (month_weight = '') or (year_weight = '') then
      ShowMessage('Заполните все поля!');

    if (w_performance <> '') and (w_discipline <> '') and (w_visit <> '') and (w_execution <> '')
      and  (w_quality <> '')  and (w_universality <> '') and  (month_weight <> '') and (year_weight <> '') then
      begin
         with DM_PlanPers.OraQuery1 do
          begin
            SQL.Clear;
            SQL.Add('SELECT month_weight, year_weight ');
            SQL.Add('FROM plan_pers_raiting_weight_fact ');
            try
            ExecSQL except
              on E: EDatabaseError do
                ShowMessage(E.Message);
            end;
          end;
        DM_PlanPers.OraQuery1.First;
        for i:=0 to DM_PlanPers.OraQuery1.RecordCount - 1 do
          begin
            if (DM_PlanPers.OraQuery1.Fields[0].AsInteger = month_weight_Index)
               and (DM_PlanPers.OraQuery1.Fields[1].AsString = year_weight) THEN
               begin
                 flag := 1;
                 Break;
               end;
             DM_PlanPers.OraQuery1.Next;
          end;
      end;

   if (flag = 1) then
    ShowMessage('Запись с данным месяцем и годом уже есть в таблице!');

   if (w_performance <> '') and (w_discipline <> '') and (w_visit <> '') and (w_execution <> '')
      and  (w_quality <> '')  and (w_universality <> '') and  (month_weight <> '') and (year_weight <> '')
      and (flag <> 1) then
    begin
       with DM_PlanPers.OraQuery1 do
         begin
           SQL.Clear;
           SQL.Add('INSERT INTO plan_pers_raiting_weight_fact( id_weight, month_weight, year_weight, weight_visit, ');
           SQL.Add(' weight_performance, weight_discipline, weight_execution, weight_quality, weight_universality )  ');
           SQL.Add(' VALUES ( pp_raiting_weight_fact_sec.nextval, ');
              SQL.Add(' ''' + IntToStr(month_weight_Index) + ''', ');
              SQL.Add(' ''' + year_weight + ''', ');
              SQL.Add(' ' + w_visit + ', ');
              SQL.Add(' ' + w_performance + ', ');
              SQL.Add(' ' + w_discipline + ', ');
              SQL.Add(' ' + w_execution + ', ');
              SQL.Add(' ' + w_quality + ', ');
              SQL.Add(' ' + w_universality + ') ');
              try
              ExecSQL except
                on E: EDatabaseError do
                  ShowMessage(E.Message);
              end;
            end;
        ShowMessage('Весовой коэффициент добавлен');
        OraQuery4.Refresh;
        cxComboBox7.Text := '';
        cxComboBox8.Text := '';
        cxMaskEdit1.Text := '';
        cxMaskEdit2.Text := '';
        cxMaskEdit3.Text := '';
        cxMaskEdit4.Text := '';
        cxMaskEdit5.Text := '';
        cxMaskEdit6.Text := '';
    end;
end;

procedure TForm15181.cxButton4Click(Sender: TObject);
begin
if OraQuery3.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Произв-ть - результ-й отчет.xls';
        if DM_PlanPers.SaveDialog1.Execute then
          begin
            ExportGridToExcel(DM_PlanPers.SaveDialog1.FileName, cxGrid5, True, True, True, 'xls');
          end;
        DM_PlanPers.SaveDialog1.Filter:= '';
      end
    else
      begin
        MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
      end;
end;

procedure TForm15181.cxButton3Click(Sender: TObject);
begin
if OraQuery2.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Произв-ть - груп-ка по работам.xls';
        if DM_PlanPers.SaveDialog1.Execute then
          begin
            ExportGridToExcel(DM_PlanPers.SaveDialog1.FileName, cxGrid4, True, True, True, 'xls');
          end;
        DM_PlanPers.SaveDialog1.Filter:= '';
      end
    else
      begin
        MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
      end;
end;

procedure TForm15181.cxGrid2DBTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  z: Integer;
begin
  for z:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount - 1 do
    begin
      cxComboBox7.ItemIndex := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1MONTH_WEIGHT.Index) - 1;
      cxComboBox8.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1YEAR_WEIGHT.Index);
      cxMaskEdit1.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_VISIT.Index);
      cxMaskEdit2.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_PERFORMANCE.Index);
      cxMaskEdit3.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_DISCIPLINE.Index);
      cxMaskEdit4.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_EXECUTION.Index);
      cxMaskEdit5.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_QUALITY.Index);
      cxMaskEdit6.Text := cxGrid2DBTableView1.DataController.GetValue(
         cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1WEIGHT_UNIVERSALITY.Index);
    end;
end;

procedure TForm15181.btnChangeWeightClick(Sender: TObject);
var
  z, month_weight_Index, flag: Integer;
  id_weight: string;

  month_weight,
  year_weight,
  w_visit,
  w_performance,
  w_discipline,
  w_execution,
  w_quality,
  w_universality: string;
begin

   flag := 0;
   month_weight :=  cxComboBox8.Text;
   month_weight_Index :=  Integer(cxComboBox7.Properties.Items.Objects[cxComboBox7.ItemIndex]);
   year_weight := cxComboBox8.Text;
   w_visit := cxMaskEdit1.Text;
   w_performance := cxMaskEdit2.Text;
   w_discipline := cxMaskEdit3.Text;
   w_execution := cxMaskEdit4.Text;
   w_quality := cxMaskEdit5.Text;
   w_universality := cxMaskEdit6.Text;

   if (w_performance = '') or (w_discipline = '') or (w_visit = '') or (w_execution = '')
      or  (w_quality = '')  or (w_universality = '') or (month_weight = '') or (year_weight = '') then
      ShowMessage('Заполните пустые поля!');

  if (w_performance <> '') and (w_discipline <> '') and (w_visit <> '') and (w_execution <> '')
      and  (w_quality <> '')  and (w_universality <> '') and  (month_weight <> '') and (year_weight <> '') then
    begin
      for z:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_weight := cxGrid2DBTableView1.DataController.GetValue(
             cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1ID_WEIGHT.index);
        end;

      with DM_PlanPers.OraQuery1 do
         begin
           SQL.Clear;
           SQL.Add('SELECT month_weight, year_weight ');
           SQL.Add('FROM plan_pers_raiting_weight_fact ');
           SQL.Add(' WHERE id_weight = ' + id_weight + ' ');
             try
               ExecSQL except
                 on E: EDatabaseError do
                   ShowMessage(E.Message);
             end;
         end;

        if (DM_PlanPers.OraQuery1.Fields[0].AsInteger <> month_weight_Index)
              or (DM_PlanPers.OraQuery1.Fields[1].AsString <> year_weight) THEN
          begin
            flag := 1;
          end;
    end;

   if (flag = 1) then
    ShowMessage('В режиме редактирования нельзя изменить месяц и год записи!');

  if (w_performance <> '') and (w_discipline <> '') and (w_visit <> '') and (w_execution <> '')
      and  (w_quality <> '')  and (w_universality <> '') and  (month_weight <> '') and (year_weight <> '')
      and (flag <> 1) then
    begin
        with DM_PlanPers.OraQuery1 do
          begin
            SQL.Clear;
            SQL.Add(' UPDATE plan_pers_raiting_weight_fact ');
            SQL.Add(' SET  month_weight = ''' + IntToStr(cxComboBox7.ItemIndex + 1) + ''', ');
            SQL.Add('      year_weight = ''' + cxComboBox8.Text + ''', ');
            SQL.Add('      weight_visit = ''' + cxMaskEdit1.Text + ''', ');
            SQL.Add('      weight_performance = ''' + cxMaskEdit2.Text + ''', ');
            SQL.Add('      weight_discipline =  ''' + cxMaskEdit3.Text + ''', ');
            SQL.Add('      weight_execution = ''' + cxMaskEdit4.Text + ''', ');
            SQL.Add('      weight_quality = ''' + cxMaskEdit5.Text + ''', ');
            SQL.Add('      weight_universality = ''' + cxMaskEdit6.Text +'''');
            SQL.Add(' WHERE id_weight = ' + id_weight + ' ');
            try
              ExecSQL except
              on E: EDatabaseError do
               ShowMessage(E.Message);
            end;
          end;
          OraQuery4.Refresh;
          ShowMessage('Запись обновлена');
          cxComboBox7.Text := '';
          cxComboBox8.Text := '';
          cxMaskEdit1.Text := '';
          cxMaskEdit2.Text := '';
          cxMaskEdit3.Text := '';
          cxMaskEdit4.Text := '';
          cxMaskEdit5.Text := '';
          cxMaskEdit6.Text := '';
    end;
end;

procedure TForm15181.ExportButtonRatingClick(Sender: TObject);
begin
 if orqryRaiting1.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Общий рейтинг.xls';
        if DM_PlanPers.SaveDialog1.Execute then
          begin
            ExportGridToExcel(DM_PlanPers.SaveDialog1.FileName, cxGrid3, True, True, True, 'xls');
          end;
        DM_PlanPers.SaveDialog1.Filter:= '';
      end
    else
      begin
        MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
      end;
end;


procedure TForm15181.btnSearchInitDataClick(Sender: TObject);
var
  m: Integer;
begin

  if (DateToStr(cxDateEdit9.Date) = '00.00.0000') or (DateToStr(cxDateEdit10.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit9.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit10.Date) <> '00.00.0000')
       and (CheckBox5.Checked = FALSE))
      AND (cxComboBox5.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit9.Date) <> '00.00.0000') or (DateToStr(cxDateEdit10.Date) <> '00.00.0000'))
      AND ((CheckBox5.Checked = TRUE) or  (cxComboBox5.Text <> '')) then
    begin

      if (cxComboBox5.Text <> '') Then
        m := Integer(cxComboBox5.Properties.Items.Objects[cxComboBox5.ItemIndex]);
      OraQuery1.MacroByName('date_filter').Active := True;

      orqryInitiaLData.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRdGrpForINITDATA.ItemIndex = 0   Then
        begin
         orqryInitiaLData.MacroByName('deptUSER_filter').Active := True;
         orqryInitiaLData.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
         orqryInitiaLData.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpForINITDATA.ItemIndex = 1   Then
        begin
         orqryInitiaLData.MacroByName('dept_FILTER').Active := True;
         orqryInitiaLData.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryInitiaLData.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox5.Checked = True then
        begin
          orqryInitiaLData.MacroByName('deptUSER_filter').Active := FALSE;
          orqryInitiaLData.MacroByName('dept_FILTER').Active := FALSE;
        end;

      orqryInitiaLData.Params.ParamByName('date_start').AsDate := cxDateEdit9.Date;
      orqryInitiaLData.Params.ParamByName('date_end').AsDate := cxDateEdit10.Date;

      if (cxComboBox9.Text <> '') and (cxCheckBox1.Checked = False) then
      begin
        orqryInitiaLData.MacroByName('work_filter').Active := True;
        orqryInitiaLData.Params.ParamByName('WORK_UNIT').AsString := cxComboBox9.Text;
      end
      else begin
        orqryInitiaLData.Macros.MacroByName('work_filter').Active := False;
      end;

      if cxCheckBox1.Checked = True then
        orqryInitiaLData.Macros.MacroByName('work_filter').Active := False;

      if cxTextEdit5.Text <> '' then
      begin
        orqryInitiaLData.MacroByName('fio_filter').Active := True;
        orqryInitiaLData.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit5.Text) + '%';
      end
      else begin
        orqryInitiaLData.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryInitiaLData.Active := False;
        orqryInitiaLData.Active := True;
   end;

end;

procedure TForm15181.btnInitDataClick(Sender: TObject);
begin
if orqryInitiaLData.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Произв-ть - исх-е данные.xls';
        if DM_PlanPers.SaveDialog1.Execute then
          begin
            ExportGridToExcel(DM_PlanPers.SaveDialog1.FileName, cxGrid6, True, True, True, 'xls');
          end;
        DM_PlanPers.SaveDialog1.Filter:= '';
      end
    else
      begin
        MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
      end;
end;


end.
