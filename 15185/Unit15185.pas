unit Unit15185;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxLabel, cxStyles, dxSkinscxPCPainter, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus,
  cxLookAndFeelPainters, DBAccess, Ora, MemDS, ExtCtrls, StdCtrls,
  cxButtons, cxDropDownEdit, cxCalendar, cxTextEdit, cxMaskEdit,
  cxGroupBox, cxRadioGroup, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxPC,
  cxGridBandedTableView, cxGridDBBandedTableView;

type
  TForm15185 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel3: TPanel;
    cxRdGrpSwitchDept: TcxRadioGroup;
    cxComboBox1: TcxComboBox;
    cxLabel4: TcxLabel;
    CheckALLDept: TCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel5: TcxLabel;
    cxDateEdit1: TcxDateEdit;
    cxLabel3: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxLabel2: TcxLabel;
    cxLabel1: TcxLabel;
    cxButton1: TcxButton;
    Shape1: TShape;
    Panel4: TPanel;
    btnSearchDownTime1: TcxButton;
    orqrySelfDiagnosis: TOraQuery;
    dsSelfDiagnosis: TOraDataSource;
    btnExportDownTime: TcxButton;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    cxGrid1DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid1DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid1DBTableView1DEPT_WORK: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_NAME: TcxGridDBColumn;
    cxGrid1DBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1OPERATING_DAY: TcxGridDBColumn;
    Panel5: TPanel;
    Panel6: TPanel;
    cxButton2: TcxButton;
    cxGrid2: TcxGrid;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    Panel7: TPanel;
    Shape2: TShape;
    cxRadioGroup1: TcxRadioGroup;
    cxComboBox2: TcxComboBox;
    cxLabel6: TcxLabel;
    CheckBox1: TCheckBox;
    cxTextEdit2: TcxTextEdit;
    cxLabel7: TcxLabel;
    cxDateEdit3: TcxDateEdit;
    cxLabel8: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxButton3: TcxButton;
    Panel8: TPanel;
    cxButton4: TcxButton;
    orqryInitData: TOraQuery;
    dsInitData: TOraDataSource;
    cxGrid2DBTableView1OPERATING_DAY: TcxGridDBColumn;
    cxGrid2DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid2DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid2DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid2DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGrid2DBTableView1WORK_UNIT: TcxGridDBColumn;
    cxGrid2DBTableView1WORK_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGrid2DBTableView1FACT: TcxGridDBColumn;
    cxGrid2DBTableView1START_WORK: TcxGridDBColumn;
    cxGrid2DBTableView1END_WORK: TcxGridDBColumn;
    cxGrid2DBTableView1DIFF_TIME: TcxGridDBColumn;
    cxGrid2DBTableView1VALIDE_WORK: TcxGridDBColumn;
    cxGrid2DBTableView1BIRZHA: TcxGridDBColumn;
    cxGrid2DBTableView1KTU: TcxGridDBColumn;
    cxRadioGroup2: TcxRadioGroup;
    cxLabel11: TcxLabel;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    cxLabel12: TcxLabel;
    cxGrid2DBTableView1ID_WORK: TcxGridDBColumn;
    cxGrid2DBTableView1PAYMENT_GENERAL: TcxGridDBColumn;
    cxGrid1DBTableView1ID_WORK: TcxGridDBColumn;
    cxGrid1DBTableView1PAYMENT_GENERAL: TcxGridDBColumn;
    cxGrid2DBTableView1START_EARLY: TcxGridDBColumn;
    cxGrid2DBTableView1LATE_END: TcxGridDBColumn;
    cxGrid2DBTableView1ZP_OP_DAY: TcxGridDBColumn;
    cxGrid2DBTableView1WORKSHIFT: TcxGridDBColumn;
    cxGrid2DBTableView1ID_SHIFT_CHECK_IN: TcxGridDBColumn;
    cxGrid2DBTableView1WORK_KTU: TcxGridDBColumn;
    cxGrid2DBTableView1KTU_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1NUM_MISSION: TcxGridDBColumn;
    cxGrid1DBTableView1ZP_OP_DAY: TcxGridDBColumn;
    cxRadioGroup3: TcxRadioGroup;
    cxGrid1DBTableView1KTU: TcxGridDBColumn;
    cxGrid1DBTableView1START_EARLY: TcxGridDBColumn;
    cxGrid1DBTableView1LATE_END: TcxGridDBColumn;
    cxGrid1DBTableView1BIRZHA: TcxGridDBColumn;
    cxGrid1DBTableView1VALIDW: TcxGridDBColumn;
    cxGrid1DBTableView1UNVALIDW: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_UNIT: TcxGridDBColumn;
    cxGrid1DBTableView1KTU_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBColumn;
    cxGrid2DBTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBColumn;
    cxGrid1DBTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBColumn;
    cxTabSheet3: TcxTabSheet;
    Panel9: TPanel;
    Panel10: TPanel;
    cxButton7: TcxButton;
    cxButton8: TcxButton;
    cxLabel13: TcxLabel;
    cxGrid3: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    cxGridLevel1: TcxGridLevel;
    Panel11: TPanel;
    Shape3: TShape;
    cxRadioGroup4: TcxRadioGroup;
    cxComboBox3: TcxComboBox;
    cxLabel14: TcxLabel;
    CheckBox2: TCheckBox;
    cxTextEdit3: TcxTextEdit;
    cxLabel15: TcxLabel;
    cxDateEdit5: TcxDateEdit;
    cxLabel16: TcxLabel;
    cxDateEdit6: TcxDateEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    cxButton9: TcxButton;
    Panel12: TPanel;
    cxButton10: TcxButton;
    cxRadioGroup5: TcxRadioGroup;
    dsInitData2: TOraDataSource;
    orqryInitData2: TOraQuery;
    cxGridDBTableView1OPERATING_DAY: TcxGridDBColumn;
    cxGridDBTableView1TAB_NUM: TcxGridDBColumn;
    cxGridDBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGridDBTableView1FULL_NAME: TcxGridDBColumn;
    cxGridDBTableView1DEPT_USER: TcxGridDBColumn;
    cxGridDBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGridDBTableView1WORK_UNIT: TcxGridDBColumn;
    cxGridDBTableView1ID_WORK: TcxGridDBColumn;
    cxGridDBTableView1WORK_NAME: TcxGridDBColumn;
    cxGridDBTableView1PAYMENT_GENERAL: TcxGridDBColumn;
    cxGridDBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGridDBTableView1FACT: TcxGridDBColumn;
    cxGridDBTableView1START_WORK: TcxGridDBColumn;
    cxGridDBTableView1END_WORK: TcxGridDBColumn;
    cxGridDBTableView1DIFF_TIME: TcxGridDBColumn;
    cxGridDBTableView1VALIDE_WORK: TcxGridDBColumn;
    cxGridDBTableView1TYPE_WORK: TcxGridDBColumn;
    cxGridDBTableView1INTERVAL_WORK: TcxGridDBColumn;
    cxGridDBTableView1ZP_OP_DAY: TcxGridDBColumn;
    cxGridDBTableView1WORKSHIFT: TcxGridDBColumn;
    cxGridDBTableView1ID_SHIFT_CHECK_IN: TcxGridDBColumn;
    cxGridDBTableView1WORK_KTU: TcxGridDBColumn;
    cxGridDBTableView1KTU_NAME: TcxGridDBColumn;
    cxGridDBTableView1NUM_MISSION: TcxGridDBColumn;
    cxButton11: TcxButton;
    cxTabSheet4: TcxTabSheet;
    Panel13: TPanel;
    Panel14: TPanel;
    cxButton12: TcxButton;
    cxButton14: TcxButton;
    cxGrid4: TcxGrid;
    cxGridLevel2: TcxGridLevel;
    Panel15: TPanel;
    Shape4: TShape;
    cxRadioGroup6: TcxRadioGroup;
    cxComboBox4: TcxComboBox;
    cxLabel20: TcxLabel;
    CheckBox3: TCheckBox;
    cxTextEdit4: TcxTextEdit;
    cxLabel21: TcxLabel;
    cxDateEdit7: TcxDateEdit;
    cxLabel22: TcxLabel;
    cxDateEdit8: TcxDateEdit;
    cxLabel23: TcxLabel;
    cxLabel24: TcxLabel;
    cxButton15: TcxButton;
    Panel16: TPanel;
    cxButton16: TcxButton;
    cxRadioGroup7: TcxRadioGroup;
    dsGroupResult1: TOraDataSource;
    orqryGroupResult1: TOraQuery;
    cxGrid4DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid4DBBandedTableView1DT: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1TAB_NUM: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1TITLE_SHORT: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DEPT_USER: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1DEPT_WORK: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1ID_WORK: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1WORK_NAME: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1MEASURE_UNIT: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1WORK_UNIT: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1PAYMENT_GENERAL: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1EARLY_BIRZHA: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1EARLY_KTU: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1EARLY_OTHER: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1EARLY_UNVALID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LATE_BIRZHA: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LATE_KTU: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LATE_OTHER: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1LATE_UNVALID_WORK: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NORM_WORK_BIRZHA: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NORM_WORK_KTU: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NORM_WORK_OTHER: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1NORM_WORK_UNVALID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1SUM_VALID: TcxGridDBBandedColumn;
    cxGrid4DBBandedTableView1SUM_UNVALID: TcxGridDBBandedColumn;
    cxTabSheet5: TcxTabSheet;
    Panel17: TPanel;
    Panel18: TPanel;
    cxButton13: TcxButton;
    cxButton17: TcxButton;
    cxGrid5: TcxGrid;
    cxGridDBBandedTableView1: TcxGridDBBandedTableView;
    cxGridLevel3: TcxGridLevel;
    Panel19: TPanel;
    Shape5: TShape;
    cxRadioGroup8: TcxRadioGroup;
    cxComboBox5: TcxComboBox;
    cxLabel19: TcxLabel;
    CheckBox4: TCheckBox;
    cxTextEdit5: TcxTextEdit;
    cxLabel25: TcxLabel;
    cxDateEdit9: TcxDateEdit;
    cxLabel26: TcxLabel;
    cxDateEdit10: TcxDateEdit;
    cxLabel27: TcxLabel;
    cxLabel28: TcxLabel;
    cxButton18: TcxButton;
    Panel20: TPanel;
    cxButton19: TcxButton;
    cxRadioGroup9: TcxRadioGroup;
    dsGroupResult2: TOraDataSource;
    orqryGroupResult2: TOraQuery;
    cxGridDBBandedTableView1DT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TAB_NUM: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TITLE_SHORT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DEPT_USER: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DEPT_WORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ID_WORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1WORK_NAME: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MEASURE_UNIT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1WORK_UNIT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PAYMENT_GENERAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1EARLY_BIRZHA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1EARLY_KTU: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1EARLY_OTHER: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1EARLY_UNVALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1LATE_BIRZHA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1LATE_KTU: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1LATE_OTHER: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1LATE_UNVALID_WORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORM_WORK_BIRZHA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORM_WORK_KTU: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORM_WORK_OTHER: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORM_WORK_UNVALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SUM_VALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1SUM_UNVALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORMO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MONEY: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MONEYFORNORMWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MONEYFOROTHERWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MONEYFORALLWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1CNZ_ZP: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1MONEY_ZP: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1NORMWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1OTHERWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1ALLWORK: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1TB: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1BEFORE_OP_START_DAY_VALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1BEFORE_OP_END_DAY_UNVALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AFTER_OP_START_DAY_VALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1AFTER_OP_END_DAY_UNVALID: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PLN_CNT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1PLN_AMOUNT_MONEY: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DIFFERENCE_CNT: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DIFFERENCE_CNT_AMOUNT_MONEY: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DIFF_CNT_ZP_GENERAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView1DIFF_AMOUNT_MONEY_ZP_GENERAL: TcxGridDBBandedColumn;
    procedure btnSearchDownTime1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxGrid2DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton19Click(Sender: TObject);
    procedure cxGridDBBandedTableView1TBCompareRowValuesForCellMerging(
      Sender: TcxGridColumn; ARow1: TcxGridDataRow;
      AProperties1: TcxCustomEditProperties; const AValue1: Variant;
      ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
      const AValue2: Variant; var AAreEqual: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15185: TForm15185;

implementation

{$R *.dfm}

uses DM_Plan_Pers,
     Dmod,
     DMod2,
     cxGridExportLink,
     cxExport,
     DateUtils;


procedure TForm15185.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  cxPageControl1.Visible:=False;
  if BaseID in [0, 8] then
    begin
      cxPageControl1.Visible := TRUE;
      orqrySelfDiagnosis.ReadOnly := True; // отключаем редактирование таблиц
      orqrySelfDiagnosis.Active := False;
      orqrySelfDiagnosis.Active := True;
      DM_PlanPers.q_Dept_Acc.Active:=False;
      DM_PlanPers.q_Dept_Acc.Params.ParamByName('id_user').AsInteger:=UserID;
      DM_PlanPers.q_Dept_Acc.Active:=True;

      cxComboBox1.Properties.Items.Clear;
      //OraQuery1.MacroByName('dept_FILTER').Active := False;
      // OraQuery1.MacroByName('deptUSER_filter').Active := False;

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
          cxComboBox2.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox3.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox4.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox5.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          DM_PlanPers.OraQuery1.Next;
        end;
    end;
end;

procedure TForm15185.btnSearchDownTime1Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit1.Date) = '00.00.0000') or (DateToStr(cxDateEdit2.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit1.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit2.Date) <> '00.00.0000')
       and (CheckALLDept.Checked = FALSE))
      AND (cxComboBox1.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit1.Date) <> '00.00.0000') or (DateToStr(cxDateEdit2.Date) <> '00.00.0000'))
      AND ((CheckALLDept.Checked = TRUE) or  (cxComboBox1.Text <> '')) then
    begin

      orqrySelfDiagnosis.MacroByName('mission_unique').Active := FALSE;
      if (cxComboBox1.Text <> '') Then
        m := Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
      orqrySelfDiagnosis.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRdGrpSwitchDept.ItemIndex = 0   Then
        begin
         orqrySelfDiagnosis.MacroByName('deptUSER_filter').Active := True;
         orqrySelfDiagnosis.Params.ParamByName('dept_id').AsInteger := m;
        end
        else begin             
         orqrySelfDiagnosis.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpSwitchDept.ItemIndex = 1   Then
        begin
         orqrySelfDiagnosis.MacroByName('dept_FILTER').Active := True;
         orqrySelfDiagnosis.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqrySelfDiagnosis.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckALLDept.Checked = True then
        begin
          orqrySelfDiagnosis.MacroByName('deptUSER_filter').Active := FALSE;
          orqrySelfDiagnosis.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if cxRadioGroup3.ItemIndex = 1   Then
        begin
         orqrySelfDiagnosis.MacroByName('date_ZP').Active := True;
        end
        else begin
         orqrySelfDiagnosis.MacroByName('date_ZP').Active := FALSE;
        end;

      if cxRadioGroup3.ItemIndex = 0   Then
        begin
         orqrySelfDiagnosis.MacroByName('date_filter').Active := True;
        end
        else begin
         orqrySelfDiagnosis.MacroByName('date_filter').Active := FALSE;
        end;

      if cxRadioGroup3.ItemIndex = 2   Then
        begin
         orqrySelfDiagnosis.MacroByName('date_PLN').Active := True;
        end
        else begin
         orqrySelfDiagnosis.MacroByName('date_PLN').Active := FALSE;
        end;

      orqrySelfDiagnosis.Params.ParamByName('date_start').AsString := DateToStr(cxDateEdit1.Date);
      orqrySelfDiagnosis.Params.ParamByName('date_end').AsString := DateToStr(cxDateEdit2.Date);

      //orqrySelfDiagnosis.MacroByName('date_filter').Active := True;
      //orqrySelfDiagnosis.Params.ParamByName('date_start').AsDate := cxDateEdit1.Date;
      //orqrySelfDiagnosis.Params.ParamByName('date_end').AsDate := cxDateEdit2.Date;

      if cxTextEdit1.Text <> '' then
      begin
       orqrySelfDiagnosis.MacroByName('fio_filter').Active := True;
        orqrySelfDiagnosis.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit1.Text) + '%';
      end
      else begin
        orqrySelfDiagnosis.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqrySelfDiagnosis.Active := False;
        orqrySelfDiagnosis.Active := True;
   end;

end;

procedure TForm15185.cxButton4Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit3.Date) = '00.00.0000') or (DateToStr(cxDateEdit4.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit3.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit4.Date) <> '00.00.0000')
       and (CheckBox1.Checked = FALSE))
      AND (cxComboBox2.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit3.Date) <> '00.00.0000') or (DateToStr(cxDateEdit4.Date) <> '00.00.0000'))
      AND ((CheckBox1.Checked = TRUE) or  (cxComboBox2.Text <> '')) then
    begin

      if (cxComboBox2.Text <> '') Then
        m := Integer(cxComboBox2.Properties.Items.Objects[cxComboBox2.ItemIndex]);
      orqryInitData.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRadioGroup1.ItemIndex = 0   Then
        begin
         orqryInitData.MacroByName('deptUSER_filter').Active := True;
         orqryInitData.MacroByName('dept_sotr1').Active := False;
         orqryInitData.MacroByName('dept_sotr2').Active := False;
         orqryInitData.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryInitData.MacroByName('deptUSER_filter').Active := False;
         // orqryInitData.MacroByName('dept_sotr2').Active := False;
        // orqryInitData.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRadioGroup1.ItemIndex = 1   Then
        begin
         orqryInitData.MacroByName('dept_FILTER').Active := True;
         orqryInitData.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryInitData.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox1.Checked = True then
        begin
          orqryInitData.MacroByName('deptUSER_filter').Active := FALSE;
          orqryInitData.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if cxRadioGroup2.ItemIndex = 1   Then
        begin
         orqryInitData.MacroByName('date_ZP').Active := True;
        end
        else begin
         orqryInitData.MacroByName('date_ZP').Active := FALSE;
        end;

      if cxRadioGroup2.ItemIndex = 0   Then
        begin
         orqryInitData.MacroByName('date_filter').Active := True;
        end
        else begin
         orqryInitData.MacroByName('date_filter').Active := FALSE;
        end;

      if cxRadioGroup2.ItemIndex = 2   Then
        begin
         orqryInitData.MacroByName('date_PLN_1').Active := False;
         orqryInitData.MacroByName('date_PLN').Active := True;
        end
        else begin
         orqryInitData.MacroByName('date_PLN_1').Active := False;
         orqryInitData.MacroByName('date_PLN').Active := FALSE;
        end;

      orqryInitData.Params.ParamByName('date_start').AsString := DateToStr(cxDateEdit3.Date);
      orqryInitData.Params.ParamByName('date_end').AsString := DateToStr(cxDateEdit4.Date);

      if cxTextEdit2.Text <> '' then
      begin
       orqryInitData.MacroByName('fio_filter').Active := True;
        orqryInitData.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit2.Text) + '%';
      end
      else begin
        orqryInitData.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryInitData.Active := False;
        orqryInitData.Active := True;
   end;

end;


procedure TForm15185.cxGrid2DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

//if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid2DBTableView1START_WORK.Index] >=
//     Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid2DBTableView1TIME_GO_IN.Index] Then
//    ACanvas.Brush.Color:=$008A82F7;
 // if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid2DBBandedTableView1CANCEL_STATUS.Index] = 'Запрос на отмену' then
//    ACanvas.Brush.Color:=$005EA5FB;


end;

procedure TForm15185.cxButton5Click(Sender: TObject);
var z:Integer;
    tab_num: string;
    plan_day: TDate;

begin
for z:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount - 1 do
    begin
      tab_num := cxGrid2DBTableView1.DataController.GetValue(
        cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1Tab_NUM.Index);
      plan_day :=  cxGrid2DBTableView1.DataController.GetValue(
        cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1Operating_Day.Index);
    end;

  with DM_PlanPers.OraQuery1 do
     begin
       SQL.Clear;
       SQL.Add('SELECT time_go_in,  NVL(time_go_out, To_Date(''01.01.0001'',''dd.mm.yyyy'')) as time_go_out ');
       SQL.Add('FROM pers_pers_day ');
       SQL.Add('WHERE plan_day = To_Date(''' + DateToStr(plan_day) + ''' ,''dd.mm.yyyy'') ');
       SQL.Add(' and tab_num = ''' + tab_num + ''' ' );
       try
         ExecSQL except
          on E: EDatabaseError do
           ShowMessage(E.Message);
       end;
     end;

  cxLabel11.Caption := 'Время прихода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_in']);
  cxLabel11.Caption :=  cxLabel11.Caption +   ' Время ухода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_out']);
end;


procedure TForm15185.cxButton6Click(Sender: TObject);
var z:Integer;
    tab_num: string;
    plan_day: TDate;

begin
for z:=0 to cxGrid1DBTableView1.Controller.SelectedRowCount - 1 do
    begin
      tab_num := cxGrid1DBTableView1.DataController.GetValue(
        cxGrid1DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBTableView1Tab_NUM.Index);
      plan_day :=  cxGrid1DBTableView1.DataController.GetValue(
        cxGrid1DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBTableView1Operating_Day.Index);
    end;

  with DM_PlanPers.OraQuery1 do
     begin
       SQL.Clear;
       SQL.Add('SELECT time_go_in,  NVL(time_go_out, To_Date(''01.01.0001'',''dd.mm.yyyy'')) as time_go_out ');
       SQL.Add('FROM pers_pers_day ');
       SQL.Add('WHERE plan_day = To_Date(''' + DateToStr(plan_day) + ''' ,''dd.mm.yyyy'') ');
       SQL.Add(' and tab_num = ''' + tab_num + ''' ' );
       try
         ExecSQL except
          on E: EDatabaseError do
           ShowMessage(E.Message);
       end;
     end;

  cxLabel12.Caption := 'Время прихода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_in']);
  cxLabel12.Caption :=  cxLabel12.Caption +   ' Время ухода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_out']);
end;

procedure TForm15185.cxButton10Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit5.Date) = '00.00.0000') or (DateToStr(cxDateEdit6.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit6.Date) <> '00.00.0000')
       and (CheckBox2.Checked = FALSE))
      AND (cxComboBox3.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') or (DateToStr(cxDateEdit6.Date) <> '00.00.0000'))
      AND ((CheckBox2.Checked = TRUE) or  (cxComboBox3.Text <> '')) then
    begin

      if (cxComboBox3.Text <> '') Then
        m := Integer(cxComboBox3.Properties.Items.Objects[cxComboBox3.ItemIndex]);
      orqryInitData2.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRadioGroup4.ItemIndex = 0   Then
        begin
         orqryInitData2.MacroByName('deptUSER_filter').Active := True;
         orqryInitData2.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryInitData2.MacroByName('deptUSER_filter').Active := False;
         // orqryInitData.MacroByName('dept_sotr2').Active := False;
        // orqryInitData.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRadioGroup4.ItemIndex = 1   Then
        begin
         orqryInitData2.MacroByName('dept_FILTER').Active := True;
         orqryInitData2.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryInitData2.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox2.Checked = True then
        begin
          orqryInitData2.MacroByName('deptUSER_filter').Active := FALSE;
          orqryInitData2.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if cxRadioGroup5.ItemIndex = 1   Then
        begin
         orqryInitData2.MacroByName('date_ZP').Active := True;
        end
        else begin
         orqryInitData2.MacroByName('date_ZP').Active := FALSE;
        end;

      if cxRadioGroup5.ItemIndex = 0   Then
        begin
         orqryInitData2.MacroByName('date_filter').Active := True;
        end
        else begin
         orqryInitData2.MacroByName('date_filter').Active := FALSE;
        end;

      if cxRadioGroup5.ItemIndex = 2   Then
        begin
         orqryInitData2.MacroByName('date_PLN').Active := True;
        end
        else begin
         orqryInitData2.MacroByName('date_PLN').Active := FALSE;
        end;

      orqryInitData2.Params.ParamByName('date_start').AsString := DateToStr(cxDateEdit5.Date);
      orqryInitData2.Params.ParamByName('date_end').AsString := DateToStr(cxDateEdit6.Date);

      if cxTextEdit3.Text <> '' then
      begin
       orqryInitData2.MacroByName('fio_filter').Active := True;
        orqryInitData2.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit3.Text) + '%';
      end
      else begin
        orqryInitData2.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryInitData2.Active := False;
        orqryInitData2.Active := True;
   end;

end;

procedure TForm15185.cxButton8Click(Sender: TObject);
var z:Integer;
    tab_num: string;
    plan_day: TDate;

begin
for z:=0 to cxGridDBTableView1.Controller.SelectedRowCount - 1 do
    begin
      tab_num := cxGridDBTableView1.DataController.GetValue(
        cxGridDBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGridDBTableView1Tab_NUM.Index);
      plan_day :=  cxGridDBTableView1.DataController.GetValue(
        cxGridDBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGridDBTableView1Operating_Day.Index);
    end;

  with DM_PlanPers.OraQuery1 do
     begin
       SQL.Clear;
       SQL.Add('SELECT time_go_in,  NVL(time_go_out, To_Date(''01.01.0001'',''dd.mm.yyyy'')) as time_go_out ');
       SQL.Add('FROM pers_pers_day ');
       SQL.Add('WHERE plan_day = To_Date(''' + DateToStr(plan_day) + ''' ,''dd.mm.yyyy'') ');
       SQL.Add(' and tab_num = ''' + tab_num + ''' ' );
       try
         ExecSQL except
          on E: EDatabaseError do
           ShowMessage(E.Message);
       end;
     end;

  cxLabel13.Caption := 'Время прихода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_in']);
  cxLabel13.Caption :=  cxLabel13.Caption +   ' Время ухода ' + DateTimeToStr(DM_PlanPers.OraQuery1.FieldValues['time_go_out']);
end;

procedure TForm15185.cxButton11Click(Sender: TObject);
begin
  orqrySelfDiagnosis.MacroByName('mission_unique').Active := True;
  orqrySelfDiagnosis.Active := False;
  orqrySelfDiagnosis.Active := True;
end;

procedure TForm15185.cxButton16Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit7.Date) = '00.00.0000') or (DateToStr(cxDateEdit8.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit7.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit8.Date) <> '00.00.0000')
       and (CheckBox3.Checked = FALSE))
      AND (cxComboBox4.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit7.Date) <> '00.00.0000') or (DateToStr(cxDateEdit8.Date) <> '00.00.0000'))
      AND ((CheckBox3.Checked = TRUE) or  (cxComboBox4.Text <> '')) then
    begin

      if (cxComboBox4.Text <> '') Then
        m := Integer(cxComboBox4.Properties.Items.Objects[cxComboBox4.ItemIndex]);
      orqryGroupResult1.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRadioGroup6.ItemIndex = 0   Then
        begin
         orqryGroupResult1.MacroByName('deptUSER_filter').Active := True;
         orqryGroupResult1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryGroupResult1.MacroByName('deptUSER_filter').Active := False;
        end;

      if cxRadioGroup6.ItemIndex = 1   Then
        begin
         orqryGroupResult1.MacroByName('dept_FILTER').Active := True;
         orqryGroupResult1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryGroupResult1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox3.Checked = True then
        begin
          orqryGroupResult1.MacroByName('deptUSER_filter').Active := FALSE;
          orqryGroupResult1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if cxRadioGroup7.ItemIndex = 1   Then
        begin
         orqryGroupResult1.MacroByName('date_ZP').Active := True;
        end
        else begin
         orqryGroupResult1.MacroByName('date_ZP').Active := FALSE;
        end;

      if cxRadioGroup7.ItemIndex = 0   Then
        begin
         orqryGroupResult1.MacroByName('date_filter').Active := True;
        end
        else begin
         orqryGroupResult1.MacroByName('date_filter').Active := FALSE;
        end;

      if cxRadioGroup7.ItemIndex = 2   Then
        begin
         orqryGroupResult1.MacroByName('date_PLN').Active := True;
        end
        else begin
         orqryGroupResult1.MacroByName('date_PLN').Active := FALSE;
        end;

      orqryGroupResult1.Params.ParamByName('date_start').AsString := DateToStr(cxDateEdit7.Date);
      orqryGroupResult1.Params.ParamByName('date_end').AsString := DateToStr(cxDateEdit8.Date);

      if cxTextEdit4.Text <> '' then
      begin
       orqryGroupResult1.MacroByName('fio_filter').Active := True;
        orqryGroupResult1.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit4.Text) + '%';
      end
      else begin
        orqryGroupResult1.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryGroupResult1.Active := False;
        orqryGroupResult1.Active := True;
   end;

end;


procedure TForm15185.cxButton19Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit9.Date) = '00.00.0000') or (DateToStr(cxDateEdit10.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit9.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit10.Date) <> '00.00.0000')
       and (CheckBox4.Checked = FALSE))
      AND (cxComboBox5.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit9.Date) <> '00.00.0000') or (DateToStr(cxDateEdit10.Date) <> '00.00.0000'))
      AND ((CheckBox4.Checked = TRUE) or  (cxComboBox5.Text <> '')) then
    begin

      if (cxComboBox5.Text <> '') Then
        m := Integer(cxComboBox5.Properties.Items.Objects[cxComboBox5.ItemIndex]);
      orqryGroupResult2.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRadioGroup8.ItemIndex = 0   Then
        begin
         orqryGroupResult2.MacroByName('deptUSER_filter').Active := True;
         orqryGroupResult2.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryGroupResult2.MacroByName('deptUSER_filter').Active := False;
        end;

      if cxRadioGroup8.ItemIndex = 1   Then
        begin
         orqryGroupResult2.MacroByName('dept_FILTER').Active := True;
         orqryGroupResult2.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryGroupResult2.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox4.Checked = True then
        begin
          orqryGroupResult2.MacroByName('deptUSER_filter').Active := FALSE;
          orqryGroupResult2.MacroByName('dept_FILTER').Active := FALSE;
        end;

       if cxRadioGroup9.ItemIndex = 0   Then
        begin
         orqryGroupResult2.MacroByName('date_filter').Active := True;
         orqryGroupResult2.MacroByName('op_day_ZP1').Active := True;
        end
        else begin
         orqryGroupResult2.MacroByName('date_filter').Active := FALSE;
         orqryGroupResult2.MacroByName('op_day_ZP1').Active := FALSE;
        end;
          
      if cxRadioGroup9.ItemIndex = 1   Then
        begin
         orqryGroupResult2.MacroByName('date_ZP').Active := True;
         orqryGroupResult2.MacroByName('op_day_ZP').Active := True;
        end
        else begin
         orqryGroupResult2.MacroByName('date_ZP').Active := FALSE;
         orqryGroupResult2.MacroByName('op_day_ZP').Active := FALSE;
        end;

      if cxRadioGroup9.ItemIndex = 2   Then
        begin
         orqryGroupResult2.MacroByName('date_PLN').Active := True;
         orqryGroupResult2.MacroByName('op_day_PLN').Active := True;
        end
        else begin
         orqryGroupResult2.MacroByName('date_PLN').Active := FALSE;
         orqryGroupResult2.MacroByName('op_day_PLN').Active := FALSE;
        end;

      orqryGroupResult2.Params.ParamByName('date_start').AsString := DateToStr(cxDateEdit9.Date);
      orqryGroupResult2.Params.ParamByName('date_end').AsString := DateToStr(cxDateEdit10.Date);

      if cxTextEdit5.Text <> '' then
      begin
       orqryGroupResult2.MacroByName('fio_filter').Active := True;
        orqryGroupResult2.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit5.Text) + '%';
      end
      else begin
        orqryGroupResult2.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryGroupResult2.Active := False;
        orqryGroupResult2.Active := True;
   end;

end;


procedure TForm15185.cxGridDBBandedTableView1TBCompareRowValuesForCellMerging(
  Sender: TcxGridColumn; ARow1: TcxGridDataRow;
  AProperties1: TcxCustomEditProperties; const AValue1: Variant;
  ARow2: TcxGridDataRow; AProperties2: TcxCustomEditProperties;
  const AValue2: Variant; var AAreEqual: Boolean);
begin
  AAreEqual := (AValue1 = AValue2) and
               (ARow1.Values[cxGridDBBandedTableView1TB.Index] = ARow2.Values[cxGridDBBandedTableView1TB.Index]);
end;


end.
