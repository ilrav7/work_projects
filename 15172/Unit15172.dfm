object Form15172: TForm15172
  Left = 215
  Top = 148
  Width = 1387
  Height = 803
  Caption = 'Form15172'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1371
    Height = 764
    ActivePage = cxTabSheet4
    Align = alClient
    BiDiMode = bdRightToLeft
    Color = clGradientInactiveCaption
    ParentBiDiMode = False
    ParentColor = False
    TabOrder = 0
    TabSlants.Positions = [spRight]
    ClientRectBottom = 764
    ClientRectRight = 1371
    ClientRectTop = 24
    object cxTabSheet1: TcxTabSheet
      Caption = #1053#1072#1083#1086#1078#1077#1085#1080#1077' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
      ImageIndex = 0
      OnResize = cxTabSheet1Resize
      OnShow = cxTabSheet1Show
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 740
        Align = alClient
        BevelOuter = bvNone
        Caption = 'Panel9'
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 0
        object cxGrid1: TcxGrid
          Left = 0
          Top = 65
          Width = 1371
          Height = 74
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          LookAndFeel.NativeStyle = False
          LookAndFeel.SkinName = 'Blue'
          object cxGrid1DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxGrid1DBBandedTableView1CellClick
            DataController.DataSource = OraDataSource1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            OptionsView.GroupByBox = False
            Bands = <
              item
                Width = 1075
              end>
            object cxGrid1DBBandedTableView1TAB_NUM: TcxGridDBBandedColumn
              Caption = #1058#1072#1073'.'#1053#1086#1084'.'
              DataBinding.FieldName = 'TAB_NUM'
              Styles.Header = cxStyle1
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FULL_NAME'
              Styles.Header = cxStyle1
              Width = 197
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DATE_BORN: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
              DataBinding.FieldName = 'DATE_BORN'
              Styles.Header = cxStyle1
              Width = 108
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn
              Caption = #1054#1090#1076#1077#1083' '
              DataBinding.FieldName = 'DEPT_NAME_SHORT'
              Styles.Header = cxStyle1
              Width = 129
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DIVISION_NAME: TcxGridDBBandedColumn
              Caption = #1054#1090#1076#1077#1083' '#1087#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
              DataBinding.FieldName = 'DIVISION_NAME'
              Styles.Header = cxStyle1
              Width = 197
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1TITLE_NAME: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_NAME'
              Styles.Header = cxStyle1
              Width = 201
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid1DBBandedTableView1DATE_BEGIN: TcxGridDBBandedColumn
              Caption = #1044#1072#1090#1072' '#1087#1088#1080#1085#1103#1090#1080#1103
              DataBinding.FieldName = 'DATE_BEGIN'
              Styles.Header = cxStyle1
              Width = 133
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBBandedTableView1
          end
        end
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 1371
          Height = 65
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object Label1: TLabel
            Left = 112
            Top = 5
            Width = 31
            Height = 13
            Caption = #1060#1048#1054
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object cxTextEdit1: TcxTextEdit
            Left = 108
            Top = 26
            AutoSize = False
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 0
            Height = 19
            Width = 153
          end
          object Panel1: TPanel
            Left = 1290
            Top = 0
            Width = 81
            Height = 65
            Align = alRight
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdRightToLeftNoAlign
            Color = clGradientInactiveCaption
            Ctl3D = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            TabOrder = 1
            object cxButton4: TcxButton
              Left = 8
              Top = 12
              Width = 45
              Height = 45
              TabOrder = 0
              OnClick = cxButton4Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C8C8C8009AD9
                00A9EA00A0E7009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C800B5E700E3FF00CAFD009DDE009AD9C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C800A1DC
                00DEF800E6FF00C3F8009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8009AD900A1DC00EDFD00E7FF00B4EC009AD9C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                009AD900ADE100F0FD0AE8FF2E97C4009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8009AD90ABAE5B0BABAC19C9CA4
                878CB68888B48787AE8282AE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8009EDCC8A9A9BB9292DAB4B4DBB5B5DEBDBDCA9999B68888AE82
                82C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AE8282C5A0A0EDC19FF1
                B672EEB67CE8C9C1EEDCDCD4A9A9BB8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8AE8282E9C7B7FFAF2FFFB236FFB43BFDB645EAC4AEF5EAEAD7AE
                AEBA8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7A4A4EBBDA0FFB745FF
                BE51FFC055FFC157FDC15DECCAB6F4E8E8D4ABABAE8282C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8B38989E7C5BEFFB44AFFCA6AFFCC6FFFCD70FFCC6EFCCA77F3E0
                DBE6CACABD9393C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B68F8FDABDBDECAA69FF
                C96EFFD686FFD787FFD685FFD480F4D5B4F4E6E6C8A2A2C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8B99393C3A1A1E1BDB7FCB85BFFD282FFE19DFFE09AFFDD94FBDC
                A7F6EAEAC49D9DC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BD9999D6BCBCE9
                C3B1F9BA65FFCB75FFE09CFFE6A7FCE7CAEDE1E1B68D8DC8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C09D9DD4B9B9E9CBC5F0C08FFABE68FFD294F1E0
                DABC9797B48B8BC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C2
                A0A0C7A8A8D9C1C1E0C9C9DBC4C4C19F9FBA9494C8C8C8C8C8C8}
              LookAndFeel.SkinName = 'Blue'
            end
          end
          object cxLabel18: TcxLabel
            Left = 271
            Top = 4
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
            ParentFont = False
            Style.TextStyle = [fsBold]
          end
          object cxComboBox5: TcxComboBox
            Left = 272
            Top = 26
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 3
            Width = 153
          end
          object cxButton8: TcxButton
            Left = 17
            Top = 24
            Width = 75
            Height = 25
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 4
            OnClick = cxButton8Click
            LookAndFeel.SkinName = 'Blue'
          end
        end
        object Panel3: TPanel
          Left = 0
          Top = 139
          Width = 1371
          Height = 223
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          Ctl3D = False
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 2
          object cxLabel1: TcxLabel
            Left = 8
            Top = 36
            Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1077' '
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxComboBox1: TcxComboBox
            Left = 144
            Top = 35
            Properties.DropDownListStyle = lsFixedList
            Properties.ReadOnly = False
            Properties.OnChange = cxComboBox1PropertiesChange
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 1
            Width = 225
          end
          object cxLabel4: TcxLabel
            Left = 8
            Top = 66
            Caption = #1057#1090#1077#1087#1077#1085#1100' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel5: TcxLabel
            Left = 8
            Top = 97
            Caption = #1057#1091#1084#1084#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit2: TcxTextEdit
            Left = 144
            Top = 96
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 4
            Width = 121
          end
          object cxComboBox3: TcxComboBox
            Left = 144
            Top = 128
            Properties.DropDownListStyle = lsFixedList
            Properties.ReadOnly = False
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 5
            Width = 121
          end
          object cxLabel6: TcxLabel
            Left = 16
            Top = 104
          end
          object cxLabel7: TcxLabel
            Left = 8
            Top = 128
            Caption = #1042#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxTextEdit3: TcxTextEdit
            Left = 144
            Top = 65
            Properties.ReadOnly = True
            Style.Color = 16446703
            Style.LookAndFeel.SkinName = 'Blue'
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
            TabOrder = 8
            Width = 121
          end
          object RichEdit1: TRichEdit
            Left = 320
            Top = 92
            Width = 185
            Height = 57
            Color = 16446703
            ImeName = 'Russian'
            TabOrder = 9
          end
          object cxLabel8: TcxLabel
            Left = 320
            Top = 76
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel2: TcxLabel
            Left = 392
            Top = 36
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Constraints.MaxWidth = 500
            Properties.WordWrap = True
            Width = 500
          end
          object cxButton2: TcxButton
            Left = 144
            Top = 173
            Width = 153
            Height = 33
            Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1042#1079#1099#1089#1082#1072#1085#1080#1077
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 12
            OnClick = cxButton2Click
            LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel3: TcxLabel
            Left = 144
            Top = 11
            Caption = #1060#1048#1054
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxLabel9: TcxLabel
            Left = 8
            Top = 11
            Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
            ParentFont = False
            ParentShowHint = False
            ShowHint = False
            Style.BorderStyle = ebsNone
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
            StyleHot.TextStyle = []
          end
          object cxButton11: TcxButton
            Left = 352
            Top = 173
            Width = 153
            Height = 33
            Caption = #1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 15
            OnClick = cxButton11Click
            LookAndFeel.SkinName = 'Blue'
          end
        end
        object RzSizePanel1: TRzSizePanel
          Left = 0
          Top = 362
          Width = 1371
          Height = 378
          Align = alBottom
          Color = clGradientInactiveCaption
          HotSpotVisible = True
          SizeBarWidth = 7
          TabOrder = 3
          object cxGrid2: TcxGrid
            Left = 0
            Top = 8
            Width = 1371
            Height = 370
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGrid2DBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              OnCustomDrawCell = cxGrid2DBBandedTableView1CustomDrawCell
              DataController.DataSource = OraDataSource3
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              OptionsView.GroupByBox = False
              OptionsView.HeaderAutoHeight = True
              Bands = <
                item
                  Width = 1033
                end>
              object cxGrid2DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'CANCEL_STATUS'
                Styles.Header = cxStyle1
                Width = 131
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1DATE_DEPR: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'DATE_DEPR'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 109
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1DEPREMIZATION: TcxGridDBBandedColumn
                Caption = #1069#1090#1072#1087' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1103
                DataBinding.FieldName = 'DEPREMIZATION'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 124
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
                Caption = #1060'.'#1048'.'#1054'.'
                DataBinding.FieldName = 'FULL_NAME'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 218
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1087#1087#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'DESCRIPTION'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 190
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1TYPE_DEPR: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'TYPE_DEPR'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 95
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1PRICE_PUNISH: TcxGridDBBandedColumn
                Caption = #1057#1091#1084#1084#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'PRICE_PUNISH'
                HeaderAlignmentHorz = taCenter
                HeaderAlignmentVert = vaCenter
                Styles.Header = cxStyle1
                Width = 81
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn
                Caption = 'ID_'#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'ID_DEPR'
                Styles.Header = cxStyle1
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid2DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
                DataBinding.FieldName = 'LOCK_STATUS'
                Visible = False
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBBandedTableView1
            end
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1059#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
      ImageIndex = 1
      OnResize = cxTabSheet2Resize
      OnShow = cxTabSheet2Show
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 740
        Align = alClient
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        Constraints.MinHeight = 600
        Ctl3D = False
        ParentBackground = False
        ParentCtl3D = False
        TabOrder = 0
        object RzSizePanel2: TRzSizePanel
          Left = 0
          Top = 528
          Width = 1371
          Height = 212
          Align = alBottom
          Anchors = [akLeft, akTop, akRight, akBottom]
          Color = clGradientInactiveCaption
          HotSpotVisible = True
          SizeBarWidth = 7
          TabOrder = 0
          object cxGrid6: TcxGrid
            Left = 0
            Top = 8
            Width = 1371
            Height = 204
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGrid6DBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = cxGrid6DBBandedTableView1CellClick
              OnCustomDrawCell = cxGrid6DBBandedTableView1CustomDrawCell
              DataController.DataSource = OraDataSource5
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Bands = <
                item
                end>
              object cxGrid6DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'CANCEL_STATUS'
                Styles.Header = cxStyle1
                Width = 130
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1ORDER_NUMBER: TcxGridDBBandedColumn
                Caption = #8470' '#1087#1088#1080#1082#1072#1079#1072
                DataBinding.FieldName = 'ORDER_NUMBER'
                Styles.Header = cxStyle1
                Width = 98
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1DATE_CONFIRMATION: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
                DataBinding.FieldName = 'DATE_CONFIRMATION'
                Styles.Header = cxStyle1
                Width = 108
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1TAB_NUM_PUNISH: TcxGridDBBandedColumn
                Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
                DataBinding.FieldName = 'TAB_NUM_PUNISH'
                Styles.Header = cxStyle1
                Width = 111
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
                DataBinding.FieldName = 'FULL_NAME'
                Styles.Header = cxStyle1
                Width = 200
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1TITLE_NAME: TcxGridDBBandedColumn
                Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                DataBinding.FieldName = 'TITLE_NAME'
                Styles.Header = cxStyle1
                Width = 105
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
                Caption = #1042#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'DESCRIPTION'
                Styles.Header = cxStyle1
                Width = 182
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1ID_PUNISHMENT: TcxGridDBBandedColumn
                Caption = 'Id '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'ID_PUNISHMENT'
                Styles.Header = cxStyle1
                Width = 47
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1FINISH_TYPE_DEPR: TcxGridDBBandedColumn
                Caption = #1053#1072#1083#1086#1078#1077#1085#1085#1099#1081' '#1074#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'FINISH_TYPE_DEPR'
                Styles.Header = cxStyle1
                Width = 61
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1FINISH_PRICE_PUNISH: TcxGridDBBandedColumn
                Caption = #1053#1072#1083#1086#1078#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'FINISH_PRICE_PUNISH'
                Styles.Header = cxStyle1
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn
                Caption = #1054#1090#1076#1077#1083
                DataBinding.FieldName = 'DEPT_NAME_SHORT'
                Styles.Header = cxStyle1
                Width = 200
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1SUPERVISOR: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1088#1091#1082#1086#1074#1086#1076#1080#1090#1077#1083#1103', '#1087#1086#1076#1090#1074'. '#1074#1079#1099#1089#1082#1072#1085#1080#1077
                DataBinding.FieldName = 'SUPERVISOR'
                Styles.Header = cxStyle1
                Width = 200
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1DEPT_NAME_FULL: TcxGridDBBandedColumn
                Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1086#1090#1076#1077#1083#1072
                DataBinding.FieldName = 'DEPT_NAME_FULL'
                Styles.Header = cxStyle1
                Width = 200
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ID_DEPR'
                Styles.Header = cxStyle1
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1MANAGER_CANCEL_ST: TcxGridDBBandedColumn
                Caption = #1060#1048#1054', '#1079#1072#1087#1088#1086#1089#1080#1074#1096#1077#1075#1086' '#1086#1090#1084#1077#1085#1091' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'MANAGER_CANCEL_ST'
                Styles.Header = cxStyle1
                Width = 217
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1SUPERVISOR_DELETE_ST: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1088#1091#1082'.- '#1087#1086#1084#1077#1090#1082#1072' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.FieldName = 'SUPERVISOR_DELETE_ST'
                Styles.Header = cxStyle1
                Width = 142
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1DATE_DELETION_STATUS: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1084#1077#1090#1082#1080' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.FieldName = 'DATE_DELETION_STATUS'
                Styles.Header = cxStyle1
                Width = 150
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
              object cxGrid6DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
                DataBinding.FieldName = 'LOCK_STATUS'
                Visible = False
                Position.BandIndex = 0
                Position.ColIndex = 17
                Position.RowIndex = 0
              end
            end
            object cxGrid6Level1: TcxGridLevel
              GridView = cxGrid6DBBandedTableView1
            end
          end
        end
        object Panel12: TPanel
          Left = 0
          Top = 55
          Width = 1371
          Height = 473
          Align = alClient
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 1
          object cxGrid3: TcxGrid
            Left = 0
            Top = 0
            Width = 1371
            Height = 343
            Align = alClient
            BevelInner = bvNone
            BevelOuter = bvNone
            TabOrder = 0
            LookAndFeel.SkinName = 'Blue'
            object cxGrid3DBBandedTableView1: TcxGridDBBandedTableView
              NavigatorButtons.ConfirmDelete = False
              OnCellClick = cxGrid3DBBandedTableView1CellClick
              OnCustomDrawCell = cxGrid3DBBandedTableView1CustomDrawCell
              DataController.DataSource = OraDataSource4
              DataController.Summary.DefaultGroupSummaryItems = <>
              DataController.Summary.FooterSummaryItems = <>
              DataController.Summary.SummaryGroups = <>
              Bands = <
                item
                  Width = 1909
                end>
              object cxGrid3DBBandedTableView1CANCEL_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'CANCEL_STATUS'
                Styles.Header = cxStyle1
                Width = 129
                Position.BandIndex = 0
                Position.ColIndex = 0
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1TRUNCTPDDATE_CREATION: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1080
                DataBinding.FieldName = 'TRUNC(TPD.DATE_CREATION)'
                Styles.Header = cxStyle1
                Width = 129
                Position.BandIndex = 0
                Position.ColIndex = 1
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
                DataBinding.FieldName = 'FULL_NAME'
                Styles.Header = cxStyle1
                Width = 128
                Position.BandIndex = 0
                Position.ColIndex = 3
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1DESCRIPTION: TcxGridDBBandedColumn
                Caption = #1043#1088#1091#1087#1087#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'DESCRIPTION'
                Styles.Header = cxStyle1
                Width = 143
                Position.BandIndex = 0
                Position.ColIndex = 4
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1DEPT_NAME_SHORT: TcxGridDBBandedColumn
                Caption = #1054#1090#1076#1077#1083' '
                DataBinding.FieldName = 'DEPT_NAME_SHORT'
                Styles.Header = cxStyle1
                Width = 69
                Position.BandIndex = 0
                Position.ColIndex = 5
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1PRICE_PUNISH: TcxGridDBBandedColumn
                Caption = #1047#1072#1087#1088#1072#1096#1080#1074#1072#1077#1084#1086#1077' '#1074#1079#1099#1089#1082#1072#1085#1080#1077
                DataBinding.FieldName = 'PRICE_PUNISH'
                Styles.Header = cxStyle1
                Width = 162
                Position.BandIndex = 0
                Position.ColIndex = 6
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1TYPE_DEPR: TcxGridDBBandedColumn
                Caption = #1047#1072#1087#1088'. '#1074#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'TYPE_DEPR'
                Styles.Header = cxStyle1
                Width = 105
                Position.BandIndex = 0
                Position.ColIndex = 7
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1COMMENTARY: TcxGridDBBandedColumn
                Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
                DataBinding.FieldName = 'COMMENTARY'
                Styles.Header = cxStyle1
                Width = 182
                Position.BandIndex = 0
                Position.ColIndex = 8
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1MANAGER: TcxGridDBBandedColumn
                Caption = #1060#1048#1054', '#1085#1072#1083#1086#1078#1080#1074#1096#1077#1075#1086' '#1074#1079#1099#1089#1082#1072#1085#1080#1077
                DataBinding.FieldName = 'MANAGER'
                Styles.Header = cxStyle1
                Width = 187
                Position.BandIndex = 0
                Position.ColIndex = 9
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1DEPT_NAME_FULL: TcxGridDBBandedColumn
                Caption = #1054#1090#1076#1077#1083' '
                DataBinding.FieldName = 'DEPT_NAME_FULL'
                Styles.Header = cxStyle1
                Width = 63
                Position.BandIndex = 0
                Position.ColIndex = 10
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1ID_DEPR: TcxGridDBBandedColumn
                DataBinding.FieldName = 'ID_DEPR'
                Visible = False
                Styles.Header = cxStyle1
                Width = 50
                Position.BandIndex = 0
                Position.ColIndex = 15
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1ID_PUNISHMENT: TcxGridDBBandedColumn
                Caption = 'ID '#1074#1079#1099#1089#1082#1072#1085#1080#1103
                DataBinding.FieldName = 'ID_PUNISHMENT'
                Styles.Header = cxStyle1
                Width = 60
                Position.BandIndex = 0
                Position.ColIndex = 14
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1TAB_NUM_PUNISH: TcxGridDBBandedColumn
                Caption = #1058#1072#1073'.'#1085#1086#1084'. '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
                DataBinding.FieldName = 'TAB_NUM_PUNISH'
                Styles.Header = cxStyle1
                Width = 100
                Position.BandIndex = 0
                Position.ColIndex = 2
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1DATE_DELETION_STATUS: TcxGridDBBandedColumn
                Caption = #1044#1072#1090#1072' '#1087#1086#1084#1077#1090#1082#1080' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.FieldName = 'DATE_DELETION_STATUS'
                Styles.Header = cxStyle1
                Width = 137
                Position.BandIndex = 0
                Position.ColIndex = 11
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1MANAGER_CANCEL_ST: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1088#1091#1082'. - '#1079#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091
                DataBinding.FieldName = 'MANAGER_CANCEL_ST'
                Styles.Header = cxStyle1
                Width = 151
                Position.BandIndex = 0
                Position.ColIndex = 12
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1SUPERVISOR_DELETE_ST: TcxGridDBBandedColumn
                Caption = #1060#1048#1054' '#1088#1091#1082'. - '#1087#1086#1084#1077#1090#1082#1072' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
                DataBinding.FieldName = 'SUPERVISOR_DELETE_ST'
                Styles.Header = cxStyle1
                Width = 182
                Position.BandIndex = 0
                Position.ColIndex = 13
                Position.RowIndex = 0
              end
              object cxGrid3DBBandedTableView1LOCK_STATUS: TcxGridDBBandedColumn
                Caption = #1057#1090#1072#1090#1091#1089' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
                DataBinding.FieldName = 'LOCK_STATUS'
                Visible = False
                Styles.Header = cxStyle1
                VisibleForCustomization = False
                Position.BandIndex = 0
                Position.ColIndex = 16
                Position.RowIndex = 0
              end
            end
            object cxGrid3Level1: TcxGridLevel
              GridView = cxGrid3DBBandedTableView1
            end
          end
          object Panel6: TPanel
            Left = 0
            Top = 343
            Width = 1371
            Height = 130
            Align = alBottom
            Anchors = [akLeft, akTop, akRight]
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 1
            object cxLabel10: TcxLabel
              Left = 8
              Top = 13
              Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
              Style.TextStyle = [fsBold]
            end
            object cxLabel11: TcxLabel
              Left = 128
              Top = 13
              Style.TextStyle = [fsBold]
            end
            object cxLabel12: TcxLabel
              Left = 472
              Top = 42
              Caption = #1057#1091#1084#1084#1072' '#1085#1072#1082#1072#1079#1072#1085#1080#1103
              Style.TextStyle = [fsBold]
            end
            object cxLabel13: TcxLabel
              Left = 224
              Top = 42
              Caption = #1042#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
              Style.TextStyle = [fsBold]
            end
            object cxComboBox4: TcxComboBox
              Left = 328
              Top = 40
              Properties.DropDownListStyle = lsFixedList
              Style.Color = 16446703
              StyleHot.Color = 9077495
              TabOrder = 4
              Width = 121
            end
            object cxTextEdit4: TcxTextEdit
              Left = 592
              Top = 40
              Style.Color = 16446703
              StyleHot.BorderColor = 15836496
              TabOrder = 5
              Width = 121
            end
            object cxTextEdit5: TcxTextEdit
              Left = 88
              Top = 40
              Style.Color = 16446703
              TabOrder = 6
              Width = 121
            end
            object cxLabel14: TcxLabel
              Left = 8
              Top = 42
              Caption = #8470' '#1055#1088#1080#1082#1072#1079#1072
              Style.TextStyle = [fsBold]
            end
            object cxButton5: TcxButton
              Left = 328
              Top = 80
              Width = 105
              Height = 33
              Caption = #1055#1086#1076#1090#1074#1077#1088#1076#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 8
              OnClick = cxButton5Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton9: TcxButton
              Left = 344
              Top = 80
              Width = 105
              Height = 33
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 9
              OnClick = cxButton9Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton12: TcxButton
              Left = 488
              Top = 80
              Width = 129
              Height = 33
              Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 10
              OnClick = cxButton12Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton13: TcxButton
              Left = 640
              Top = 80
              Width = 137
              Height = 33
              Caption = #1055#1086#1084#1077#1090#1082#1072' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 11
              OnClick = cxButton13Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton14: TcxButton
              Left = 792
              Top = 80
              Width = 113
              Height = 33
              Caption = #1057#1085#1103#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 12
              OnClick = cxButton14Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton15: TcxButton
              Left = 512
              Top = 80
              Width = 121
              Height = 33
              Caption = #1054#1090#1082#1083#1086#1085#1080#1090#1100' '#1079#1072#1087#1088#1086#1089
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 13
              OnClick = cxButton15Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton16: TcxButton
              Left = 656
              Top = 80
              Width = 137
              Height = 33
              Caption = #1055#1086#1084#1077#1090#1082#1072' '#1085#1072' '#1091#1076#1072#1083#1077#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 14
              OnClick = cxButton16Click
              LookAndFeel.SkinName = 'Blue'
            end
            object cxButton17: TcxButton
              Left = 816
              Top = 80
              Width = 113
              Height = 33
              Caption = #1057#1085#1103#1090#1100' '#1091#1076#1072#1083#1077#1085#1080#1077
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = [fsBold]
              ParentFont = False
              TabOrder = 15
              OnClick = cxButton17Click
              LookAndFeel.SkinName = 'Blue'
            end
          end
        end
        object Panel4: TPanel
          Left = 0
          Top = 0
          Width = 1371
          Height = 55
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          Ctl3D = True
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 2
          object cxDateEdit1: TcxDateEdit
            Left = 216
            Top = 18
            Style.Color = 16446703
            TabOrder = 0
            Width = 137
          end
          object Panel5: TPanel
            Left = 1279
            Top = 0
            Width = 92
            Height = 55
            Align = alRight
            Alignment = taLeftJustify
            BevelOuter = bvNone
            BiDiMode = bdRightToLeftNoAlign
            Color = clGradientInactiveCaption
            Ctl3D = True
            ParentBiDiMode = False
            ParentBackground = False
            ParentCtl3D = False
            TabOrder = 1
            object cxButton3: TcxButton
              Left = 32
              Top = 4
              Width = 49
              Height = 45
              BiDiMode = bdLeftToRight
              ParentBiDiMode = False
              TabOrder = 0
              OnClick = cxButton3Click
              Glyph.Data = {
                36030000424D3603000000000000360000002800000010000000100000000100
                1800000000000003000000000000000000000000000000000000C8C8C8009AD9
                00A9EA00A0E7009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C800B5E700E3FF00CAFD009DDE009AD9C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C800A1DC
                00DEF800E6FF00C3F8009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8009AD900A1DC00EDFD00E7FF00B4EC009AD9C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                009AD900ADE100F0FD0AE8FF2E97C4009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8009AD90ABAE5B0BABAC19C9CA4
                878CB68888B48787AE8282AE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8009EDCC8A9A9BB9292DAB4B4DBB5B5DEBDBDCA9999B68888AE82
                82C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AE8282C5A0A0EDC19FF1
                B672EEB67CE8C9C1EEDCDCD4A9A9BB8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8AE8282E9C7B7FFAF2FFFB236FFB43BFDB645EAC4AEF5EAEAD7AE
                AEBA8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7A4A4EBBDA0FFB745FF
                BE51FFC055FFC157FDC15DECCAB6F4E8E8D4ABABAE8282C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8B38989E7C5BEFFB44AFFCA6AFFCC6FFFCD70FFCC6EFCCA77F3E0
                DBE6CACABD9393C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B68F8FDABDBDECAA69FF
                C96EFFD686FFD787FFD685FFD480F4D5B4F4E6E6C8A2A2C8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8B99393C3A1A1E1BDB7FCB85BFFD282FFE19DFFE09AFFDD94FBDC
                A7F6EAEAC49D9DC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BD9999D6BCBCE9
                C3B1F9BA65FFCB75FFE09CFFE6A7FCE7CAEDE1E1B68D8DC8C8C8C8C8C8C8C8C8
                C8C8C8C8C8C8C8C8C8C8C8C8C09D9DD4B9B9E9CBC5F0C08FFABE68FFD294F1E0
                DABC9797B48B8BC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C2
                A0A0C7A8A8D9C1C1E0C9C9DBC4C4C19F9FBA9494C8C8C8C8C8C8}
              LookAndFeel.SkinName = 'Blue'
            end
          end
          object cxButton1: TcxButton
            Left = 17
            Top = 16
            Width = 75
            Height = 25
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = cxButton1Click
            LookAndFeel.SkinName = 'Blue'
          end
          object cxComboBox2: TcxComboBox
            Left = 480
            Top = 18
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 3
            Width = 121
          end
          object cxLabel16: TcxLabel
            Left = 119
            Top = 20
            Caption = #1042#1099#1073#1077#1088#1080#1090#1077' '#1076#1072#1090#1091':'
            ParentFont = False
            Style.TextStyle = [fsBold]
          end
          object cxLabel17: TcxLabel
            Left = 375
            Top = 20
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
            ParentFont = False
            Style.TextStyle = [fsBold]
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#1085#1099#1077' '#1089#1087#1080#1089#1082#1080
      ImageIndex = 2
      OnShow = cxTabSheet3Show
      object cxGrid4: TcxGrid
        Left = 0
        Top = 65
        Width = 1371
        Height = 619
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        LookAndFeel.SkinName = 'Blue'
        object cxGrid4DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          OnCustomDrawCell = cxGrid4DBTableView1CustomDrawCell
          DataController.DataSource = OraDataSource4
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          OptionsSelection.CellMultiSelect = True
          OptionsView.GridLineColor = 6202875
          object cxGrid4DBTableView1CANCEL_STATUS: TcxGridDBColumn
            Caption = #1057#1090#1072#1090#1091#1089' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'CANCEL_STATUS'
            Styles.Header = cxStyle1
            Width = 101
          end
          object cxGrid4DBTableView1ORDER_NUMBER: TcxGridDBColumn
            Caption = #8470' '#1055#1088#1080#1082#1072#1079#1072
            DataBinding.FieldName = 'ORDER_NUMBER'
            Styles.Header = cxStyle1
            Width = 100
          end
          object cxGrid4DBTableView1TRUNCTPDDATE_CREATION: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1085#1072#1083#1086#1078#1077#1085#1080#1103' '
            DataBinding.FieldName = 'TRUNC(TPD.DATE_CREATION)'
            Styles.Header = cxStyle1
            Width = 111
          end
          object cxGrid4DBTableView1DATE_CONFIRMATION: TcxGridDBColumn
            Caption = #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
            DataBinding.FieldName = 'DATE_CONFIRMATION'
            Styles.Header = cxStyle1
            Width = 122
          end
          object cxGrid4DBTableView1TAB_NUM_PUNISH: TcxGridDBColumn
            Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088' '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
            DataBinding.FieldName = 'TAB_NUM_PUNISH'
            Styles.Header = cxStyle1
            Width = 159
          end
          object cxGrid4DBTableView1TITLE_NAME: TcxGridDBColumn
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
            DataBinding.FieldName = 'TITLE_NAME'
            Styles.Header = cxStyle1
            Width = 163
          end
          object cxGrid4DBTableView1FULL_NAME: TcxGridDBColumn
            Caption = #1060#1048#1054' '#1074#1079#1099#1089#1082#1072#1077#1084#1086#1075#1086
            DataBinding.FieldName = 'FULL_NAME'
            Styles.Header = cxStyle1
            Width = 150
          end
          object cxGrid4DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1043#1088#1091#1087#1087#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'DESCRIPTION'
            Styles.Header = cxStyle1
            Width = 160
          end
          object cxGrid4DBTableView1FINISH_TYPE_DEPR: TcxGridDBColumn
            Caption = #1053#1072#1083#1086#1078#1077#1085#1085#1099#1081' '#1074#1080#1076' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'FINISH_TYPE_DEPR'
            Styles.Header = cxStyle1
            Width = 179
          end
          object cxGrid4DBTableView1FINISH_PRICE_PUNISH: TcxGridDBColumn
            Caption = #1053#1072#1083#1086#1078#1077#1085#1085#1072#1103' '#1089#1091#1084#1084#1072
            DataBinding.FieldName = 'FINISH_PRICE_PUNISH'
            Styles.Header = cxStyle1
            Width = 124
          end
          object cxGrid4DBTableView1COMMENTARY: TcxGridDBColumn
            Caption = #1055#1088#1080#1084#1077#1095#1072#1085#1080#1077
            DataBinding.FieldName = 'COMMENTARY'
            Styles.Header = cxStyle1
            Width = 150
          end
          object cxGrid4DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
            Caption = #1054#1090#1076#1077#1083
            DataBinding.FieldName = 'DEPT_NAME_SHORT'
            Styles.Header = cxStyle1
            Width = 100
          end
          object cxGrid4DBTableView1DEPT_NAME_FULL: TcxGridDBColumn
            Caption = #1055#1086#1083#1085#1086#1077' '#1085#1072#1080#1084#1077#1085#1086#1074'. '#1086#1090#1076#1077#1083#1072
            DataBinding.FieldName = 'DEPT_NAME_FULL'
            Styles.Header = cxStyle1
            Width = 172
          end
          object cxGrid4DBTableView1MANAGER: TcxGridDBColumn
            Caption = #1060#1048#1054', '#1085#1072#1083#1086#1078#1080#1074#1096#1077#1075#1086' '#1074#1079#1099#1089#1082#1072#1085#1080#1077
            DataBinding.FieldName = 'MANAGER'
            Styles.Header = cxStyle1
            Width = 178
          end
          object cxGrid4DBTableView1SUPERVISOR: TcxGridDBColumn
            Caption = #1060'.'#1048'.'#1054'. '#1088#1091#1082'.'#1091#1090#1074#1077#1088#1076#1080#1074#1096#1077#1075#1086' '#1074#1079#1099#1089#1082
            DataBinding.FieldName = 'SUPERVISOR'
            Styles.Header = cxStyle1
            Width = 172
          end
          object cxGrid4DBTableView1ID_PUNISHMENT: TcxGridDBColumn
            Caption = 'ID '#1075#1088#1091#1087#1087#1099' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'ID_PUNISHMENT'
            Styles.Header = cxStyle1
            Width = 90
          end
          object cxGrid4DBTableView1ID_DEPR: TcxGridDBColumn
            Caption = 'id_depr'
            DataBinding.FieldName = 'ID_DEPR'
            Styles.Header = cxStyle1
            Width = 55
          end
          object cxGrid4DBTableView1LOCK_STATUS: TcxGridDBColumn
            Caption = #1057#1090#1072#1090#1091#1089' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
            DataBinding.FieldName = 'LOCK_STATUS'
            Visible = False
            Styles.Header = cxStyle1
            Width = 77
          end
          object cxGrid4DBTableView1LOCK_VALUE: TcxGridDBColumn
            Caption = #1057#1090#1072#1090#1091#1089' '#1073#1083#1086#1082#1080#1088#1086#1074#1082#1080
            DataBinding.FieldName = 'LOCK_VALUE'
            Styles.Header = cxStyle1
            Width = 77
          end
        end
        object cxGrid4Level1: TcxGridLevel
          GridView = cxGrid4DBTableView1
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 1371
        Height = 65
        Align = alTop
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 1
        object Shape1: TShape
          Left = 632
          Top = 0
          Width = 161
          Height = 57
          ParentShowHint = False
          Pen.Color = clRed
          Pen.Mode = pmMask
          ShowHint = False
        end
        object cxLabel15: TcxLabel
          Left = 112
          Top = 8
          Caption = #1053#1086#1084#1077#1088' '#1087#1088#1080#1082#1072#1079#1072
          ParentFont = False
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Width = 145
        end
        object cxTextEdit6: TcxTextEdit
          Left = 112
          Top = 28
          Style.Color = 16446703
          TabOrder = 1
          Width = 121
        end
        object Panel8: TPanel
          Left = 1287
          Top = 0
          Width = 84
          Height = 65
          Align = alRight
          Alignment = taLeftJustify
          BevelOuter = bvNone
          BiDiMode = bdRightToLeftNoAlign
          Color = clGradientInactiveCaption
          Ctl3D = True
          FullRepaint = False
          ParentBiDiMode = False
          ParentBackground = False
          ParentCtl3D = False
          TabOrder = 2
          DesignSize = (
            84
            65)
          object cxButton6: TcxButton
            Left = 12
            Top = 4
            Width = 48
            Height = 45
            Anchors = [akTop]
            TabOrder = 0
            OnClick = cxButton6Click
            Glyph.Data = {
              36030000424D3603000000000000360000002800000010000000100000000100
              1800000000000003000000000000000000000000000000000000C8C8C8009AD9
              00A9EA00A0E7009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8C8C8C8C8C8C8C800B5E700E3FF00CAFD009DDE009AD9C8C8C8C8
              C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C800A1DC
              00DEF800E6FF00C3F8009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8C8C8C8C8C8C8C8009AD900A1DC00EDFD00E7FF00B4EC009AD9C8
              C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
              009AD900ADE100F0FD0AE8FF2E97C4009AD9C8C8C8C8C8C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8009AD90ABAE5B0BABAC19C9CA4
              878CB68888B48787AE8282AE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8009EDCC8A9A9BB9292DAB4B4DBB5B5DEBDBDCA9999B68888AE82
              82C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8AE8282C5A0A0EDC19FF1
              B672EEB67CE8C9C1EEDCDCD4A9A9BB8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8AE8282E9C7B7FFAF2FFFB236FFB43BFDB645EAC4AEF5EAEAD7AE
              AEBA8E8EAE8282C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C7A4A4EBBDA0FFB745FF
              BE51FFC055FFC157FDC15DECCAB6F4E8E8D4ABABAE8282C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8B38989E7C5BEFFB44AFFCA6AFFCC6FFFCD70FFCC6EFCCA77F3E0
              DBE6CACABD9393C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8B68F8FDABDBDECAA69FF
              C96EFFD686FFD787FFD685FFD480F4D5B4F4E6E6C8A2A2C8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8B99393C3A1A1E1BDB7FCB85BFFD282FFE19DFFE09AFFDD94FBDC
              A7F6EAEAC49D9DC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8BD9999D6BCBCE9
              C3B1F9BA65FFCB75FFE09CFFE6A7FCE7CAEDE1E1B68D8DC8C8C8C8C8C8C8C8C8
              C8C8C8C8C8C8C8C8C8C8C8C8C09D9DD4B9B9E9CBC5F0C08FFABE68FFD294F1E0
              DABC9797B48B8BC8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C2
              A0A0C7A8A8D9C1C1E0C9C9DBC4C4C19F9FBA9494C8C8C8C8C8C8}
            LookAndFeel.SkinName = 'Blue'
          end
        end
        object cxButton7: TcxButton
          Left = 16
          Top = 16
          Width = 75
          Height = 33
          Caption = #1057#1073#1088#1086#1089
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 3
          OnClick = cxButton7Click
          LookAndFeel.SkinName = 'Blue'
        end
        object cxComboBox6: TcxComboBox
          Left = 256
          Top = 28
          Properties.DropDownListStyle = lsFixedList
          Style.Color = 16446703
          TabOrder = 4
          Width = 121
        end
        object cxLabel19: TcxLabel
          Left = 263
          Top = 8
          Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077':'
          ParentFont = False
          Style.TextStyle = [fsBold]
        end
        object cxComboBox7: TcxComboBox
          Left = 400
          Top = 28
          Properties.DropDownListStyle = lsFixedList
          Style.Color = 16446703
          TabOrder = 6
          Width = 201
        end
        object cxLabel20: TcxLabel
          Left = 400
          Top = 8
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1089#1090#1072#1090#1091#1089#1091' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
          ParentFont = False
          Properties.WordWrap = True
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'MS Sans Serif'
          Style.Font.Style = [fsBold]
          Style.IsFontAssigned = True
          Width = 241
        end
        object cxDateEdit2: TcxDateEdit
          Left = 664
          Top = 4
          Style.Color = 16446703
          TabOrder = 8
          Width = 121
        end
        object cxDateEdit3: TcxDateEdit
          Left = 664
          Top = 28
          Style.Color = 16446703
          TabOrder = 9
          Width = 121
        end
        object cxLabel21: TcxLabel
          Left = 640
          Top = 4
          Caption = 'c'
          Style.TextStyle = [fsBold]
        end
        object cxLabel22: TcxLabel
          Left = 640
          Top = 30
          Caption = #1087#1086
          Style.TextStyle = [fsBold]
        end
      end
      object Panel11: TPanel
        Left = 0
        Top = 684
        Width = 1371
        Height = 56
        Align = alBottom
        BevelOuter = bvNone
        Color = clGradientInactiveCaption
        ParentBackground = False
        TabOrder = 2
        object Lock_Button: TcxButton
          Left = 616
          Top = 6
          Width = 89
          Height = 33
          Caption = #1041#1083#1086#1082'.'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = Lock_ButtonClick
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000FFFFFFFFFFFF
            FFFFFF3469B51B6EC7236FC72270CD216FD01D6ED4166BD8166CDC126BE21574
            E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A7FBCAAD4E7A0FDFF52C6FF35B3FF2B
            A7FF20A0FF1796FF1A97FF1993FF36AFFF2689EEFFFFFFFFFFFFFFFFFFFFFFFF
            5076B79CC8E1C2FCFF92D5FF6FC0FF4EACFF4BAEFF47ADFF4BB2FF3AA8FF4AB8
            FF1D81EDFFFFFFFFFFFFFFFFFFFFFFFF5077B895C6E2B2F4FF82CDFF66BCFF4F
            AEFF51B3FF53B7FF53BDFF4AB8FF5EC6FF2785EDFFFFFFFFFFFFFFFFFFFFFFFF
            5177B898C6E2B3F6FF85CFFF68BEFF4FAEFF50B1FF4FB5FF4EB9FF43B2FF57C0
            FF2382EDFFFFFFFFFFFFFFFFFFFFFFFF5177B898C7E2B3F7FF86D0FF69BEFF52
            AEFF52B2FF4FB5FF4DB7FF42B0FF55BFFF2384EDFFFFFFFFFFFFFFFFFFFFFFFF
            5178B898C8E2B9FAFF8CD4FF74C4FF5EB7FF57B3FF4DAEFF43ACFF32A2FF44B5
            FF1D81EDFFFFFFFFFFFFFFFFFFFFFFFF5076B799C8E1BBF5FF8ACFFF6DBFFF57
            B1FF54B1FF50B2FF4CB6FF3EADFF4CBBFF1D7FEDFFFFFFFFFFFFFFFFFFFFFFFF
            5577B7A6CCE5BEFFFF83ECFF69DCFF58CEFF47BFFF39B0FF28A0FF148FFF40B5
            FF2C8CEDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4D92C74BB3E3369ADD389AE337
            97E52E8EE62184E90773EB0066ED1883F5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFB9B1B0E8E8E5BBB4B4FFFFFFFFFFFFFFFFFF908481CFCDCB6F655EFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBAB2B1FFFFFFBBB4B4FFFFFFFF
            FFFFFFFFFF8F8480CFCDCB6F655EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFBAAFADFFFFFFBBB4B4F7F5F5FFFFFFFFFFFF7D7673D6D4D26F6B6BFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB8B1B4FFFFFFF3F0F0998F9273
            6A6E766E72B5B3B2D6D4D2756F71FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFB2A9ADFFFFFFFFFFFFF7F8F6F4F4F3F5F3F09B9597FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB3ABB0BAB4B7B5
            AEAFB1AAAE9B9497FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          LookAndFeel.SkinName = 'Blue'
        end
        object cxButton18: TcxButton
          Left = 456
          Top = 6
          Width = 145
          Height = 33
          Caption = #1042#1099#1076#1077#1083#1080#1090#1100' '#1074#1089#1077' '#1089#1090#1088#1086#1082#1080
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = cxButton18Click
          LookAndFeel.SkinName = 'Blue'
        end
        object cxButton10: TcxButton
          Left = 16
          Top = 6
          Width = 145
          Height = 33
          Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 2
          OnClick = cxButton10Click
          Glyph.Data = {
            F6000000424DF600000000000000760000002800000010000000100000000100
            0400000000008000000000000000000000001000000000000000000000000000
            80000080000000808000800000008000800080800000C0C0C000808080000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777800000000
            000077787777777777707778FFFFFFFFFF707778F7777F777F7022222222227F
            7F702FFFFFFFF2FF7F702F22222222FFFF702F22272222777F702FF27222F2FF
            7F702F27222FF2777F702F722222F2FF7F702F22FF22F2777F702FFFFFFFF2FF
            00002222222222FF8F077778FFFFFFFF80777778888888888777}
          LookAndFeel.SkinName = 'Blue'
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082' '#39#1042#1080#1076#1099' '#1074#1079#1099#1089#1082#1072#1085#1080#1081#39
      ImageIndex = 3
      OnShow = cxTabSheet4Show
      object cxGrid5: TcxGrid
        Left = 0
        Top = 0
        Width = 1371
        Height = 740
        Align = alClient
        BevelInner = bvNone
        BevelOuter = bvNone
        TabOrder = 0
        LookAndFeel.SkinName = 'Blue'
        object cxGrid5DBTableView1: TcxGridDBTableView
          NavigatorButtons.ConfirmDelete = False
          DataController.DataSource = OraDataSource2
          DataController.Summary.DefaultGroupSummaryItems = <>
          DataController.Summary.FooterSummaryItems = <>
          DataController.Summary.SummaryGroups = <>
          object cxGrid5DBTableView1ID_PUNISHMENT: TcxGridDBColumn
            Caption = 'ID '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'ID_PUNISHMENT'
            Styles.Header = cxStyle1
          end
          object cxGrid5DBTableView1DESCRIPTION: TcxGridDBColumn
            Caption = #1042#1080#1076' '#1085#1072#1088#1091#1096#1077#1085#1080#1103' ('#1074#1079#1099#1089#1082#1072#1085#1080#1103')'
            DataBinding.FieldName = 'DESCRIPTION'
            Styles.Header = cxStyle1
            Width = 263
          end
          object cxGrid5DBTableView1PRICE: TcxGridDBColumn
            Caption = #1057#1091#1084#1084#1072' '#1074#1079#1099#1089#1082#1072#1085#1080#1103
            DataBinding.FieldName = 'PRICE'
            Styles.Header = cxStyle1
            Width = 85
          end
          object cxGrid5DBTableView1CATEGORY_SEVERITY: TcxGridDBColumn
            Caption = #1057#1090#1077#1087#1077#1085#1100' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
            DataBinding.FieldName = 'CATEGORY_SEVERITY'
            Styles.Header = cxStyle1
            Width = 58
          end
          object cxGrid5DBTableView1COMMENTARY: TcxGridDBColumn
            Caption = #1054#1087#1080#1089#1072#1085#1080#1077' '#1085#1072#1088#1091#1096#1077#1085#1080#1103
            DataBinding.FieldName = 'COMMENTARY'
            Styles.Header = cxStyle1
            Width = 1500
          end
        end
        object cxGrid5Level1: TcxGridLevel
          GridView = cxGrid5DBTableView1
        end
      end
    end
  end
  object OraSession1: TOraSession
    Options.Direct = True
    Username = 'skier'
    Server = 'masterlmpdb.moscow.sportmaster.ru:1521:lmprod'
    AutoCommit = False
    Connected = True
    LoginPrompt = False
    Left = 1175
    Top = 77
    EncryptedPassword = 'CEFF9AFFAEFFC9FFB7FFB2FF'
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 1136
    Top = 132
  end
  object OraQuery1: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT ID_USER_LM, '
      '       TAB_NUM,'
      '       FULL_NAME,'
      '       DEPT_NAME_SHORT,'
      '       DATE_BORN,'
      '       SEX,'
      '       DIVISION_NAME,'
      '       TITLE_NAME,'
      '       DATE_BEGIN'
      'FROM plan_pers_workers ppw '
      '     INNER JOIN plan_pers_dept ppd '
      '             ON ppw.id_division_res_plan = ppd.id_dept'
      
        '     INNER JOIN  user_access_dept uad ON uad.id_dept = ppd.id_de' +
        'pt and uad.id_dept = ppw.id_division_res_plan '
      '     -- and uad.ID_USER = 23699'
      ''
      'Where ppw.date_end IS NULL'
      '      and unit_in_decret = 0'
      '    --  AND ppd.id_dept in (1, 2, 3, 4, 5, 6, 7, 8, 9, '
      '      --                    10, 11, 12, 13, 14, 15, 16, 17)'
      '      &find_by_name'
      '      &dept_short_filter'
      '      AND uad.ID_USER = :User_Id_LM')
    FetchAll = True
    ReadOnly = True
    Left = 1199
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'fio'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'User_Id_LM'
      end>
    MacroData = <
      item
        Name = 'find_by_name'
        Value = 'AND lower(ppw.FULL_NAME) like :fio'
      end
      item
        Name = 'dept_short_filter'
        Value = 'and ppd.id_dept = :dept_id'
      end>
  end
  object OraQuery2: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'Select * '
      'From plan_pers_punishment tpp'
      'Where tpp.valide = 1')
    FetchAll = True
    Left = 1208
    Top = 184
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 1144
    Top = 192
  end
  object OraDataSource3: TOraDataSource
    DataSet = OraQuery3
    Left = 1136
    Top = 248
  end
  object OraQuery3: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT    CASE '
      '             WHEN a.cancellation_status = 0 THEN  '#39#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085#39
      
        '             WHEN a.cancellation_status = 1 THEN  '#39#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084 +
        #1077#1085#1091#39
      
        '             WHEN a.cancellation_status = 2 THEN  '#39#1055#1086#1084#1077#1090#1082#1072' '#1085#1072' '#1091#1076 +
        #1072#1083#1077#1085#1080#1077#39
      
        '             WHEN a.cancellation_status = 3 THEN  '#39#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084 +
        #1077#1085#1091' '#1086#1090#1082#1083#1086#1085#1077#1085#39
      '         END cancel_status, --'#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091
      '         CASE '
      '             WHEN a.valide_supervisor = 1'
      '             THEN  trunc(a.date_confirmation)'
      '             ELSE trunc(a.date_creation)'
      '         END date_depr, '
      '         CASE '
      '             WHEN a.valide_supervisor = 1 '
      '             THEN '#39#1059#1090#1074#1077#1088#1078#1076#1077#1085#1085#1099#1081' '#1096#1090#1088#1072#1092#39
      '             ELSE '#39#1053#1072' '#1088#1072#1089#1089#1084#1086#1090#1088#1077#1085#1080#1080#39
      '         END depremization,'
      '         ppw.FULL_NAME,'
      '         tpp.description,'
      '         CASE '
      '             WHEN a.valide_supervisor = 1'
      '             Then a.finish_type_depr'
      '             Else a.type_depr'
      '         END  type_depr,'
      '         CASE '
      '             WHEN a.valide_supervisor = 1'
      '             Then a.finish_price_punish'
      '             ELSE a.price_punish'
      '         END price_punish,'
      '         a.id_depr,'
      '         a.lock_status'
      'FROM plan_pers_depremization a'
      '     INNER JOIN plan_pers_workers ppw'
      '             ON a.tab_num_punish = ppw.tab_num  '
      '     INNER JOIN plan_pers_dept ppd '
      '             ON ppw.id_division_res_plan = ppd.id_dept'
      '     INNER JOIN plan_pers_punishment tpp On'
      '                a.id_punishment = tpp.id_punishment'
      'Where 1 = 1 '
      '      &find_tab_num'
      'ORDER BY date_depr DESC')
    FetchAll = True
    ReadOnly = True
    Left = 1208
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tab_num'
      end>
    MacroData = <
      item
        Name = 'find_tab_num'
        Value = 'AND a.tab_num_punish = :tab_num'
      end>
  end
  object OraDataSource4: TOraDataSource
    DataSet = OraQuery4
    Left = 1136
    Top = 296
  end
  object OraQuery4: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT   trunc(tpd.date_creation), '
      '         tpd.tab_num_punish,'
      '         ppw.FULL_NAME,'
      '         tpp.description,'
      '         ppw.title_name,'
      '         tpp.id_punishment,'
      '         tpd.price_punish,'
      '         tpd.type_depr,'
      '         tpd.commentary,'
      '         tpd.tab_num_manager,'
      '         utnm.fullname as Manager,'
      '         tpd.finish_type_depr,'
      '         tpd.finish_price_punish,'
      '         tpd.order_number,'
      '         tpd.id_depr,'
      '         ppd.dept_name_full, '
      '         ppd.dept_name_short,'
      '         tpd.tab_num_supervisor,'
      '         utns.fullname as SuperVisor,'
      '         tpd.date_confirmation,'
      '         tpd.lock_status,'
      '         CASE'
      '           When tpd.lock_status = 1'
      '           Then '#39#1041#1083#1086#1082'.'#39
      '         else '#39'0'#39
      '         END lock_value,'
      
        '         trunc(tpd.date_deletion_status) as date_deletion_status' +
        ','
      '         (Select fullname from users '
      
        '          Where id_user = tpd.tab_num_manag_cancel_status)  AS M' +
        'ANAGER_CANCEL_ST,'
      '        (Select fullname from users '
      
        '          Where id_user = tpd.tab_num_supervisor_delete_status) ' +
        ' AS SUPERVISOR_DELETE_ST,'
      '         CASE '
      
        '             WHEN tpd.cancellation_status = 0 THEN  '#39#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085 +
        #39
      
        '             WHEN tpd.cancellation_status = 1 THEN  '#39#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086 +
        #1090#1084#1077#1085#1091#39
      
        '             WHEN tpd.cancellation_status = 2 THEN  '#39#1055#1086#1084#1077#1090#1082#1072' '#1085#1072' ' +
        #1091#1076#1072#1083#1077#1085#1080#1077#39
      
        '             WHEN tpd.cancellation_status = 3 THEN  '#39#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085 +
        #39' -- '#1079#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091' '#1086#1090#1082#1083#1086#1085#1077#1085
      '         END cancel_status --'#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091
      '         '
      'FROM plan_pers_depremization tpd'
      '     INNER JOIN plan_pers_workers ppw'
      '             ON tpd.tab_num_punish = ppw.tab_num  '
      '     INNER JOIN plan_pers_dept ppd '
      '             ON ppw.id_division_res_plan = ppd.id_dept'
      '     INNER JOIN plan_pers_punishment tpp On'
      '                tpd.id_punishment = tpp.id_punishment'
      
        '     LEFT JOIN  users utns On  utns.id_user = tpd.tab_num_superv' +
        'isor  '
      '     LEFT JOIN  users utnm On utnm.id_user = tpd.tab_num_manager'
      ''
      'Where 1 = 1'
      '   --   and tpd.valide_supervisor = 0'
      '      &valide_filter'
      '      &date_filter'
      '      &dept_short_filter'
      '      &order_number_filter'
      '      &status_filter'
      '      &status_filter0_3'
      '      &date2_filter'
      'ORDER BY tpd.date_confirmation DESC')
    FetchAll = True
    ReadOnly = True
    Left = 1216
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'valide_value'
      end
      item
        DataType = ftUnknown
        Name = 'date_value'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'order_value'
      end
      item
        DataType = ftUnknown
        Name = 'status_depr'
      end
      item
        DataType = ftUnknown
        Name = 'start_date'
      end
      item
        DataType = ftUnknown
        Name = 'end_date'
      end>
    MacroData = <
      item
        Name = 'valide_filter'
        Value = 'and tpd.valide_supervisor = :valide_value'
      end
      item
        Name = 'date_filter'
        Value = 'AND trunc(tpd.date_creation) = :date_value'
      end
      item
        Name = 'dept_short_filter'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'order_number_filter'
        Value = 'AND tpd.order_number = :order_value'
      end
      item
        Name = 'status_filter'
        Value = 'AND tpd.cancellation_status in  (:status_depr)'
      end
      item
        Name = 'status_filter0_3'
        Value = 'AND tpd.cancellation_status in  (0, 3)'
      end
      item
        Name = 'date2_filter'
        Value = 
          'AND trunc(tpd.date_creation) >= :start_date'#13#10'AND trunc(tpd.date_' +
          'creation) <= :end_date'
      end>
  end
  object OraQuery5: TOraQuery
    Session = OraSession1
    SQL.Strings = (
      'SELECT   trunc(tpd.date_creation), '
      '         tpd.tab_num_punish,'
      '         ppw.FULL_NAME,'
      '         tpp.description,'
      '         ppw.title_name,'
      '         tpp.id_punishment,'
      '         tpd.price_punish,'
      '         tpd.type_depr,'
      '         tpd.commentary,'
      '         tpd.tab_num_manager,'
      '         utnm.fullname as Manager,'
      '         tpd.finish_type_depr,'
      '         tpd.finish_price_punish,'
      '         tpd.order_number,'
      '         tpd.id_depr,'
      '         ppd.dept_name_full, '
      '         ppd.dept_name_short,'
      '         tpd.tab_num_supervisor,'
      '         utns.fullname as SuperVisor,'
      
        '         trunc(tpd.date_deletion_status) as date_deletion_status' +
        ','
      '         tpd.date_confirmation,'
      '         tpd.lock_status,'
      '         CASE '
      
        '             WHEN tpd.cancellation_status = 0 THEN  '#39#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085 +
        #39
      
        '             WHEN tpd.cancellation_status = 1 THEN  '#39#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086 +
        #1090#1084#1077#1085#1091#39
      
        '             WHEN tpd.cancellation_status = 2 THEN  '#39#1055#1086#1084#1077#1090#1082#1072' '#1085#1072' ' +
        #1091#1076#1072#1083#1077#1085#1080#1077#39
      
        '             WHEN tpd.cancellation_status = 3 THEN  '#39#1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1085 +
        #39' -- '#1079#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091' '#1086#1090#1082#1083#1086#1085#1077#1085
      '         END cancel_status, --'#1047#1072#1087#1088#1086#1089' '#1085#1072' '#1086#1090#1084#1077#1085#1091
      '        (Select fullname from users '
      
        '          Where id_user = tpd.tab_num_manag_cancel_status)  AS M' +
        'ANAGER_CANCEL_ST,'
      '        (Select fullname from users '
      
        '          Where id_user = tpd.tab_num_supervisor_delete_status) ' +
        ' AS SUPERVISOR_DELETE_ST'
      '         '
      'FROM plan_pers_depremization tpd'
      '     INNER JOIN plan_pers_workers ppw'
      '             ON tpd.tab_num_punish = ppw.tab_num  '
      '     INNER JOIN plan_pers_dept ppd '
      '             ON ppw.id_division_res_plan = ppd.id_dept'
      '     INNER JOIN plan_pers_punishment tpp On'
      '                tpd.id_punishment = tpp.id_punishment'
      
        '     LEFT JOIN  users utns On  utns.id_user = tpd.tab_num_superv' +
        'isor  '
      
        '     LEFT JOIN  users utnm On utnm.id_user = tpd.tab_num_manager' +
        ' '
      'Where 1 = 1'
      '      and tpd.valide_supervisor = 1'
      'Order by tpd.date_confirmation DESC')
    FetchAll = True
    ReadOnly = True
    Left = 1224
    Top = 368
  end
  object OraDataSource5: TOraDataSource
    DataSet = OraQuery5
    Left = 1144
    Top = 368
  end
  object SaveDialog1: TSaveDialog
    Left = 1184
    Top = 432
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1272
    Top = 432
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
end
