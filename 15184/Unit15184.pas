unit Unit15184;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, dxSkinsCore, dxSkinsDefaultPainters,
  dxSkinscxPCPainter, cxPC, cxControls, cxStyles, cxCustomData, cxGraphics,
  cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, ExtCtrls, Menus, cxLookAndFeelPainters,
  DBAccess, Ora, MemDS, cxButtons, cxLabel, cxContainer, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxCalendar;

type
  TForm15184 = class(TForm)
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxDateEdit1: TcxDateEdit;
    cxLabel1: TcxLabel;
    cxDateEdit2: TcxDateEdit;
    Shape1: TShape;
    btnViewBox: TcxButton;
    cxLabel2: TcxLabel;
    orqryBoxCNT: TOraQuery;
    dsBoxCNT: TOraDataSource;
    btnExport1: TcxButton;
    cxGrid1DBTableView1DT: TcxGridDBColumn;
    cxGrid1DBTableView1ALL_CNT_500: TcxGridDBColumn;
    cxGrid1DBTableView1ALL_QTE_500: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_500: TcxGridDBColumn;
    cxGrid1DBTableView1QTE_500: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_454: TcxGridDBColumn;
    cxGrid1DBTableView1QTE_454: TcxGridDBColumn;
    cxGrid1DBTableView1CNT_456: TcxGridDBColumn;
    cxGrid1DBTableView1QTE_456: TcxGridDBColumn;
    cxGrid1DBTableView1ACTUAL_KOR_CHECK: TcxGridDBColumn;
    cxGrid1DBTableView1ACTUAL_QTE_CHECK: TcxGridDBColumn;
    cxGrid1DBTableView1ALL_KOR_CHECK: TcxGridDBColumn;
    cxGrid1DBTableView1ALL_QTE_CHECK: TcxGridDBColumn;
    cxGrid1DBTableView1WEEK: TcxGridDBColumn;
    procedure btnViewBoxClick(Sender: TObject);
    procedure btnExport1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15184: TForm15184;

implementation

uses DM_Plan_Pers,
     Dmod,
     DMod2,
     cxGridExportLink,
     cxExport,
     DateUtils;

{$R *.dfm}

procedure TForm15184.btnViewBoxClick(Sender: TObject);
begin
  if (DateToStr(cxDateEdit1.Date) = '00.00.0000') or (DateToStr(cxDateEdit2.Date) = '00.00.0000') then
    begin
      ShowMessage('Выберите дату');
    end;

  if ((DateToStr(cxDateEdit1.Date) <> '00.00.0000') or (DateToStr(cxDateEdit2.Date) <> '00.00.0000')) then
    begin
      orqryBoxCNT.MacroByName('date_filter').Active := True;
      orqryBoxCNT.Params.ParamByName('date_start').AsDate := cxDateEdit1.Date;
      orqryBoxCNT.Params.ParamByName('date_end').AsDate := cxDateEdit2.Date;
      orqryBoxCNT.Active := False;
      orqryBoxCNT.Active := True;
   end;
end;

procedure TForm15184.btnExport1Click(Sender: TObject);
begin
 if orqryBoxCNT.RecordCount > 0 then
      begin
        DM_PlanPers.SaveDialog1.Filter:= 'Excel file|*.xls';
        DM_PlanPers.SaveDialog1.InitialDir:= 'c:\';
        DM_PlanPers.SaveDialog1.FileName:= 'Отчет по коробам Ostin.xls';
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

end.
