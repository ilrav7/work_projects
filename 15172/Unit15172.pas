unit Unit15172;

interface

uses
  Windows,
  Messages,
  SysUtils,
  Variants,
  Classes,
  Graphics,
  Controls,
  Forms,
  Dialogs,
  Menus,
  cxLookAndFeelPainters,
  dxSkinsCore,
  dxSkinsDefaultPainters,
  cxTextEdit,
  cxControls,
  cxContainer,
  cxEdit,
  cxGroupBox,
  StdCtrls,
  cxButtons,
  dxSkinscxPCPainter,
  cxStyles,
  cxCustomData,
  cxGraphics,
  cxFilter,
  cxData,
  cxDataStorage,
  DB,
  cxDBData,
  cxGridLevel,
  cxClasses,
  cxGridCustomView,
  cxGridCustomTableView,
  cxGridTableView,
  cxGridDBTableView,
  cxGrid,
  DBAccess,
  Ora,
  cxGridBandedTableView,
  MemDS,
  cxPC,
  ExtCtrls,
  cxLabel,
  cxMaskEdit,
  cxDropDownEdit,
  cxGridDBBandedTableView,
  ComCtrls,
  cxCalendar,
  RzPanel,
  RzSplit,
  sScrollBox;

type
  TForm15172 = class(TForm)
    OraSession1: TOraSession;
    OraDataSource1: TOraDataSource;
    OraQuery1: TOraQuery;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxTabSheet2: TcxTabSheet;
    Panel1: TPanel;
    cxButton4: TcxButton;
    Label1: TLabel;
    Panel2: TPanel;
    cxTextEdit1: TcxTextEdit;
    cxComboBox1: TcxComboBox;
    cxLabel1: TcxLabel;
    OraQuery2: TOraQuery;
    OraDataSource2: TOraDataSource;
    cxLabel2: TcxLabel;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxGrid1DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid1DBBandedTableView1TAB_NUM: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_BORN: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DIVISION_NAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1TITLE_NAME: TcxGridDBBandedColumn;
    cxGrid1DBBandedTableView1DATE_BEGIN: TcxGridDBBandedColumn;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    cxTextEdit2: TcxTextEdit;
    Panel3: TPanel;
    cxComboBox3: TcxComboBox;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxTextEdit3: TcxTextEdit;
    RichEdit1: TRichEdit;
    cxLabel8: TcxLabel;
    cxButton2: TcxButton;
    cxGrid2Level1: TcxGridLevel;
    cxGrid2: TcxGrid;
    OraDataSource3: TOraDataSource;
    OraQuery3: TOraQuery;
    cxGrid2DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid2DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1TYPE_DEPR: TcxGridDBBandedColumn;
    cxGrid2DBBandedTableView1PRICE_PUNISH: TcxGridDBBandedColumn;
    cxLabel9: TcxLabel;
    cxGrid3Level1: TcxGridLevel;
    cxGrid3: TcxGrid;
    cxGrid3DBBandedTableView1: TcxGridDBBandedTableView;
    OraDataSource4: TOraDataSource;
    OraQuery4: TOraQuery;
    cxDateEdit1: TcxDateEdit;
    Panel4: TPanel;
    Panel5: TPanel;
    cxButton1: TcxButton;
    cxComboBox2: TcxComboBox;
    cxButton3: TcxButton;
    Panel6: TPanel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLabel12: TcxLabel;
    cxLabel13: TcxLabel;
    cxComboBox4: TcxComboBox;
    cxTextEdit4: TcxTextEdit;
    cxTextEdit5: TcxTextEdit;
    cxLabel14: TcxLabel;
    cxButton5: TcxButton;
    cxGrid3DBBandedTableView1TRUNCTPDDATE_CREATION: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ID_PUNISHMENT: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1PRICE_PUNISH: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1TYPE_DEPR: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1COMMENTARY: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1MANAGER: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DEPT_NAME_FULL: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn;
    cxTabSheet3: TcxTabSheet;
    cxGrid4DBTableView1: TcxGridDBTableView;
    cxGrid4Level1: TcxGridLevel;
    cxGrid4: TcxGrid;
    cxGrid4DBTableView1TRUNCTPDDATE_CREATION: TcxGridDBColumn;
    cxGrid4DBTableView1FULL_NAME: TcxGridDBColumn;
    cxGrid4DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid4DBTableView1ID_PUNISHMENT: TcxGridDBColumn;
    cxGrid4DBTableView1COMMENTARY: TcxGridDBColumn;
    cxGrid4DBTableView1MANAGER: TcxGridDBColumn;
    cxGrid4DBTableView1FINISH_TYPE_DEPR: TcxGridDBColumn;
    cxGrid4DBTableView1FINISH_PRICE_PUNISH: TcxGridDBColumn;
    cxGrid4DBTableView1ORDER_NUMBER: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_NAME_FULL: TcxGridDBColumn;
    cxGrid4DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn;
    cxTextEdit6: TcxTextEdit;
    cxLabel15: TcxLabel;
    Panel8: TPanel;
    cxButton6: TcxButton;
    Panel7: TPanel;
    cxGrid2DBBandedTableView1DEPREMIZATION: TcxGridDBBandedColumn;
    cxLabel16: TcxLabel;
    cxLabel17: TcxLabel;
    cxButton7: TcxButton;
    cxLabel18: TcxLabel;
    cxComboBox5: TcxComboBox;
    cxComboBox6: TcxComboBox;
    cxLabel19: TcxLabel;
    cxButton8: TcxButton;
    cxGrid4DBTableView1SUPERVISOR: TcxGridDBColumn;
    cxGrid4DBTableView1DATE_CONFIRMATION: TcxGridDBColumn;
    cxGrid2DBBandedTableView1DATE_DEPR: TcxGridDBBandedColumn;
    cxGrid4DBTableView1TAB_NUM_PUNISH: TcxGridDBColumn;
    cxGrid4DBTableView1TITLE_NAME: TcxGridDBColumn;
    cxGrid1DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn;
    cxTabSheet4: TcxTabSheet;
    cxGrid5DBTableView1: TcxGridDBTableView;
    cxGrid5Level1: TcxGridLevel;
    cxGrid5: TcxGrid;
    cxGrid5DBTableView1ID_PUNISHMENT: TcxGridDBColumn;
    cxGrid5DBTableView1DESCRIPTION: TcxGridDBColumn;
    cxGrid5DBTableView1PRICE: TcxGridDBColumn;
    cxGrid5DBTableView1COMMENTARY: TcxGridDBColumn;
    cxGrid5DBTableView1CATEGORY_SEVERITY: TcxGridDBColumn;
    cxGrid6: TcxGrid;
    OraQuery5: TOraQuery;
    OraDataSource5: TOraDataSource;
    cxButton9: TcxButton;
    SaveDialog1: TSaveDialog;
    Panel9: TPanel;
    RzSizePanel1: TRzSizePanel;
    cxStyleRepository1: TcxStyleRepository;
    cxStyle1: TcxStyle;
    Panel10: TPanel;
    RzSizePanel2: TRzSizePanel;
    Panel11: TPanel;
    Panel12: TPanel;
    cxGrid2DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn;
    cxButton11: TcxButton;
    cxGrid2DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1TAB_NUM_PUNISH: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn;
    cxButton12: TcxButton;
    cxButton13: TcxButton;
    cxButton14: TcxButton;
    cxButton15: TcxButton;
    cxButton16: TcxButton;
    cxButton17: TcxButton;
    cxGrid6Level1: TcxGridLevel;
    cxGrid6DBBandedTableView1: TcxGridDBBandedTableView;
    cxGrid6DBBandedTableView1TAB_NUM_PUNISH: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1TITLE_NAME: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1ID_PUNISHMENT: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1FINISH_TYPE_DEPR: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1FINISH_PRICE_PUNISH: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1ORDER_NUMBER: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1DEPT_NAME_FULL: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1SUPERVISOR: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1DATE_CONFIRMATION: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn;
    cxGrid4DBTableView1CANCEL_STATUS: TcxGridDBColumn;
    cxGrid6DBBandedTableView1MANAGER_CANCEL_ST: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1SUPERVISOR_DELETE_ST: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1DATE_DELETION_STATUS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1DATE_DELETION_STATUS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1MANAGER_CANCEL_ST: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1SUPERVISOR_DELETE_ST: TcxGridDBBandedColumn;
    cxComboBox7: TcxComboBox;
    cxLabel20: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    cxDateEdit3: TcxDateEdit;
    cxLabel21: TcxLabel;
    cxLabel22: TcxLabel;
    Lock_Button: TcxButton;
    Shape1: TShape;
    cxGrid4DBTableView1ID_DEPR: TcxGridDBColumn;
    cxButton18: TcxButton;
    cxGrid4DBTableView1LOCK_STATUS: TcxGridDBColumn;
    cxButton10: TcxButton;
    cxGrid2DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn;
    cxGrid3DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn;
    cxGrid6DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn;
    cxGrid4DBTableView1LOCK_VALUE: TcxGridDBColumn;
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cxComboBox1PropertiesChange(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
    procedure cxTabSheet2Show(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxGrid3DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxTabSheet3Show(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton7Click(Sender: TObject);
    procedure cxButton8Click(Sender: TObject);
    procedure cxGrid1DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxButton9Click(Sender: TObject);
    procedure cxTabSheet4Show(Sender: TObject);
    procedure cxButton10Click(Sender: TObject);
    procedure cxTabSheet1Resize(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cxButton11Click(Sender: TObject);
    procedure cxGrid6DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid3DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxGrid2DBBandedTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure cxButton12Click(Sender: TObject);
    procedure cxButton13Click(Sender: TObject);
    procedure cxButton14Click(Sender: TObject);
    procedure cxButton15Click(Sender: TObject);
    procedure cxButton16Click(Sender: TObject);
    procedure cxButton17Click(Sender: TObject);
    procedure cxGrid6DBBandedTableView1CellClick(
      Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure cxGrid4DBTableView1CustomDrawCell(
      Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
      AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
    procedure Lock_ButtonClick(Sender: TObject);
    procedure cxButton18Click(Sender: TObject);
    procedure cxTabSheet1Show(Sender: TObject);
    procedure cxTabSheet2Resize(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15172: TForm15172;
//  dep_mass: array of Integer;
procedure UpdateGridStat0(id_depr: string);
procedure UpdateGridStat3(id_depr: string);
procedure UpdateGridStat2(id_depr: string);
implementation

{$R *.dfm}

uses DM_Plan_Pers,
  Dmod,
  DMod2,
  cxGridExportLink,
  cxExport;

procedure TForm15172.FormCreate(Sender: TObject); //создание формы
var
  i: Integer;
 // StrList : TStringList;
begin

  cxPageControl1.Visible:=False;
  cxButton9.Visible:=False;
  cxButton15.Visible:=False;
  cxButton16.Visible:=False;
  cxButton17.Visible:=False;
  if BaseID in [0, 8] then
    begin
      cxPageControl1.Visible:=TRUE;
      OraQuery1.Active:=False;
      OraQuery1.Active:=True;
      OraQuery2.Active:=False;
      OraQuery2.Active:=True;
      OraQuery3.Active:=False;
      OraQuery3.Active:=True;
      OraQuery4.Active:=False;
      OraQuery4.Active:=True;
      OraQuery5.Active:=False;
      OraQuery5.Active:=True;
      DM_PlanPers.q_Dept_Acc.Active:=False;
      DM_PlanPers.q_Dept_Acc.Params.ParamByName('id_user').AsInteger:=UserID;
      DM_PlanPers.q_Dept_Acc.Active:=True;

      OraQuery1.ReadOnly:=True; // отключаем редактирование таблиц
      OraQuery4.ReadOnly:=True; // отключаем редактирование таблиц
      OraQuery5.ReadOnly:=True;
      cxComboBox1.Properties.Items.Clear;
      cxComboBox2.Properties.Items.Clear;
      cxComboBox5.Properties.Items.Clear;
      cxComboBox6.Properties.Items.Clear;

 // if BaseID in [0, 8] then
  //  begin
      OraQuery2.First;
      for i:=0 to OraQuery2.RecordCount - 1 do
        begin
          cxComboBox1.Properties.Items.AddObject(OraQuery2.Fields[0].AsString + ' ' + OraQuery2.Fields[1].AsString,
            Tobject(StrToInt(OraQuery2.Fields[0].AsString)));
          OraQuery2.Next;
        end;
    //end;

    // Выговор или штраф
      cxComboBox3.Properties.Items.Clear;
      cxComboBox3.Properties.Items.Add('Выговор');
      cxComboBox3.Properties.Items.Add('Штраф');
    // end ComboBox3
    // Выговор или штраф
      cxComboBox4.Properties.Items.Add('Выговор');
      cxComboBox4.Properties.Items.Add('Штраф');
     // end ComboBox4
  //Combobox7

      with cxComboBox7.Properties.Items do
        begin
          AddObject('Без пометок на удаление(отмену)', TObject(999));
          AddObject('Запрос на отмену', TObject(1));
          AddObject('С пометкой  на удаление', TObject(2));
        end;
    {

   StrList := TStringList.Create;
   with StrList do
   begin
      AddObject('Сформировано', TObject(0));
      AddObject('Запрос на удаление', TObject(1));
      AddObject('', TObject(999));
      AddObject('Пометка на удаление', TObject(2));
      AddObject('Отклонить запрос на отмену', TObject(3));

   end;
   StrList.Free;
     }
      OraQuery1.MacroByName('dept_short_filter').Active:=False;
      OraQuery4.MacroByName('date_filter').Active:=False; // отключаем фильтрацию по дате и выводим изначально все записи
      OraQuery4.MacroByName('dept_short_filter').Active:=False; // отключаем фильтрацию по дате и выводим изначально все записи
      OraQuery4.MacroByName('order_number_filter').Active:=False;
      OraQuery4.MacroByName('status_filter').Active:=False;
      OraQuery4.MacroByName('status_filter0_3').Active:=False;
      OraQuery4.MacroByName('date2_filter').Active:=False;
      OraQuery1.Params.ParamByName('User_Id_LM').AsInteger:=UserID;
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
      for i:=0 to DM_PlanPers.OraQuery1.RecordCount - 1 do
        begin
          cxComboBox2.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox5.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          cxComboBox6.Properties.Items.AddObject(DM_PlanPers.OraQuery1.Fields[1].AsString,
            Tobject(StrToInt(DM_PlanPers.OraQuery1.Fields[0].AsString)));
          DM_PlanPers.OraQuery1.Next;
        end;
    end;
end;

procedure TForm15172.cxButton4Click(Sender: TObject);
var
  m: Integer;
begin
  OraQuery1.Active:=False;
 // OraQuery1.Macros.MacroByName('find_by_name').Active := False;
  if cxTextEdit1.Text <> '' then
    begin
      OraQuery1.MacroByName('find_by_name').Active:=True;
      OraQuery1.Params.ParamByName('fio').AsString:= '%' + AnsiLowerCase(cxTextEdit1.Text) + '%';
      OraQuery1.Active:=true;
    end
  else
    begin
      OraQuery1.Macros.MacroByName('find_by_name').Active:=False;
    end;

  if cxComboBox5.Text <> '' then
    begin
      m:=Integer(cxComboBox5.Properties.Items.Objects[cxComboBox5.ItemIndex]);
      OraQuery1.MacroByName('dept_short_filter').Active:=True;
      OraQuery1.Params.ParamByName('dept_id').AsInteger:=m;
      OraQuery1.Active:=False;
      OraQuery1.Active:=True;
    end
  else
    begin
      OraQuery1.MacroByName('dept_short_filter').Active:=False;
    end;

end;

procedure TForm15172.cxComboBox1PropertiesChange(Sender: TObject);
var
  m: Integer;
begin
  m:=Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
  with OraQuery2 do
    begin
      SQL.Clear;
      SQL.Add('SELECT commentary, price, category_severity ');
      SQL.Add(' FROM Plan_pers_punishment tpp ');
      SQL.Add(' WHERE id_punishment = ' + IntToStr(m) + ' ');
      ExecSQL;
    end;
  cxLabel2.Caption:=OraQuery2.FieldValues['COMMENTARY'];
  cxTextEdit2.Text:=OraQuery2.FieldValues['PRICE'];
  cxTextEdit3.Text:=OraQuery2.FieldValues['CATEGORY_SEVERITY'];
end;

procedure TForm15172.cxButton2Click(Sender: TObject);
var
  z, id_pun: Integer;
  t_num_p, comment, price_pun: string;
  type_dep: string;

begin
  for z:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
    begin
      t_num_p:=cxGrid1DBBandedTableView1.DataController.GetValue(
        cxGrid1DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBBandedTableView1TAB_NUM.Index);
    end;

  if (t_num_p = '') or (cxComboBox1.Text = '') or (cxComboBox3.Text = '') or (cxTextEdit3.Text = '') or (cxTextEdit2.Text = '') then
    begin
      ShowMessage('Заполните все поля!');
    end
  else
    begin
      id_pun:=Integer(cxComboBox1.Properties.Items.Objects[cxComboBox1.ItemIndex]);
      price_pun:=cxTextEdit2.Text;
      comment:=RichEdit1.Text;
      type_dep:=cxComboBox3.Text;
      with DM_PlanPers.OraQuery1 do
        begin
          SQL.Clear;
          SQL.Add('INSERT INTO Plan_pers_depremization(id_depr, id_punishment, tab_num_punish, ');
          SQL.Add(' tab_num_manager, price_punish, commentary, type_depr, date_creation, valide_supervisor,  ');
          SQL.Add(' cancellation_status, lock_status  )');
          SQL.Add(' VALUES ( plan_pers_depremization_seq.nextval, ' + IntToStr(id_pun) + ', ');
          SQL.Add(' ''' + t_num_p + ''', ');
          SQL.Add(' ''' + IntToStr(UserID) + ''', ');
          SQL.Add(' ' + price_pun + ', ');
          SQL.Add(' ''' + comment + ''', ');
          SQL.Add(' ''' + type_dep + ''', ');
          SQL.Add(' sysdate, 0, 0, 0 ) ');
          try
          ExecSQL except
            on E: EDatabaseError do
              ShowMessage(E.Message);
          end;
        end;
      ShowMessage('Взыскание добавлено');
      OraQuery3.Refresh;
      OraQuery3.Active:=true;
    end;
end;

{
procedure TForm15172.cxGrid1MouseEnter(Sender: TObject);
var
  z: Integer;

begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      OraQuery3.Active:=False;
      OraQuery3.Macros.MacroByName('find_tab_num').Active:=False;
      for z:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          OraQuery3.MacroByName('find_tab_num').Active:=True;
          OraQuery3.Params.ParamByName('tab_num').AsString:=cxGrid1DBBandedTableView1.DataController.GetValue(
            cxGrid1DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBBandedTableView1TAB_NUM.Index);
          cxLabel3.Caption:=cxGrid1DBBandedTableView1.DataController.GetValue(
            cxGrid1DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBBandedTableView1FULL_NAME.Index);
        end;
      OraQuery3.Active:=true;
    end;
end;
}
// TabSheet 2

procedure TForm15172.cxTabSheet2Show(Sender: TObject); // 2 вкладка инициализация
begin
  cxDateEdit1.Clear;
  cxDateEdit2.Clear;
  cxDateEdit3.Clear;
  cxComboBox2.Text:= '';
  cxComboBox7.Text:= '';
  OraQuery4.MacroByName('date_filter').Active:=False;
  OraQuery4.MacroByName('dept_short_filter').Active:=False;
  OraQuery4.MacroByName('status_filter').Active:=False;
  OraQuery4.MacroByName('status_filter0_3').Active:=False;
  OraQuery4.MacroByName('date2_filter').Active:=False;
  OraQuery4.MacroByName('valide_filter').Active:=True;
  OraQuery4.Params.ParamByName('valide_value').AsInteger:=0;
  OraQuery4.Active:=True;
  OraQuery5.Active:=True;
  OraQuery4.Refresh;
  OraQuery5.Refresh;
end;

procedure TForm15172.cxButton3Click(Sender: TObject);
var
  m: Integer;
begin
  if (DateToStr(cxDateEdit1.Date) = '00.00.0000') and (cxComboBox2.Text = '') then
    ShowMessage('Заполните выбираемое поле поиска');

  if DateToStr(cxDateEdit1.Date) <> '00.00.0000' then
    begin
      OraQuery4.MacroByName('date_filter').Active:=True;
      OraQuery4.Params.ParamByName('date_value').AsDate:=cxDateEdit1.Date;
      OraQuery4.Active:=False;
      OraQuery4.Active:=True;
    end
  else
    begin
      OraQuery4.MacroByName('date_filter').Active:=False;
    end;

  if cxComboBox2.Text <> '' then
    begin
      m:=Integer(cxComboBox2.Properties.Items.Objects[cxComboBox2.ItemIndex]);
      OraQuery4.MacroByName('dept_short_filter').Active:=True;
      OraQuery4.Params.ParamByName('dept_id').AsInteger:=m;
      OraQuery4.Active:=False;
      OraQuery4.Active:=True;
    end
  else
    begin
      OraQuery4.MacroByName('dept_short_filter').Active:=False;
    end;
end;

procedure TForm15172.cxButton1Click(Sender: TObject);
begin
  cxComboBox2.Text:= '';
  cxDateEdit1.Clear;
  OraQuery4.MacroByName('date_filter').Active:=False;
  OraQuery4.MacroByName('dept_short_filter').Active:=False;
  OraQuery4.Active:=False;
  OraQuery4.Active:=True;
end;

procedure TForm15172.cxTabSheet3Show(Sender: TObject);
begin
  cxComboBox6.Text:= '';
  cxComboBox7.Text:= '';
  OraQuery4.MacroByName('date_filter').Active:=False;
  OraQuery4.MacroByName('dept_short_filter').Active:=False;
  OraQuery4.MacroByName('status_filter0_3').Active:=False;
  OraQuery4.MacroByName('status_filter').Active:=False; /////   status_filter
  OraQuery4.MacroByName('date2_filter').Active:=False;
  OraQuery4.MacroByName('valide_filter').Active:=True;
  OraQuery4.Params.ParamByName('valide_value').AsInteger:=1;
  OraQuery4.Active:=True;
  OraQuery4.Refresh;
end;

procedure TForm15172.cxButton6Click(Sender: TObject);
var
  m: Integer;
begin

  if (cxTextEdit6.Text = '') and (cxComboBox6.Text = '') and (cxComboBox7.Text = '')
    and (DateToStr(cxDateEdit2.Date) = '00.00.0000') and (DateToStr(cxDateEdit3.Date) = '00.00.0000') then
    begin
      ShowMessage('Введите данные для поиска');
    end
  else
    begin
      if cxTextEdit6.Text <> '' then
        begin
          OraQuery4.MacroByName('order_number_filter').Active:=True;
          OraQuery4.Params.ParamByName('order_value').AsString:=cxTextEdit6.Text;
          OraQuery4.Active:=False;
          OraQuery4.Active:=True;
        end
      else
        begin
          OraQuery4.MacroByName('order_number_filter').Active:=False;
        end;

      if cxComboBox6.Text <> '' then
        begin
          m:=Integer(cxComboBox6.Properties.Items.Objects[cxComboBox6.ItemIndex]);
          OraQuery4.MacroByName('dept_short_filter').Active:=True;
          OraQuery4.Params.ParamByName('dept_id').AsInteger:=m;
          OraQuery4.Active:=False;
          OraQuery4.Active:=True;
        end
      else
        begin
          OraQuery4.MacroByName('dept_short_filter').Active:=False;
        end;

      if cxComboBox7.Text <> '' then
        begin
          m:=Integer(cxComboBox7.Properties.Items.Objects[cxComboBox7.ItemIndex]);
              // 999   Без пометок на удаление(отмену)
              // 1     Запрос на отмену
              //  2    С пометкой  на удаление
          if m = 999 then
            OraQuery4.MacroByName('status_filter0_3').Active:=True
          else
            OraQuery4.MacroByName('status_filter0_3').Active:=False;
          if m = 1 then
            begin
              OraQuery4.MacroByName('status_filter').Active:=True;
              OraQuery4.Params.ParamByName('status_depr').AsInteger:=1;
            end
          else
            if m = 2 then
              begin
                OraQuery4.MacroByName('status_filter').Active:=True;
                OraQuery4.Params.ParamByName('status_depr').AsInteger:=2;
              end
            else
              OraQuery4.MacroByName('status_filter').Active:=False;
          OraQuery4.Active:=False;
          OraQuery4.Active:=True;
        end
      else
        begin
          OraQuery4.MacroByName('status_filter').Active:=False;
          OraQuery4.MacroByName('status_filter0_3').Active:=False;
        end;

      if (DateToStr(cxDateEdit2.Date) <> '00.00.0000') and (DateToStr(cxDateEdit3.Date) <> '00.00.0000') then
        begin
          OraQuery4.MacroByName('date2_filter').Active:=True;
          OraQuery4.Params.ParamByName('start_date').AsDate:=cxDateEdit2.Date;
          OraQuery4.Params.ParamByName('end_date').AsDate:=cxDateEdit3.Date;
          OraQuery4.Active:=False;
          OraQuery4.Active:=True;
        end
      else
        begin
          OraQuery4.MacroByName('date2_filter').Active:=False;
        end;

    end;
end;

procedure TForm15172.cxButton7Click(Sender: TObject); //сброс 3 вкладка
begin

  OraQuery4.MacroByName('order_number_filter').Active:=False;
  OraQuery4.MacroByName('dept_short_filter').Active:=False;
  OraQuery4.MacroByName('status_filter').Active:=False;
  OraQuery4.MacroByName('status_filter0_3').Active:=False;
  OraQuery4.MacroByName('date2_filter').Active:=False;
  OraQuery4.Active:=True;
  cxDateEdit2.Clear;
  cxDateEdit3.Clear;
  cxComboBox7.Text:= '';
  cxTextEdit6.Text:= '';
  cxComboBox6.Text:= '';
end;

procedure TForm15172.cxButton8Click(Sender: TObject);
begin
  cxComboBox5.Text:= '';
  cxTextEdit1.Text:= '';
  cxLabel3.Caption:= '';
  cxComboBox1.Text:= '';
  cxTextEdit3.Text:= '';
  cxTextEdit2.Text:= '';
  cxComboBox3.Text:= '';
  RichEdit1.Text:= '';
  cxLabel2.Caption:= '';
  OraQuery1.MacroByName('find_by_name').Active:=False;
  OraQuery1.MacroByName('dept_short_filter').Active:=False;
  OraQuery1.Active:=False;
  OraQuery3.Active:=False;
end;

procedure TForm15172.cxGrid1DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  z: Integer;

begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      OraQuery3.Active:=False;
      OraQuery3.Macros.MacroByName('find_tab_num').Active:=False;
      for z:=0 to cxGrid1DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          OraQuery3.MacroByName('find_tab_num').Active:=True;
          OraQuery3.Params.ParamByName('tab_num').AsString:=cxGrid1DBBandedTableView1.DataController.GetValue(
            cxGrid1DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBBandedTableView1TAB_NUM.Index);
          cxLabel3.Caption:=cxGrid1DBBandedTableView1.DataController.GetValue(
            cxGrid1DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid1DBBandedTableView1FULL_NAME.Index);
        end;
      OraQuery3.Active:=true;
    end;
end;

procedure TForm15172.cxGrid3DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  z: Integer;
  f_type_depr, f_price_depr, record_status: string;
begin
  cxButton9.Visible:=False;
  cxButton15.Visible:=False;
  cxButton16.Visible:=False;
  cxButton17.Visible:=False;
  //cxTextEdit5.Text:= '';
  cxButton5.Visible:=True;
  cxButton14.Visible:=True;
  cxButton13.Visible:=True;
  cxButton12.Visible:=True;
  for z:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do
    begin
      cxLabel11.Caption:=cxGrid3DBBandedTableView1.DataController.GetValue(
        cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1FULL_NAME.Index);
      f_price_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
        cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1PRICE_PUNISH.Index);
      f_type_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
        cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1TYPE_DEPR.Index);
      record_status:=cxGrid3DBBandedTableView1.DataController.GetValue(
        cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1CANCEL_STATUS.Index);
    end;
  OraQuery4.Active:=True;
  cxComboBox4.Text:=f_type_depr;
  cxTextEdit4.Text:=f_price_depr;

//-----------------------------------------------------------------------
                  {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//-----------------------------------------------------------------------

  if record_status = 'Запрос на отмену' then
    begin
      cxButton14.Visible:=False;
      cxButton12.Visible:=True;
    end;

  if (record_status = 'Сформирован') or (record_status = 'Пометка на удаление') then
    begin
      cxButton12.Visible:=False;
      cxButton14.Visible:=True;
    end;

end;

procedure TForm15172.cxGrid6DBBandedTableView1CellClick(
  Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
  z: Integer;
  f_type_depr, f_price_depr, f_order_num, record_status: string;
begin
  cxButton5.Visible:=False;
  cxButton9.Visible:=True;
  cxButton12.Visible:=False;
  cxButton13.Visible:=False;
  cxButton14.Visible:=False;
  cxButton15.Visible:=True;
  cxButton16.Visible:=True;
  cxButton17.Visible:=True;
  for z:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do
    begin
      cxLabel11.Caption:=cxGrid6DBBandedTableView1.DataController.GetValue(
        cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1FULL_NAME.Index);
      f_price_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
        cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1FINISH_PRICE_PUNISH.Index);
      f_type_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
        cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1FINISH_TYPE_DEPR.Index);
      record_status:=cxGrid6DBBandedTableView1.DataController.GetValue(
        cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1CANCEL_STATUS.Index);
      if cxGrid6DBBandedTableView1.DataController.GetValue(
        cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ORDER_NUMBER.Index) <> null then
        begin
          f_order_num:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ORDER_NUMBER.Index);
        end
      else
        begin
          f_order_num:= '';
        end;
    end;
  OraQuery5.Active:=True;
  cxComboBox4.Text:=f_type_depr;
  cxTextEdit4.Text:=f_price_depr;
  cxTextEdit5.Text:=f_order_num;

//-----------------------------------------------------------------------
                  {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//-----------------------------------------------------------------------

  if Trim(record_status) = 'Запрос на отмену' then
    begin
      cxButton17.Visible:=False;
      cxButton15.Visible:=True;
    end;

  if (Trim(record_status) = 'Сформирован') or (Trim(record_status) = 'Пометка на удаление') then
    begin
      cxButton15.Visible:=False;
      cxButton17.Visible:=True;
    end;

end;

procedure TForm15172.cxButton5Click(Sender: TObject); // утверждение штрафа
var
  z: Integer;
  id_depr, lock_status: string;
begin

  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    ShowMessage('Пользователь не выбран');

  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1LOCK_STATUS.Index);
        end;

      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          if ((cxTextEdit5.Text <> '') and (cxTextEdit4.Text <> '') and (cxLabel11.Caption <> ''))
            or ((cxComboBox4.Text = 'Выговор') and (cxTextEdit4.Text = '') and (cxLabel11.Caption <> ''))
            or ((cxComboBox4.Text = 'Выговор') and (StrToInt(cxTextEdit4.Text) = 0) and (cxLabel11.Caption <> '')) then
            begin
                //-----------------------------------------------------------------------
                  {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену
                     10 - в архиве - для 3 склладки - ред-е невозможно    }
//-----------------------------------------------------------------------
            {   if cxComboBox7.Text = '' Then
                  begin
                   if record_status = 'Сформировано' then
                      m := 0
                      else if record_status = 'Запрос на отмену' then
                        m := 1
                        else if record_status = 'Снять с удаления'   then
                          m := 0
                          else if record_status = 'Пометка на удаление'  then
                            m := 2
                            else if record_status = 'Отклонить запрос на отмену' then
                              m := 3;    // == значению из комбобокс
                    end
                      else begin
                        m := Integer(cxComboBox7.Properties.Items.Objects[cxComboBox7.ItemIndex]);
                      end;
                  }
              if cxTextEdit4.Text = '' then
                begin
                  cxTextEdit4.Text:= '0'; // цену устанавливаем в 0 если выговор для записи в БД
                end;

              with DM_PlanPers.OraQuery1 do
                begin
                  SQL.Clear;
                  SQL.Add(' UPDATE Plan_pers_depremization ');
                  SQL.Add(' SET  valide_supervisor = 1, ');
                  SQL.Add('      finish_type_depr = ''' + cxComboBox4.Text + ''', ');
                  SQL.Add('      finish_price_punish = ' + cxTextEdit4.Text + ', ');
                  SQL.Add('      tab_num_supervisor = ' + IntToStr(UserID) + ', ');
                  SQL.Add('      date_confirmation = sysdate , ');
                   // SQL.Add('      cancellation_status = '+ IntToStr(m) +',' );
               {
                    if  (cxComboBox7.Text <> '')  then    //если пустота - не меняем статут
                      begin
                        SQL.Add('      cancellation_status = '+ IntToStr(m) +',' );
                       end;
                    if m = 2 then      // отметка удаления
                      begin
                        SQL.Add('   tab_num_supervisor_delete_status = ' + IntToStr(UserID) + ', ');
                        SQL.Add('  date_deletion_status = sysdate, ');
                      end;
                    if m = 0 then   //запрос снят с удаления
                      begin
                        SQL.Add('   tab_num_supervisor_delete_status = 0, ');
                        SQL.Add('  date_deletion_status = NULL, ');
                      end;
                    if m = 3 then   // запрос отклонен руководителем
                      begin
                        SQL.Add('  tab_num_supervisor_delete_status = 0, ');
                        SQL.Add('  date_deletion_status = NULL, ');
                        SQL.Add('  tab_num_manag_cancel_status = 0, ');
                      end;
                    }
                  SQL.Add('      order_number = ''' + cxTextEdit5.Text + ''' ');
                  SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
                  try
                  ExecSQL except
                    on E: EDatabaseError do
                      ShowMessage(E.Message);
                  end;
                end;
              ShowMessage('Утверждено');
              OraQuery4.Refresh;
              OraQuery5.Refresh;
              cxComboBox4.Text:= '';
              cxTextEdit4.Text:= '';
              cxLabel11.Caption:= '';

            end
          else
            begin
              ShowMessage('Заполнены не все поля!');
            end;
        end;
         // end;
    end;

end;

procedure TForm15172.cxButton9Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin

  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount = 0 then
    ShowMessage('Пользователь не выбран');

  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1LOCK_STATUS.Index);
        end;

      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          if ((cxTextEdit5.Text <> '') and (cxTextEdit4.Text <> '') and (cxLabel11.Caption <> ''))
            or ((cxComboBox4.Text = 'Выговор') and (cxTextEdit4.Text = '') and (cxLabel11.Caption <> ''))
            or ((cxComboBox4.Text = 'Выговор') and (StrToInt(cxTextEdit4.Text) = 0) and (cxLabel11.Caption <> '')) then
            begin
//-----------------------------------------------------------------------
                  {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//-----------------------------------------------------------------------
        {       if cxComboBox7.Text = '' Then
                  begin
                   if record_status = 'Сформировано' then
                      m := 0
                      else if record_status = 'Запрос на отмену' then
                        m := 1
                        else if record_status = 'Снять с удаления'   then
                          m := 0
                          else if record_status = 'Пометка на удаление'  then
                            m := 2
                            else if record_status = 'Отклонить запрос на отмену' then
                              m := 3;    // == значению из комбобокс
                    end
                      else begin
                        m := Integer(cxComboBox7.Properties.Items.Objects[cxComboBox7.ItemIndex]);
                      end;
                      }
              if cxTextEdit4.Text = '' then
                begin
                  cxTextEdit4.Text:= '0'; // цену устанавливаем в 0 если выговор для записи в БД
                end;

              with DM_PlanPers.OraQuery1 do
                begin
                  SQL.Clear;
                  SQL.Add(' UPDATE Plan_pers_depremization ');
                  SQL.Add(' SET   ');
                  SQL.Add('      finish_type_depr = ''' + cxComboBox4.Text + ''', ');
                  SQL.Add('      finish_price_punish = ' + cxTextEdit4.Text + ', ');
                  SQL.Add('      tab_num_supervisor = ' + IntToStr(UserID) + ', ');
                  SQL.Add('      date_confirmation = sysdate , ');

                   {     if  (cxComboBox7.Text <> '')  then    //если пустота - не меняем статут
                          begin
                          SQL.Add('      cancellation_status = '+ IntToStr(m) +',' );
                          end;
                        if m = 2 then      // отметка удаления
                          begin
                            SQL.Add('   tab_num_supervisor_delete_status = ' + IntToStr(UserID) + ', ');
                            SQL.Add('  date_deletion_status = sysdate, ');
                          end;
                        if m = 0 then   //запрос снят с удаления
                          begin
                            SQL.Add('   tab_num_supervisor_delete_status = 0, ');
                            SQL.Add('  date_deletion_status = NULL, ');
                          end;
                        if m = 3 then   // запрос отклонен руководителем
                          begin
                            SQL.Add('   tab_num_supervisor_delete_status = 0, ');
                            SQL.Add('  date_deletion_status = NULL, ');
                            SQL.Add('  tab_num_manag_cancel_status = 0, ');
                          end;
                          }
                  SQL.Add('      order_number = ''' + cxTextEdit5.Text + ''' ');
                  SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
                  try
                  ExecSQL except
                    on E: EDatabaseError do
                      ShowMessage(E.Message);
                  end;
                end;
              ShowMessage('Запись обновлена');
              OraQuery5.Refresh;
              cxComboBox4.Text:= '';
              cxTextEdit4.Text:= '';
              cxLabel11.Caption:= '';

            end
          else
            begin
              ShowMessage('Заполнены не все поля!');
            end;
        end;
    end;
end;

procedure TForm15172.cxTabSheet4Show(Sender: TObject);
begin
  with OraQuery2 do
    begin
      SQL.Clear;
      SQL.Add('SELECT * ');
      SQL.Add('FROM Plan_pers_punishment tpp ');
      SQL.Add('Where tpp.valide = 1');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;
  OraQuery3.Active:=True;
end;

procedure TForm15172.cxButton10Click(Sender: TObject);
begin
  if OraQuery4.RecordCount > 0 then
    begin
      SaveDialog1.Filter:= 'Excel file|*.xls';
      SaveDialog1.InitialDir:= 'c:\';
      SaveDialog1.FileName:= 'Список взысканий.xls';
      if SaveDialog1.Execute then
        begin
          ExportGridToExcel(SaveDialog1.FileName, cxGrid4, True, True, True, 'xls');
        end;
      SaveDialog1.Filter:= '';
    end
  else
    MessageDlg('Нет данных, соответствующих запрошенным критериям', mtInformation, [mbOK], 0);
end;

procedure TForm15172.cxTabSheet1Resize(Sender: TObject);
begin
  RzSizePanel1.Height:=cxTabSheet1.Height div 3;
end;

procedure TForm15172.FormShow(Sender: TObject);
begin
  cxPageControl1.ActivePage:=cxTabSheet1;
end;

procedure TForm15172.cxButton11Click(Sender: TObject);
var
  z: Integer;
  id_depr, record_status, lock_status: string;
begin

  if cxGrid2DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid2DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid2DBBandedTableView1.DataController.GetValue(
            cxGrid2DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBBandedTableView1ID_DEPR.Index);
          record_status:=cxGrid2DBBandedTableView1.DataController.GetValue(
            cxGrid2DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBBandedTableView1CANCEL_STATUS.Index);
          lock_status:=cxGrid2DBBandedTableView1.DataController.GetValue(
            cxGrid2DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid2DBBandedTableView1LOCK_STATUS.Index);
        end;

      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          if record_status = 'Пометка на удаление' then
            ShowMessage('Строка уже в статусе ''Пометка на удаление'' ')
          else
            if record_status = 'Запрос на отмену отклонен' then
              ShowMessage('Повторный запрос на отмену невозможен ')
            else
              begin
                with DM_PlanPers.OraQuery1 do
                  begin
                    SQL.Clear;
                    SQL.Add(' UPDATE Plan_pers_depremization ');
                    SQL.Add(' SET   ');
                    SQL.Add('      cancellation_status = 1, ');
                    SQL.Add('      tab_num_manag_cancel_status = ' + IntToStr(UserID) + ' ');
                    SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
                    try
                    ExecSQL except
                      on E: EDatabaseError do
                        ShowMessage(E.Message);
                    end;
                  end;
                ShowMessage('Выполнен запрос на отмену взыскания');
                OraQuery3.Refresh;
              end;
        end;
    end
  else
    begin
      ShowMessage('Выберите с нижней таблицы строку для запроса на отмену взыскания ');
    end;
end;

procedure TForm15172.cxGrid3DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid3DBBandedTableView1CANCEL_STATUS.Index] = 'Запрос на отмену' then
    ACanvas.Brush.Color:=$005EA5FB;

  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid3DBBandedTableView1CANCEL_STATUS.Index] = 'Пометка на удаление' then
    ACanvas.Brush.Color:=$008A82F7;
end;

procedure TForm15172.cxGrid6DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid6DBBandedTableView1CANCEL_STATUS.Index] = 'Запрос на отмену' then
    ACanvas.Brush.Color:=$005EA5FB;

  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid3DBBandedTableView1CANCEL_STATUS.Index] = 'Пометка на удаление' then
    ACanvas.Brush.Color:=$008A82F7;
end;

procedure TForm15172.cxGrid2DBBandedTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin
  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid2DBBandedTableView1CANCEL_STATUS.Index] = 'Пометка на удаление' then
    ACanvas.Brush.Color:=$008A82F7;
  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid2DBBandedTableView1CANCEL_STATUS.Index] = 'Запрос на отмену' then
    ACanvas.Brush.Color:=$005EA5FB;
end;

procedure TForm15172.cxGrid4DBTableView1CustomDrawCell(
  Sender: TcxCustomGridTableView; ACanvas: TcxCanvas;
  AViewInfo: TcxGridTableDataCellViewInfo; var ADone: Boolean);
begin

  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid4DBTableView1CANCEL_STATUS.Index] = 'Запрос на отмену' then
    ACanvas.Brush.Color:=$005EA5FB;

  if Sender.DataController.Values[AViewInfo.GridRecord.RecordIndex, cxGrid4DBTableView1CANCEL_STATUS.Index] = 'Пометка на удаление' then
    ACanvas.Brush.Color:=$008A82F7;

end;

procedure TForm15172.cxButton12Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1ID_DEPR.Index);
          ;
          lock_status:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1LOCK_STATUS.Index);
        end;
//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat3(id_depr);
          OraQuery4.Refresh;
        end;
    end;

end;

procedure TForm15172.cxButton13Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1LOCK_STATUS.Index);
        end;
//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat2(id_depr);
          OraQuery4.Refresh;
        end;
    end;

end;

procedure TForm15172.cxButton14Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid3DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid3DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid3DBBandedTableView1.DataController.GetValue(
            cxGrid3DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid3DBBandedTableView1LOCK_STATUS.Index);
        end;
//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat0(id_depr);
          OraQuery4.Refresh;
        end;
    end;

end;

procedure TForm15172.cxButton15Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1LOCK_STATUS.Index);
        end;

//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat3(id_depr);
          OraQuery5.Refresh;
        end;
    end;

end;

procedure TForm15172.cxButton16Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1LOCK_STATUS.Index);
        end;

//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat2(id_depr);
          OraQuery5.Refresh;
        end;
    end;
end;

procedure TForm15172.cxButton17Click(Sender: TObject);
var
  z: Integer;
  id_depr, lock_status: string;
begin
  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount = 0 then
    begin
      ShowMessage('Ничего не выбрано');
    end;

  if cxGrid6DBBandedTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid6DBBandedTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1ID_DEPR.Index);
          lock_status:=cxGrid6DBBandedTableView1.DataController.GetValue(
            cxGrid6DBBandedTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid6DBBandedTableView1LOCK_STATUS.Index);
        end;
//-----------------------------------------------------------------------
                 {   0 -'Сформировано'
                     0 - Снять с удаления
                     1 -  Запрос на отмену
                     2 - Пометка на удаление
                     3 - Отклонить запрос на отмену    }
//----------------------------------------------------------------------
      if StrToInt(lock_status) = 1 then
        ShowMessage('Строка заблокирована - дальнейшие изменения невозможны ');

      if StrToInt(lock_status) <> 1 then
        begin
          UpdateGridStat0(id_depr);
          OraQuery5.Refresh;
        end;
    end;

end;

//------------------------------------------------------

procedure UpdateGridStat3(id_depr: string);
begin
  with DM_PlanPers.OraQuery1 do
    begin
      SQL.Clear;
      SQL.Add(' UPDATE Plan_pers_depremization ');
      SQL.Add(' SET   ');
      SQL.Add(' cancellation_status = 3, ');
      SQL.Add('   tab_num_supervisor_delete_status = 0, ');
      SQL.Add('  date_deletion_status = NULL, ');
      SQL.Add('  tab_num_manag_cancel_status = 0 ');
      SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;
end;

procedure UpdateGridStat2(id_depr: string);
begin

  with DM_PlanPers.OraQuery1 do
    begin
      SQL.Clear;
      SQL.Add(' UPDATE Plan_pers_depremization ');
      SQL.Add(' SET   ');
      SQL.Add('   cancellation_status = 2 ,');
      SQL.Add('   tab_num_supervisor_delete_status = ' + IntToStr(UserID) + ', ');
      SQL.Add('   date_deletion_status = sysdate ');
      SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;

end;

procedure UpdateGridStat0(id_depr: string);
begin
  with DM_PlanPers.OraQuery1 do
    begin
      SQL.Clear;
      SQL.Add(' UPDATE Plan_pers_depremization ');
      SQL.Add(' SET   ');
      SQL.Add('   cancellation_status = 0 ,');
      SQL.Add('   tab_num_supervisor_delete_status = 0, ');
      SQL.Add('  date_deletion_status = NULL ');
      SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
      try
      ExecSQL except
        on E: EDatabaseError do
          ShowMessage(E.Message);
      end;
    end;
end;
//------------------------------------------------------

procedure TForm15172.Lock_ButtonClick(Sender: TObject);
var
  z: Integer;
  id_depr: string;
begin
  if cxGrid4DBTableView1.Controller.SelectedRowCount <> 0 then
    begin
      for z:=0 to cxGrid4DBTableView1.Controller.SelectedRowCount - 1 do
        begin
          id_depr:=cxGrid4DBTableView1.DataController.GetValue(
            cxGrid4DBTableView1.Controller.SelectedRows[Z].RecordIndex, cxGrid4DBTableView1ID_DEPR.Index);
          with DM_PlanPers.OraQuery1 do
            begin
              SQL.Clear;
              SQL.Add(' UPDATE Plan_pers_depremization ');
              SQL.Add(' SET   ');
              SQL.Add('   lock_status = 1 ');
              SQL.Add(' WHERE id_depr = ' + id_depr + ' ');
              try
              ExecSQL except
                on E: EDatabaseError do
                  ShowMessage(E.Message);
              end;
            end;
        end;
      OraQuery4.Refresh;
    end;
end;

procedure TForm15172.cxButton18Click(Sender: TObject);
begin
  cxGrid4DBTableView1.Controller.SelectAll;
end;

procedure TForm15172.cxTabSheet1Show(Sender: TObject);
begin
  if cxGrid1DBBandedTableView1.Controller.SelectedRowCount <> 0 then
   OraQuery3.Refresh;
end;

procedure TForm15172.cxTabSheet2Resize(Sender: TObject);
begin
  RzSizePanel2.Height:=cxTabSheet1.Height div 3;
end;

end.

