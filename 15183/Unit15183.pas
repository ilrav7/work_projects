unit Unit15183;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinsDefaultPainters, cxControls, cxContainer,
  cxEdit, cxLabel, dxSkinscxPCPainter, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, DB, cxDBData, Menus,
  cxLookAndFeelPainters, MemDS, DBAccess, Ora, cxTextEdit, cxCheckBox,
  StdCtrls, cxGroupBox, cxRadioGroup, cxDropDownEdit, cxMaskEdit,
  cxCalendar, ExtCtrls, cxButtons, cxGridLevel, cxClasses,
  cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, cxPC;

type
  TForm15183 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    Panel2: TPanel;
    cxButton1: TcxButton;
    Shape1: TShape;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    btnExportDownTime: TcxButton;
    cxComboBox1: TcxComboBox;
    cxRdGrpSwitchDept: TcxRadioGroup;
    CheckALLDept: TCheckBox;
    cxTextEdit1: TcxTextEdit;
    cxLabel6: TcxLabel;
    cxLabel4: TcxLabel;
    Panel3: TPanel;
    btnSearchDownTime1: TcxButton;
    dsDownTime1: TOraDataSource;
    orqryDownTime1: TOraQuery;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
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
    cxGrid1DBTableView1START_WORK: TcxGridDBColumn;
    cxGrid1DBTableView1END_WORK: TcxGridDBColumn;
    cxGrid1DBTableView1DIFF_TIME: TcxGridDBColumn;
    cxTabSheet2: TcxTabSheet;
    Panel4: TPanel;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    Panel5: TPanel;
    dsTimeDeviation: TOraDataSource;
    orqryTimeDev: TOraQuery;
    cxGrid2DBTableView1WORK_NAME: TcxGridDBColumn;
    cxGrid2DBTableView1MEASURE_UNIT: TcxGridDBColumn;
    cxGrid2DBTableView1ID_DEPT: TcxGridDBColumn;
    cxGrid2DBTableView1MONTH_DEVIATION: TcxGridDBColumn;
    cxGrid2DBTableView1YEAR_DEVIATION: TcxGridDBColumn;
    cxGrid2DBTableView1TIME_DEVIATION: TcxGridDBColumn;
    cxComboBox2: TcxComboBox;
    cxComboBox3: TcxComboBox;
    cxLabel5: TcxLabel;
    cxLabel7: TcxLabel;
    cxLabel8: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    cxLabel9: TcxLabel;
    cxTabSheet3: TcxTabSheet;
    Panel6: TPanel;
    cxLabel10: TcxLabel;
    CheckBox1: TCheckBox;
    Panel7: TPanel;
    cxButton3: TcxButton;
    cxComboBox4: TcxComboBox;
    cxButton4: TcxButton;
    cxStyleRepository2: TcxStyleRepository;
    cxStyle2: TcxStyle;
    cxGrid2DBTableView1ID_WORK: TcxGridDBColumn;
    cxGrid2DBTableView1MONTH_W: TcxGridDBColumn;
    cxGrid2DBTableView1ID_DEVIATION: TcxGridDBColumn;
    CheckBox2: TCheckBox;
    cxGrid1DBTableView1TIME_DEVIATION: TcxGridDBColumn;
    cxGrid1DBTableView1DIFF_TIME_DEVIATION: TcxGridDBColumn;
    Panel8: TPanel;
    Panel9: TPanel;
    cxGrid3DBTableView1: TcxGridDBTableView;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    Shape2: TShape;
    Shape3: TShape;
    cxDateEdit3: TcxDateEdit;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxDateEdit4: TcxDateEdit;
    dsDownTimeResult: TOraDataSource;
    orqryDownTimeResult: TOraQuery;
    Panel10: TPanel;
    btnSearchResult: TcxButton;
    cxGrid3DBTableView1ID_DEPT: TcxGridDBColumn;
    cxGrid3DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGrid3DBTableView1TIME_MINUT: TcxGridDBColumn;
    cxGrid3DBTableView1TIME_HOURS: TcxGridDBColumn;
    cxGrid3DBTableView1DEPT_NAME_FULL: TcxGridDBColumn;
    cxButton2: TcxButton;
    cxGrid2DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxTabSheet4: TcxTabSheet;
    Panel11: TPanel;
    Panel13: TPanel;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    OraQuery1: TOraQuery;
    OraDataSource1: TOraDataSource;
    Panel12: TPanel;
    Shape4: TShape;
    cxButton5: TcxButton;
    cxDateEdit5: TcxDateEdit;
    cxDateEdit6: TcxDateEdit;
    cxLabel14: TcxLabel;
    cxLabel15: TcxLabel;
    cxLabel16: TcxLabel;
    cxComboBox5: TcxComboBox;
    cxRadioGroup1: TcxRadioGroup;
    CheckBox3: TCheckBox;
    cxTextEdit3: TcxTextEdit;
    cxLabel17: TcxLabel;
    cxLabel18: TcxLabel;
    Panel14: TPanel;
    cxButton6: TcxButton;
    cxGrid4DBTableView1OPERATING_DAY: TcxGridDBColumn;
    cxGrid4DBTableView1TAB_NUM: TcxGridDBColumn;
    cxGrid4DBTableView1TITLE_SHORT: TcxGridDBColumn;
    cxGrid4DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_USER: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxGrid4DBTableView1TWENTY_FOUR: TcxGridDBColumn;
    cxGrid4DBTableView1ONE: TcxGridDBColumn;
    cxGrid4DBTableView1TWO: TcxGridDBColumn;
    cxGrid4DBTableView1THREE: TcxGridDBColumn;
    cxGrid4DBTableView1FOUR: TcxGridDBColumn;
    cxGrid4DBTableView1FIVE: TcxGridDBColumn;
    cxGrid4DBTableView1SIX: TcxGridDBColumn;
    cxGrid4DBTableView1SEVEN: TcxGridDBColumn;
    cxGrid4DBTableView1EIGHT: TcxGridDBColumn;
    cxGrid4DBTableView1NINE: TcxGridDBColumn;
    cxGrid4DBTableView1TEN: TcxGridDBColumn;
    cxGrid4DBTableView1ELEVEN: TcxGridDBColumn;
    cxGrid4DBTableView1TWELVE: TcxGridDBColumn;
    cxGrid4DBTableView1THIRTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1FOURTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1FIFTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1SIXTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1SEVENTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1EIGTHTEEN: TcxGridDBColumn;
    cxGrid4DBTableView1NINETEEN: TcxGridDBColumn;
    cxGrid4DBTableView1TWENTY: TcxGridDBColumn;
    cxGrid4DBTableView1TWENTY_ONE: TcxGridDBColumn;
    cxGrid4DBTableView1TWENTY_TWO: TcxGridDBColumn;
    cxGrid4DBTableView1TWENTY_THREE: TcxGridDBColumn;
    cxGrid4DBTableView1SUM_TIME: TcxGridDBColumn;
    cxButton7: TcxButton;
    cxGrid3DBTableView1TIME_REAL: TcxGridDBColumn;
    cxGrid3DBTableView1TIME_TEOR: TcxGridDBColumn;
    cxGrid3DBTableView1PART_PER_REAL: TcxGridDBColumn;
    cxGrid3DBTableView1PART_PERS_TEOR: TcxGridDBColumn;
    procedure FormCreate(Sender: TObject);
    procedure btnSearchDownTime1Click(Sender: TObject);
    procedure btnExportDownTimeClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure btnSearchResultClick(Sender: TObject);
    procedure cxComboBox3PropertiesChange(Sender: TObject);
    procedure cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure cxComboBox2PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxGrid4DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15183: TForm15183;

implementation

{$R *.dfm}

uses DM_Plan_Pers,
     Dmod,
     DMod2,
     cxGridExportLink,
     cxExport,
     DateUtils;

procedure TForm15183.FormCreate(Sender: TObject);
var
  i: Integer;
begin
  cxPageControl1.Visible:=False;
  if BaseID in [0, 8] then
    begin
      cxPageControl1.Visible := TRUE;
      orqryDownTime1.ReadOnly := True; // отключаем редактирование таблиц
      orqryDownTime1.Active := False;
      orqryDownTime1.Active := True;
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
          cxComboBox4.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox5.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          DM_PlanPers.OraQuery1.Next;
        end;

      with cxComboBox2.Properties.Items do
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

       cxComboBox3.Properties.Items.Add(IntToStr(YearOF(now)-1));
       cxComboBox3.Properties.Items.Add(IntToStr(YearOF(now)));
       cxComboBox3.Properties.Items.Add(IntToStr(YearOF(now)+1));
  end;
end;


procedure TForm15183.btnSearchDownTime1Click(Sender: TObject);
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

      if (cxComboBox1.Text <> '') Then
        m := Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
      orqryDownTime1.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRdGrpSwitchDept.ItemIndex = 0   Then
        begin
         orqryDownTime1.MacroByName('deptUSER_filter').Active := True;
         orqryDownTime1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
         orqryDownTime1.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRdGrpSwitchDept.ItemIndex = 1   Then
        begin
         orqryDownTime1.MacroByName('dept_FILTER').Active := True;
         orqryDownTime1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          orqryDownTime1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckALLDept.Checked = True then
        begin
          orqryDownTime1.MacroByName('deptUSER_filter').Active := FALSE;
          orqryDownTime1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      orqryDownTime1.MacroByName('date_filter').Active := True;
      orqryDownTime1.Params.ParamByName('date_start').AsDate := cxDateEdit1.Date;
      orqryDownTime1.Params.ParamByName('date_end').AsDate := cxDateEdit2.Date;

      if cxTextEdit1.Text <> '' then
      begin
       orqryDownTime1.MacroByName('fio_filter').Active := True;
        orqryDownTime1.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit1.Text) + '%';
      end
      else begin
        orqryDownTime1.Macros.MacroByName('fio_filter').Active := False;
      end;
        orqryDownTime1.Active := False;
        orqryDownTime1.Active := True;
   end;

end;


procedure TForm15183.btnExportDownTimeClick(Sender: TObject);
begin
  if orqryDownTime1.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Простои - исх-е данные.xls';
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

procedure TForm15183.cxButton1Click(Sender: TObject);
begin
  cxDateEdit1.Clear;
  cxDateEdit2.Clear;
  cxComboBox1.Clear;
  CheckALLDept.Checked := False;
  cxTextEdit1.Text := '';
end;

procedure TForm15183.cxButton3Click(Sender: TObject);
var
  m, k: Integer;
begin
  m := 0;
  k := 0;

  if (cxComboBox4.Text = '') and (CheckBox1.Checked = False) then
     ShowMessage('Выберите подразделение');

  if ((cxComboBox4.Text <> '') or (CheckBox1.Checked = True))
     and (cxComboBox2.Text = '') and (CheckBox2.Checked = False) then
     ShowMessage('Выберите месяц');

  if ((cxComboBox4.Text <> '') OR (CheckBox1.Checked = True))
      and ((cxComboBox2.Text <> '') OR (CheckBox2.Checked = True)) then
   begin
    if (cxComboBox4.Text <> '') Then
      begin
          m := Integer(cxComboBox4.Properties.Items.Objects[cxComboBox4.ItemIndex]);
          orqryTimeDev.MacroByName('dept_FILTER').Active := True;
          orqryTimeDev.Params.ParamByName('dept_id').AsInteger  := m;
      end
     else
      begin
         orqryTimeDev.MacroByName('dept_FILTER').Active := FALSE;
      end;

     if (cxComboBox2.Text <> '') Then
      begin
          k := Integer(cxComboBox2.Properties.Items.Objects[cxComboBox2.ItemIndex]);
          orqryTimeDev.MacroByName('month_filter').Active := True;
          orqryTimeDev.Params.ParamByName('month_id').AsInteger := k;
      end
     else
      begin
         orqryTimeDev.MacroByName('month_filter').Active := FALSE;
      end;

     if (cxComboBox3.Text <> '') Then
      begin
          orqryTimeDev.MacroByName('year_filter').Active := True;
          orqryTimeDev.Params.ParamByName('year_id').AsString  := cxComboBox3.Text;
      end
     else
      begin
         orqryTimeDev.MacroByName('year_filter').Active := FALSE;
      end;

     orqryTimeDev.Params.ParamByName('nom_user').AsInteger := UserID;

    if CheckBox1.Checked = True then
       begin
        orqryTimeDev.MacroByName('dept_FILTER').Active := FALSE;
       end;
    if CheckBox2.Checked = True then
       begin
        orqryTimeDev.MacroByName('month_filter').Active := FALSE;
       end;

   orqryTimeDev.Active := False;
   orqryTimeDev.Active := True;
   end;

end;


procedure TForm15183.cxButton4Click(Sender: TObject);
var
  v_time, v_year: string;
  V_month_Index, id_work, z, id_dept, id_deviation: Integer;
begin
  V_month_Index :=  Integer(cxComboBox2.Properties.Items.Objects[cxComboBox2.ItemIndex]);
  v_time := cxTextEdit2.Text;
  v_year := cxComboBox3.Text;
  if  (v_time = '') then
    ShowMessage('Заполните поля');

  if  (v_time <> '') then
    begin
       for z:=0 to cxGrid2DBTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_work := cxGrid2DBTableView1.DataController.GetValue(
             cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1ID_WORK.index);
          id_dept := cxGrid2DBTableView1.DataController.GetValue(
             cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1ID_DEPT.index);

          if (VarType(cxGrid2DBTableView1.DataController.GetValue(
               cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1MONTH_DEVIATION.Index ))
                = varNull) then
            begin
              if (v_year = '') then
                 v_year := IntToStr(YearOF(now));
              with DM_PlanPers.OraQuery1 do
                begin
                   SQL.Clear;
                   SQL.Add('INSERT INTO plan_pers_time_deviation (id_deviation, month_deviation, year_deviation, id_work, ');
                   SQL.Add(' id_dept, time_deviation )  ');
                   SQL.Add(' VALUES (  PP_TIME_DEVIATION_SEQ.nextval, ');
                      SQL.Add(' ''' + IntToStr(v_month_Index) + ''', ');
                      SQL.Add(' ''' + v_year + ''',');
                      SQL.Add(' ' + IntToStr(id_work) + ', ');
                      SQL.Add(' ' + IntToStr(id_dept) + ', ' );
                      SQL.Add(' ''' + v_time + ''' ) ' );
                      try
                      ExecSQL except
                        on E: EDatabaseError do
                          ShowMessage(E.Message);
                      end;
                end;
            end
          else
            begin
              id_deviation:= cxGrid2DBTableView1.DataController.GetValue(
                  cxGrid2DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBTableView1ID_DEVIATION.index);
              with DM_PlanPers.OraQuery1 do
              begin
              SQL.Clear;
              SQL.Add(' UPDATE plan_pers_time_deviation ');
              SQL.Add(' SET   ');
              SQL.Add(' time_deviation = ''' + cxTextEdit2.Text + '''');
              SQL.Add(' WHERE id_deviation = ' + IntToStr(id_deviation) + ' ');
                  try
                    ExecSQL except
                     on E: EDatabaseError do
                    ShowMessage(E.Message);
                  end;
            end;
            end;
         end;
      orqryTimeDev.Refresh;
    end;
end;

procedure TForm15183.btnSearchResultClick(Sender: TObject);
begin
  if (DateToStr(cxDateEdit3.Date) = '00.00.0000') or (DateToStr(cxDateEdit4.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit3.Date) <> '00.00.0000') or (DateToStr(cxDateEdit4.Date) <> '00.00.0000')) then
    begin
      orqryDownTimeResult.MacroByName('date_filter').Active := True;
      orqryDownTimeResult.Params.ParamByName('nom_user').AsInteger := UserID;
      orqryDownTimeResult.Params.ParamByName('date_start').AsDate := cxDateEdit3.Date;
      orqryDownTimeResult.Params.ParamByName('date_end').AsDate := cxDateEdit4.Date;
      orqryDownTimeResult.Active := False;
      orqryDownTimeResult.Active := True;
   end;
end;

procedure TForm15183.cxComboBox3PropertiesChange(Sender: TObject);
begin
  orqryTimeDev.Active := false;
end;

procedure TForm15183.cxTextEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  case Key of
    '0'..'9':;
    #8:;
    else Key:=#0;
  end;
end;


procedure TForm15183.cxComboBox2PropertiesChange(Sender: TObject);
begin
  orqryTimeDev.Active := false;
end;

procedure TForm15183.cxButton2Click(Sender: TObject);
begin
   if orqryDownTimeResult.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Простои .xls';
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

procedure TForm15183.cxButton6Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit5.Date) = '00.00.0000') or (DateToStr(cxDateEdit6.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') AND (DateToStr(cxDateEdit6.Date) <> '00.00.0000')
       and (CheckBox3.Checked = FALSE))
      AND (cxComboBox5.Text = '') then
    begin
      ShowMessage('Выберите подразделение');
    end;

  if ((DateToStr(cxDateEdit5.Date) <> '00.00.0000') or (DateToStr(cxDateEdit6.Date) <> '00.00.0000'))
      AND ((CheckBox3.Checked = TRUE) or  (cxComboBox5.Text <> '')) then
    begin
      if (cxComboBox5.Text <> '') Then
        m := Integer(cxComboBox5.Properties.Items.Objects[cxComboBox5.ItemIndex]);
      OraQuery1.Params.ParamByName('nom_user').AsInteger := UserID;

      if cxRadioGroup1.ItemIndex = 0   Then
        begin
         OraQuery1.MacroByName('deptUSER_filter').Active := True;
         OraQuery1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
         OraQuery1.MacroByName('deptUSER_filter').Active := FALSE;
        end;

      if cxRadioGroup1.ItemIndex = 1   Then
        begin
         OraQuery1.MacroByName('dept_FILTER').Active := True;
         OraQuery1.Params.ParamByName('dept_id').AsInteger  := m;
        end
        else begin
          OraQuery1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      if CheckBox3.Checked = True then
        begin
          OraQuery1.MacroByName('deptUSER_filter').Active := FALSE;
          OraQuery1.MacroByName('dept_FILTER').Active := FALSE;
        end;

      OraQuery1.MacroByName('date_filter').Active := True;
      OraQuery1.Params.ParamByName('date_start').AsDate := cxDateEdit6.Date;
      OraQuery1.Params.ParamByName('date_end').AsDate := cxDateEdit5.Date;

      if cxTextEdit3.Text <> '' then
      begin
        OraQuery1.MacroByName('fio_filter').Active := True;
        OraQuery1.Params.ParamByName('FIO').AsString := '%' + AnsiLowerCase(cxTextEdit3.Text) + '%';
      end
      else begin
        OraQuery1.Macros.MacroByName('fio_filter').Active := False;
      end;
        OraQuery1.Active := False;
        OraQuery1.Active := True;
   end;

end;


procedure TForm15183.cxGrid4DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
  var str1 : Integer;
begin
      if (Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid4DBTableView1EIGHT.Index] > 60) then
       begin
         ACanvas.Brush.Color:=$008A82F7;
       end;

end;

end.
