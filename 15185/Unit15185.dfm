object Form15185: TForm15185
  Left = 284
  Top = 149
  Width = 1380
  Height = 719
  Caption = #1054#1073#1086#1089#1085#1086#1074#1072#1085#1080#1077' '#1047#1055'  [Form15185]'
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
  PixelsPerInch = 96
  TextHeight = 13
  object cxPageControl1: TcxPageControl
    Left = 0
    Top = 0
    Width = 1364
    Height = 680
    ActivePage = cxTabSheet5
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 680
    ClientRectRight = 1364
    ClientRectTop = 24
    object cxTabSheet5: TcxTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1085#1085#1099#1081' 2'
      ImageIndex = 0
      object Panel17: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 656
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel18: TPanel
          Left = 1
          Top = 604
          Width = 1362
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object cxButton13: TcxButton
            Left = 16
            Top = 12
            Width = 145
            Height = 33
            Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
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
          object cxButton17: TcxButton
            Left = 840
            Top = 17
            Width = 128
            Height = 25
            Caption = #1059#1073#1088#1072#1090#1100' '#1076#1091#1073#1083#1080' '#1084#1080#1089#1089#1080#1081
            TabOrder = 1
            Visible = False
          end
        end
        object cxGrid5: TcxGrid
          Left = 1
          Top = 89
          Width = 1362
          Height = 515
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGridDBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsGroupResult1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1AFTER_OP_END_DAY_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1AFTER_OP_START_DAY_VALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1ALLWORK
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1BEFORE_OP_END_DAY_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1BEFORE_OP_START_DAY_VALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1EARLY_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1EARLY_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1EARLY_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1EARLY_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1LATE_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1LATE_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1LATE_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1LATE_UNVALID_WORK
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1MONEYFORALLWORK
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1MONEYFORNORMWORK
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1MONEYFOROTHERWORK
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1NORM_WORK_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1NORM_WORK_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1NORM_WORK_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1NORM_WORK_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1NORMWORK
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1OTHERWORK
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1SUM_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1SUM_VALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1WORK_WITHOUT_MARK_DAY
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1WORK_WITHOUT_MARK_NIGTH
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1PLN_CNT
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1PLN_AMOUNT_MONEY
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBBandedTableView1DIFFERENCE_CNT
              end
              item
                Format = '0.00'
                Kind = skSum
                Column = cxGridDBBandedTableView1DIFFERENCE_CNT_AMOUNT_MONEY
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            Bands = <
              item
                Options.HoldOwnColumnsOnly = True
                VisibleForCustomization = False
                Width = 1080
              end
              item
                Caption = 'PLN '#1087#1086#1079#1076#1085'.'#1086#1082#1086#1085#1095' '#1085#1072#1095'. '#1087#1077#1088#1080#1086#1076#1072
                Options.HoldOwnColumnsOnly = True
                Width = 136
              end
              item
                Caption = #1056#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086
                Options.HoldOwnColumnsOnly = True
                Width = 270
              end
              item
                Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1080#1085#1090#1077#1088#1074#1072#1083
                Options.HoldOwnColumnsOnly = True
                Width = 421
              end
              item
                Caption = #1055#1086#1079#1076#1085#1077#1077' '#1086#1082#1086#1085#1095#1072#1085#1080#1077
                Options.HoldOwnColumnsOnly = True
                Width = 276
              end
              item
                Caption = 'PLN '#1088#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086' '#1076#1086' '#1082#1086#1085#1094#1072' '#1087#1077#1088#1080#1086#1076#1072
                Options.HoldOwnColumnsOnly = True
                Width = 168
              end
              item
                Caption = #1056#1072#1073#1086#1090#1099
                Options.HoldOwnColumnsOnly = True
                Width = 255
              end
              item
                Caption = #1057#1091#1084#1084#1072' '#1087#1086' PLN'
                Options.HoldOwnColumnsOnly = True
                Width = 478
              end
              item
                Caption = #1057#1091#1084#1084#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
                Options.HoldOwnColumnsOnly = True
                Width = 151
              end
              item
                Caption = '"'#1047#1055' '#1086#1073#1097#1080#1081'" '#1084#1080#1085#1091#1089' "PLN"'
                Width = 142
              end
              item
                Options.HoldOwnColumnsOnly = True
              end>
            object cxGridDBBandedTableView1DT: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DT'
              Width = 55
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TAB_NUM: TcxGridDBBandedColumn
              Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Width = 68
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TITLE_SHORT: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FULL_NAME'
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DEPT_USER: TcxGridDBBandedColumn
              Caption = #1055#1086#1076#1088'-'#1085#1080#1077' '#1089#1086#1090#1088'.'
              DataBinding.FieldName = 'DEPT_USER'
              Width = 87
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DEPT_WORK: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'-'#1077
              DataBinding.FieldName = 'DEPT_WORK'
              Width = 85
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ID_WORK: TcxGridDBBandedColumn
              Caption = 'ID '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'ID_WORK'
              Width = 63
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1WORK_NAME: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'WORK_NAME'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MEASURE_UNIT: TcxGridDBBandedColumn
              Caption = #1045#1076'. '#1080#1079#1084'.'
              DataBinding.FieldName = 'MEASURE_UNIT'
              Width = 44
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1WORK_UNIT: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'WORK_UNIT'
              Width = 67
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1PAYMENT_GENERAL: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' '#1047#1055' '#1086#1073#1097#1080#1081
              DataBinding.FieldName = 'PAYMENT_GENERAL'
              Width = 109
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1EARLY_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'EARLY_BIRZHA'
              Width = 76
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1EARLY_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'EARLY_KTU'
              Width = 50
              Position.BandIndex = 2
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1EARLY_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'EARLY_OTHER'
              Width = 64
              Position.BandIndex = 2
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1EARLY_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'EARLY_UNVALID'
              Width = 80
              Position.BandIndex = 2
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1LATE_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'LATE_BIRZHA'
              Width = 70
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1LATE_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'LATE_KTU'
              Width = 57
              Position.BandIndex = 4
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1LATE_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'LATE_OTHER'
              Width = 67
              Position.BandIndex = 4
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1LATE_UNVALID_WORK: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'LATE_UNVALID_WORK'
              Width = 82
              Position.BandIndex = 4
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1099' '#1073#1077#1079' '#1087#1088#1080#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_DAY'
              Width = 111
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1099' '#1087#1086#1089#1083#1077' '#1091#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_NIGTH'
              Width = 107
              Position.BandIndex = 3
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORM_WORK_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'NORM_WORK_BIRZHA'
              Width = 55
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORM_WORK_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'NORM_WORK_KTU'
              Width = 28
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORM_WORK_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'NORM_WORK_OTHER'
              Width = 47
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORM_WORK_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'NORM_WORK_UNVALID'
              Width = 70
              Position.BandIndex = 3
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1SUM_VALID: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1074#1072#1083#1080#1076#1085#1099#1093
              DataBinding.FieldName = 'SUM_VALID'
              Width = 72
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1SUM_UNVALID: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1085#1077#1074#1072#1083#1080#1076#1085#1099#1093
              DataBinding.FieldName = 'SUM_UNVALID'
              Width = 85
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORMO: TcxGridDBBandedColumn
              Caption = #1053#1086#1088#1084#1072#1090#1080#1074
              DataBinding.FieldName = 'NORMO'
              Width = 59
              Position.BandIndex = 6
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MONEY: TcxGridDBBandedColumn
              Caption = #1057#1090#1086#1080#1084'. '#1077#1076'.'#1080#1079#1084
              DataBinding.FieldName = 'MONEY'
              Width = 39
              Position.BandIndex = 6
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MONEYFORNORMWORK: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1047#1055'-'#1086#1073#1097','#1088#1091#1073'.'
              DataBinding.FieldName = 'MONEYFORNORMWORK'
              Width = 105
              Position.BandIndex = 7
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MONEYFOROTHERWORK: TcxGridDBBandedColumn
              Caption = #1054#1089#1090#1072#1083#1100#1085#1099#1077
              DataBinding.FieldName = 'MONEYFOROTHERWORK'
              Width = 67
              Position.BandIndex = 7
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MONEYFORALLWORK: TcxGridDBBandedColumn
              Caption = #1047#1072' '#1074#1089#1077' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'MONEYFORALLWORK'
              Width = 66
              Position.BandIndex = 7
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1CNZ_ZP: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'CNZ_ZP'
              Width = 71
              OnCompareRowValuesForCellMerging = cxGridDBBandedTableView1TBCompareRowValuesForCellMerging
              Position.BandIndex = 8
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1MONEY_ZP: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072
              DataBinding.FieldName = 'MONEY_ZP'
              SortIndex = 0
              SortOrder = soAscending
              Width = 71
              OnCompareRowValuesForCellMerging = cxGridDBBandedTableView1TBCompareRowValuesForCellMerging
              Position.BandIndex = 8
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1NORMWORK: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1047#1055'-'#1086#1073#1097
              DataBinding.FieldName = 'NORMWORK'
              Width = 89
              Position.BandIndex = 7
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1OTHERWORK: TcxGridDBBandedColumn
              Caption = #1050#1086#1083'-'#1074#1086' '#1086#1089#1090#1072#1083'.'
              DataBinding.FieldName = 'OTHERWORK'
              Width = 73
              Position.BandIndex = 7
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1ALLWORK: TcxGridDBBandedColumn
              Caption = #1042#1089#1077#1075#1086' '#1082#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'ALLWORK'
              Width = 78
              Position.BandIndex = 7
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1TB: TcxGridDBBandedColumn
              DataBinding.FieldName = 'TB'
              Visible = False
              FooterAlignmentHorz = taCenter
              GroupSummaryAlignment = taCenter
              HeaderAlignmentHorz = taCenter
              Options.CellMerging = True
              Width = 85
              OnCompareRowValuesForCellMerging = cxGridDBBandedTableView1TBCompareRowValuesForCellMerging
              Position.BandIndex = 8
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1BEFORE_OP_START_DAY_VALID: TcxGridDBBandedColumn
              Caption = #1042#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'BEFORE_OP_START_DAY_VALID'
              Width = 63
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1BEFORE_OP_END_DAY_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'BEFORE_OP_END_DAY_UNVALID'
              Width = 73
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1AFTER_OP_START_DAY_VALID: TcxGridDBBandedColumn
              Caption = #1042#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'AFTER_OP_START_DAY_VALID'
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1AFTER_OP_END_DAY_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'AFTER_OP_END_DAY_UNVALID'
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1PLN_CNT: TcxGridDBBandedColumn
              Caption = 'PLN '#1082#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'PLN_CNT'
              Position.BandIndex = 10
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1PLN_AMOUNT_MONEY: TcxGridDBBandedColumn
              Caption = 'PLN '#1089#1091#1084#1084#1072' '
              DataBinding.FieldName = 'PLN_AMOUNT_MONEY'
              Position.BandIndex = 10
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DIFFERENCE_CNT: TcxGridDBBandedColumn
              Caption = #1056#1072#1079#1085#1080#1094#1072' '#1082#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'DIFFERENCE_CNT'
              Width = 90
              Position.BandIndex = 10
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DIFFERENCE_CNT_AMOUNT_MONEY: TcxGridDBBandedColumn
              Caption = #1056#1072#1079#1085#1080#1094#1072' '#1089#1091#1084#1084#1072
              DataBinding.FieldName = 'DIFFERENCE_CNT_AMOUNT_MONEY'
              Width = 84
              Position.BandIndex = 10
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DIFF_CNT_ZP_GENERAL: TcxGridDBBandedColumn
              Caption = #1056#1072#1079#1085#1080#1094#1072' '
              DataBinding.FieldName = 'DIFF_CNT_ZP_GENERAL'
              Position.BandIndex = 9
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGridDBBandedTableView1DIFF_AMOUNT_MONEY_ZP_GENERAL: TcxGridDBBandedColumn
              DataBinding.FieldName = 'DIFF_AMOUNT_MONEY_ZP_GENERAL'
              Position.BandIndex = 9
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridLevel3: TcxGridLevel
            GridView = cxGridDBBandedTableView1
          end
        end
        object Panel19: TPanel
          Left = 1
          Top = 1
          Width = 1362
          Height = 88
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object Shape5: TShape
            Left = 88
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxRadioGroup8: TcxRadioGroup
            Left = 412
            Top = 8
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Properties.Items = <
              item
                Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
              end
              item
                Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 57
            Width = 130
          end
          object cxComboBox5: TcxComboBox
            Left = 556
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel19: TcxLabel
            Left = 556
            Top = 5
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object CheckBox4: TCheckBox
            Left = 565
            Top = 48
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 3
            WordWrap = True
          end
          object cxTextEdit5: TcxTextEdit
            Left = 700
            Top = 24
            Style.Color = 16446703
            TabOrder = 4
            Width = 121
          end
          object cxLabel25: TcxLabel
            Left = 700
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object cxDateEdit9: TcxDateEdit
            Left = 116
            Top = 25
            Style.Color = 16446703
            TabOrder = 6
            Width = 121
          end
          object cxLabel26: TcxLabel
            Left = 116
            Top = 5
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxDateEdit10: TcxDateEdit
            Left = 116
            Top = 50
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel27: TcxLabel
            Left = 92
            Top = 53
            Caption = ' '#1087#1086
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel28: TcxLabel
            Left = 96
            Top = 27
            Caption = #1089
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxButton18: TcxButton
            Left = 9
            Top = 24
            Width = 65
            Height = 33
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            LookAndFeel.SkinName = 'Blue'
          end
          object Panel20: TPanel
            Left = 1048
            Top = 0
            Width = 314
            Height = 88
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 12
            object cxButton19: TcxButton
              Left = 262
              Top = 5
              Width = 45
              Height = 43
              TabOrder = 0
              OnClick = cxButton19Click
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
          object cxRadioGroup9: TcxRadioGroup
            Left = 259
            Top = 8
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            Properties.Items = <
              item
                Caption = #1055#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088'.)'
              end
              item
                Caption = #1055#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              end
              item
                Caption = #1055#1086' PLN ('#1086#1087#1077#1088#1072#1094'.'#1076#1077#1085#1100')'
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 65
            Width = 145
          end
        end
      end
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1089#1075#1088#1091#1087#1087#1080#1088#1086#1074#1072#1085#1099#1081' 1'
      ImageIndex = 0
      object Panel13: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 656
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel14: TPanel
          Left = 1
          Top = 604
          Width = 1362
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object cxButton12: TcxButton
            Left = 16
            Top = 12
            Width = 145
            Height = 33
            Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
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
          object cxButton14: TcxButton
            Left = 840
            Top = 17
            Width = 128
            Height = 25
            Caption = #1059#1073#1088#1072#1090#1100' '#1076#1091#1073#1083#1080' '#1084#1080#1089#1089#1080#1081
            TabOrder = 1
            Visible = False
          end
        end
        object cxGrid4: TcxGrid
          Left = 1
          Top = 89
          Width = 1362
          Height = 515
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGrid4DBBandedTableView1: TcxGridDBBandedTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsGroupResult1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1SUM_VALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1SUM_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1EARLY_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1EARLY_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1EARLY_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1EARLY_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1EARLY_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1LATE_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1LATE_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1LATE_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1LATE_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1LATE_UNVALID_WORK
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1NORM_WORK_BIRZHA
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1NORM_WORK_KTU
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1NORM_WORK_OTHER
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1NORM_WORK_UNVALID
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_DAY
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_NIGTH
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            Bands = <
              item
                Options.HoldOwnColumnsOnly = True
                VisibleForCustomization = False
                Width = 999
              end
              item
                Caption = #1056#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086
                Options.HoldOwnColumnsOnly = True
                Width = 307
              end
              item
                Width = 114
              end
              item
                Caption = #1053#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1080#1085#1090#1077#1088#1074#1072#1083
                Options.HoldOwnColumnsOnly = True
                Width = 265
              end
              item
                Width = 121
              end
              item
                Caption = #1055#1086#1079#1076#1085#1077#1077' '#1086#1082#1086#1085#1095#1072#1085#1080#1077
                Options.HoldOwnColumnsOnly = True
                Width = 259
              end
              item
              end>
            object cxGrid4DBBandedTableView1DT: TcxGridDBBandedColumn
              Caption = #1055#1077#1088#1080#1086#1076
              DataBinding.FieldName = 'DT'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1TAB_NUM: TcxGridDBBandedColumn
              Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Width = 110
              Position.BandIndex = 0
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1TITLE_SHORT: TcxGridDBBandedColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Width = 72
              Position.BandIndex = 0
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1FULL_NAME: TcxGridDBBandedColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FULL_NAME'
              Width = 100
              Position.BandIndex = 0
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1DEPT_USER: TcxGridDBBandedColumn
              Caption = #1055#1086#1076#1088'-'#1077' '#1089#1086#1090#1088'.'
              DataBinding.FieldName = 'DEPT_USER'
              Width = 78
              Position.BandIndex = 0
              Position.ColIndex = 4
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1DEPT_WORK: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'.'
              DataBinding.FieldName = 'DEPT_WORK'
              Width = 83
              Position.BandIndex = 0
              Position.ColIndex = 5
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1ID_WORK: TcxGridDBBandedColumn
              Caption = 'Id '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'ID_WORK'
              Width = 66
              Position.BandIndex = 0
              Position.ColIndex = 6
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1WORK_NAME: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'WORK_NAME'
              Width = 99
              Position.BandIndex = 0
              Position.ColIndex = 7
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1MEASURE_UNIT: TcxGridDBBandedColumn
              Caption = #1045#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
              DataBinding.FieldName = 'MEASURE_UNIT'
              Width = 96
              Position.BandIndex = 0
              Position.ColIndex = 9
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1WORK_UNIT: TcxGridDBBandedColumn
              Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'WORK_UNIT'
              Width = 71
              Position.BandIndex = 0
              Position.ColIndex = 10
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1PAYMENT_GENERAL: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'PAYMENT_GENERAL'
              Width = 125
              Position.BandIndex = 0
              Position.ColIndex = 8
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1EARLY_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'EARLY_BIRZHA'
              Width = 64
              Position.BandIndex = 1
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1EARLY_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'EARLY_KTU'
              Width = 47
              Position.BandIndex = 1
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1EARLY_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'EARLY_OTHER'
              Width = 52
              Position.BandIndex = 1
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1EARLY_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'EARLY_UNVALID'
              Width = 75
              Position.BandIndex = 1
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LATE_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'LATE_BIRZHA'
              Width = 75
              Position.BandIndex = 5
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LATE_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'LATE_KTU'
              Width = 46
              Position.BandIndex = 5
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LATE_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'LATE_OTHER'
              Width = 56
              Position.BandIndex = 5
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1LATE_UNVALID_WORK: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'LATE_UNVALID_WORK'
              Width = 100
              Position.BandIndex = 5
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1099' '#1073#1077#1079' '#1087#1088#1080#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_DAY'
              Width = 172
              Position.BandIndex = 2
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBBandedColumn
              Caption = #1056#1072#1073#1086#1090#1099' '#1087#1086#1089#1083#1077' '#1091#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_NIGTH'
              Width = 100
              Position.BandIndex = 4
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1NORM_WORK_BIRZHA: TcxGridDBBandedColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'NORM_WORK_BIRZHA'
              Width = 65
              Position.BandIndex = 3
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1NORM_WORK_KTU: TcxGridDBBandedColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'NORM_WORK_KTU'
              Width = 48
              Position.BandIndex = 3
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1NORM_WORK_OTHER: TcxGridDBBandedColumn
              Caption = #1055#1088#1086#1095#1077#1077
              DataBinding.FieldName = 'NORM_WORK_OTHER'
              Width = 58
              Position.BandIndex = 3
              Position.ColIndex = 2
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1NORM_WORK_UNVALID: TcxGridDBBandedColumn
              Caption = #1053#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'NORM_WORK_UNVALID'
              Width = 100
              Position.BandIndex = 3
              Position.ColIndex = 3
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1SUM_VALID: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'SUM_VALID'
              Width = 74
              Position.BandIndex = 6
              Position.ColIndex = 0
              Position.RowIndex = 0
            end
            object cxGrid4DBBandedTableView1SUM_UNVALID: TcxGridDBBandedColumn
              Caption = #1057#1091#1084#1084#1072' '#1085#1077#1074#1072#1083#1080#1076#1085#1099#1077
              DataBinding.FieldName = 'SUM_UNVALID'
              Width = 73
              Position.BandIndex = 6
              Position.ColIndex = 1
              Position.RowIndex = 0
            end
          end
          object cxGridLevel2: TcxGridLevel
            GridView = cxGrid4DBBandedTableView1
          end
        end
        object Panel15: TPanel
          Left = 1
          Top = 1
          Width = 1362
          Height = 88
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object Shape4: TShape
            Left = 88
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxRadioGroup6: TcxRadioGroup
            Left = 412
            Top = 8
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Properties.Items = <
              item
                Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
              end
              item
                Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 57
            Width = 130
          end
          object cxComboBox4: TcxComboBox
            Left = 556
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel20: TcxLabel
            Left = 556
            Top = 5
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object CheckBox3: TCheckBox
            Left = 565
            Top = 48
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 3
            WordWrap = True
          end
          object cxTextEdit4: TcxTextEdit
            Left = 700
            Top = 24
            Style.Color = 16446703
            TabOrder = 4
            Width = 121
          end
          object cxLabel21: TcxLabel
            Left = 700
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object cxDateEdit7: TcxDateEdit
            Left = 116
            Top = 25
            Style.Color = 16446703
            TabOrder = 6
            Width = 121
          end
          object cxLabel22: TcxLabel
            Left = 116
            Top = 5
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxDateEdit8: TcxDateEdit
            Left = 116
            Top = 50
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel23: TcxLabel
            Left = 92
            Top = 53
            Caption = ' '#1087#1086
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel24: TcxLabel
            Left = 96
            Top = 27
            Caption = #1089
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxButton15: TcxButton
            Left = 10
            Top = 24
            Width = 65
            Height = 33
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            LookAndFeel.SkinName = 'Blue'
          end
          object Panel16: TPanel
            Left = 1048
            Top = 0
            Width = 314
            Height = 88
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 12
            object cxButton16: TcxButton
              Left = 264
              Top = 5
              Width = 45
              Height = 43
              TabOrder = 0
              OnClick = cxButton16Click
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
          object cxRadioGroup7: TcxRadioGroup
            Left = 259
            Top = 8
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            Properties.Items = <
              item
                Caption = #1055#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088'.)'
              end
              item
                Caption = #1055#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              end
              item
                Caption = #1055#1086' PLN ('#1086#1087#1077#1088#1072#1094'.'#1076#1077#1085#1100')'
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 65
            Width = 145
          end
        end
      end
    end
    object cxTabSheet1: TcxTabSheet
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090
      ImageIndex = 1
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 656
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel2: TPanel
          Left = 1
          Top = 604
          Width = 1362
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object btnExportDownTime: TcxButton
            Left = 16
            Top = 12
            Width = 145
            Height = 33
            Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
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
          object cxButton6: TcxButton
            Left = 224
            Top = 16
            Width = 91
            Height = 25
            Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1093#1086#1076#1072
            TabOrder = 1
            OnClick = cxButton6Click
          end
          object cxLabel12: TcxLabel
            Left = 336
            Top = 20
            Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1093#1086#1076#1072
          end
          object cxButton11: TcxButton
            Left = 840
            Top = 17
            Width = 128
            Height = 25
            Caption = #1059#1073#1088#1072#1090#1100' '#1076#1091#1073#1083#1080' '#1084#1080#1089#1089#1080#1081
            TabOrder = 3
            OnClick = cxButton11Click
          end
        end
        object cxGrid1: TcxGrid
          Left = 1
          Top = 89
          Width = 1362
          Height = 515
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGrid1DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsSelfDiagnosis
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid1DBTableView1VALIDW
              end
              item
                Format = '0'
                Kind = skSum
                Column = cxGrid1DBTableView1UNVALIDW
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            object cxGrid1DBTableView1OPERATING_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' PLN'
              DataBinding.FieldName = 'OPERATING_DAY'
              Width = 83
            end
            object cxGrid1DBTableView1ZP_OP_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' "'#1047#1055' '#1054#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'ZP_OP_DAY'
              Width = 72
            end
            object cxGrid1DBTableView1TAB_NUM: TcxGridDBColumn
              Caption = #1058#1072#1073'. '#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Width = 100
            end
            object cxGrid1DBTableView1TITLE_SHORT: TcxGridDBColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Width = 100
            end
            object cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn
              Caption = #1060#1048#1054
              DataBinding.FieldName = 'FULL_NAME'
              Width = 200
            end
            object cxGrid1DBTableView1DEPT_USER: TcxGridDBColumn
              Caption = #1055#1086#1076#1088'-'#1085#1080#1077' '#1089#1086#1090#1088'.'
              DataBinding.FieldName = 'DEPT_USER'
              Width = 100
            end
            object cxGrid1DBTableView1DEPT_WORK: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'.'
              DataBinding.FieldName = 'DEPT_WORK'
              Width = 100
            end
            object cxGrid1DBTableView1VALIDW: TcxGridDBColumn
              Caption = #1042#1093#1086#1076#1103#1090' '#1074' PLN'
              DataBinding.FieldName = 'VALIDW'
              Width = 79
            end
            object cxGrid1DBTableView1UNVALIDW: TcxGridDBColumn
              Caption = #1053#1077' '#1074#1093#1086#1076#1103#1090' '#1074' PLN'
              DataBinding.FieldName = 'UNVALIDW'
              Width = 95
            end
            object cxGrid1DBTableView1ID_WORK: TcxGridDBColumn
              Caption = 'ID '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'ID_WORK'
              Width = 67
            end
            object cxGrid1DBTableView1WORK_NAME: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'WORK_NAME'
              Width = 184
            end
            object cxGrid1DBTableView1PAYMENT_GENERAL: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'PAYMENT_GENERAL'
              Width = 140
            end
            object cxGrid1DBTableView1MEASURE_UNIT: TcxGridDBColumn
              Caption = #1045#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
              DataBinding.FieldName = 'MEASURE_UNIT'
              Width = 100
            end
            object cxGrid1DBTableView1WORK_UNIT: TcxGridDBColumn
              Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'WORK_UNIT'
              Width = 134
            end
            object cxGrid1DBTableView1KTU: TcxGridDBColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'KTU'
            end
            object cxGrid1DBTableView1KTU_NAME: TcxGridDBColumn
              Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077'  '#1050#1058#1059
              DataBinding.FieldName = 'KTU_NAME'
              Width = 116
            end
            object cxGrid1DBTableView1START_EARLY: TcxGridDBColumn
              Caption = #1056#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'START_EARLY'
              Width = 75
            end
            object cxGrid1DBTableView1LATE_END: TcxGridDBColumn
              Caption = #1055#1086#1079#1076#1085#1077#1077' '#1074#1099#1087#1086#1083#1085'.'
              DataBinding.FieldName = 'LATE_END'
              Width = 75
            end
            object cxGrid1DBTableView1BIRZHA: TcxGridDBColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'BIRZHA'
              Width = 58
            end
            object cxGrid1DBTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1073#1077#1079' '#1087#1088#1080#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_DAY'
              Width = 101
            end
            object cxGrid1DBTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086#1089#1083#1077' '#1091#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_NIGTH'
              Width = 105
            end
          end
          object cxGrid1Level1: TcxGridLevel
            GridView = cxGrid1DBTableView1
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 1362
          Height = 88
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object Shape1: TShape
            Left = 88
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxRdGrpSwitchDept: TcxRadioGroup
            Left = 412
            Top = 8
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Properties.Items = <
              item
                Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
              end
              item
                Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 57
            Width = 130
          end
          object cxComboBox1: TcxComboBox
            Left = 556
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel4: TcxLabel
            Left = 556
            Top = 5
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object CheckALLDept: TCheckBox
            Left = 565
            Top = 48
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 3
            WordWrap = True
          end
          object cxTextEdit1: TcxTextEdit
            Left = 700
            Top = 24
            Style.Color = 16446703
            TabOrder = 4
            Width = 121
          end
          object cxLabel5: TcxLabel
            Left = 700
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object cxDateEdit1: TcxDateEdit
            Left = 116
            Top = 25
            Style.Color = 16446703
            TabOrder = 6
            Width = 121
          end
          object cxLabel3: TcxLabel
            Left = 116
            Top = 5
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxDateEdit2: TcxDateEdit
            Left = 116
            Top = 50
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel2: TcxLabel
            Left = 92
            Top = 53
            Caption = ' '#1087#1086
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel1: TcxLabel
            Left = 96
            Top = 27
            Caption = #1089
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxButton1: TcxButton
            Left = 10
            Top = 24
            Width = 65
            Height = 33
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            LookAndFeel.SkinName = 'Blue'
          end
          object Panel4: TPanel
            Left = 1048
            Top = 0
            Width = 314
            Height = 88
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 12
            object btnSearchDownTime1: TcxButton
              Left = 264
              Top = 5
              Width = 45
              Height = 43
              TabOrder = 0
              OnClick = btnSearchDownTime1Click
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
          object cxRadioGroup3: TcxRadioGroup
            Left = 259
            Top = 8
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            Properties.Items = <
              item
                Caption = #1055#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088'.)'
              end
              item
                Caption = #1055#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              end
              item
                Caption = #1055#1086' PLN ('#1086#1087#1077#1088#1072#1094'.'#1076#1077#1085#1100')'
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 65
            Width = 145
          end
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1088#1086#1084#1077#1078#1091#1090#1086#1095#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 2
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 656
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel10: TPanel
          Left = 1
          Top = 604
          Width = 1362
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object cxButton7: TcxButton
            Left = 16
            Top = 12
            Width = 145
            Height = 33
            Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
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
          object cxButton8: TcxButton
            Left = 224
            Top = 16
            Width = 91
            Height = 25
            Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1093#1086#1076#1072
            TabOrder = 1
            OnClick = cxButton8Click
          end
          object cxLabel13: TcxLabel
            Left = 336
            Top = 20
            Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1093#1086#1076#1072
          end
        end
        object cxGrid3: TcxGrid
          Left = 1
          Top = 89
          Width = 1362
          Height = 515
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGridDBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsInitData2
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0'
                Kind = skSum
                Column = cxGridDBTableView1FACT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            object cxGridDBTableView1OPERATING_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' PLN'
              DataBinding.FieldName = 'OPERATING_DAY'
              Width = 88
            end
            object cxGridDBTableView1ZP_OP_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'ZP_OP_DAY'
            end
            object cxGridDBTableView1TAB_NUM: TcxGridDBColumn
              Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Width = 100
            end
            object cxGridDBTableView1TITLE_SHORT: TcxGridDBColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Width = 100
            end
            object cxGridDBTableView1FULL_NAME: TcxGridDBColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FULL_NAME'
              Width = 148
            end
            object cxGridDBTableView1DEPT_USER: TcxGridDBColumn
              Caption = #1055#1086#1076#1088'-'#1085#1080#1077' '#1089#1086#1090#1088'.'
              DataBinding.FieldName = 'DEPT_USER'
              Width = 83
            end
            object cxGridDBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'.'
              DataBinding.FieldName = 'DEPT_NAME_SHORT'
              Width = 80
            end
            object cxGridDBTableView1ID_WORK: TcxGridDBColumn
              Caption = 'ID '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'ID_WORK'
            end
            object cxGridDBTableView1WORK_NAME: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'WORK_NAME'
              Width = 120
            end
            object cxGridDBTableView1PAYMENT_GENERAL: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'PAYMENT_GENERAL'
              Width = 150
            end
            object cxGridDBTableView1MEASURE_UNIT: TcxGridDBColumn
              Caption = #1045#1076'.'#1080#1079#1084#1077#1088#1077#1085#1080#1103
              DataBinding.FieldName = 'MEASURE_UNIT'
              Width = 79
            end
            object cxGridDBTableView1FACT: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'FACT'
            end
            object cxGridDBTableView1START_WORK: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
              DataBinding.FieldName = 'START_WORK'
              Width = 82
            end
            object cxGridDBTableView1END_WORK: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'END_WORK'
              Width = 103
            end
            object cxGridDBTableView1DIFF_TIME: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'DIFF_TIME'
              Width = 87
            end
            object cxGridDBTableView1VALIDE_WORK: TcxGridDBColumn
              Caption = #1042#1072#1083#1080#1076#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'VALIDE_WORK'
              Width = 71
            end
            object cxGridDBTableView1WORK_UNIT: TcxGridDBColumn
              Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'WORK_UNIT'
              Width = 70
            end
            object cxGridDBTableView1INTERVAL_WORK: TcxGridDBColumn
              Caption = #1055#1077#1088#1080#1086#1076' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'INTERVAL_WORK'
              Width = 96
            end
            object cxGridDBTableView1TYPE_WORK: TcxGridDBColumn
              Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'TYPE_WORK'
              Width = 73
            end
            object cxGridDBTableView1WORK_KTU: TcxGridDBColumn
              Caption = 'ID '#1050#1058#1059
              DataBinding.FieldName = 'WORK_KTU'
              Width = 44
            end
            object cxGridDBTableView1KTU_NAME: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1050#1058#1059
              DataBinding.FieldName = 'KTU_NAME'
              Width = 120
            end
            object cxGridDBTableView1WORKSHIFT: TcxGridDBColumn
              Caption = #1057#1084#1077#1085#1072
              DataBinding.FieldName = 'WORKSHIFT'
            end
            object cxGridDBTableView1ID_SHIFT_CHECK_IN: TcxGridDBColumn
              Caption = #1044#1077#1085#1100'/'#1053#1086#1095#1100
              DataBinding.FieldName = 'ID_SHIFT_CHECK_IN'
              Width = 71
            end
            object cxGridDBTableView1NUM_MISSION: TcxGridDBColumn
              DataBinding.FieldName = 'NUM_MISSION'
              Width = 100
            end
          end
          object cxGridLevel1: TcxGridLevel
            GridView = cxGridDBTableView1
          end
        end
        object Panel11: TPanel
          Left = 1
          Top = 1
          Width = 1362
          Height = 88
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object Shape3: TShape
            Left = 88
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxRadioGroup4: TcxRadioGroup
            Left = 412
            Top = 8
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Properties.Items = <
              item
                Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
              end
              item
                Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 57
            Width = 130
          end
          object cxComboBox3: TcxComboBox
            Left = 556
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel14: TcxLabel
            Left = 556
            Top = 5
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object CheckBox2: TCheckBox
            Left = 565
            Top = 48
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 3
            WordWrap = True
          end
          object cxTextEdit3: TcxTextEdit
            Left = 700
            Top = 24
            Style.Color = 16446703
            TabOrder = 4
            Width = 121
          end
          object cxLabel15: TcxLabel
            Left = 700
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object cxDateEdit5: TcxDateEdit
            Left = 116
            Top = 25
            Style.Color = 16446703
            TabOrder = 6
            Width = 121
          end
          object cxLabel16: TcxLabel
            Left = 116
            Top = 5
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxDateEdit6: TcxDateEdit
            Left = 116
            Top = 50
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel17: TcxLabel
            Left = 92
            Top = 53
            Caption = ' '#1087#1086
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel18: TcxLabel
            Left = 96
            Top = 27
            Caption = #1089
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxButton9: TcxButton
            Left = 10
            Top = 24
            Width = 65
            Height = 33
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            LookAndFeel.SkinName = 'Blue'
          end
          object Panel12: TPanel
            Left = 1048
            Top = 0
            Width = 314
            Height = 88
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 12
            object cxButton10: TcxButton
              Left = 266
              Top = 5
              Width = 43
              Height = 43
              TabOrder = 0
              OnClick = cxButton10Click
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
          object cxRadioGroup5: TcxRadioGroup
            Left = 259
            Top = 8
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            Properties.Items = <
              item
                Caption = #1055#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088'.)'
              end
              item
                Caption = #1055#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              end
              item
                Caption = #1055#1086' PLN ('#1086#1087#1077#1088#1072#1094'.'#1076#1077#1085#1100')'
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 65
            Width = 145
          end
        end
      end
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1364
        Height = 656
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object Panel6: TPanel
          Left = 1
          Top = 604
          Width = 1362
          Height = 51
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object cxButton2: TcxButton
            Left = 16
            Top = 12
            Width = 145
            Height = 33
            Caption = #1069#1082#1089#1087#1086#1088#1090' '#1074' Excel'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
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
          object cxLabel11: TcxLabel
            Left = 336
            Top = 20
            Caption = #1042#1088#1077#1084#1103
          end
          object cxButton5: TcxButton
            Left = 224
            Top = 16
            Width = 91
            Height = 25
            Caption = #1042#1088#1077#1084#1103' '#1087#1088#1080#1093#1086#1076#1072
            TabOrder = 2
            OnClick = cxButton5Click
          end
        end
        object cxGrid2: TcxGrid
          Left = 1
          Top = 89
          Width = 1362
          Height = 515
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCustomDrawCell = cxGrid2DBTableView1CustomDrawCell
            DataController.DataSource = dsInitData
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <
              item
                Format = '0.0'
                Kind = skSum
                Column = cxGrid2DBTableView1FACT
              end>
            DataController.Summary.SummaryGroups = <>
            OptionsView.Footer = True
            object cxGrid2DBTableView1OPERATING_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' PLN'
              DataBinding.FieldName = 'OPERATING_DAY'
              Width = 100
            end
            object cxGrid2DBTableView1ZP_OP_DAY: TcxGridDBColumn
              Caption = #1044#1072#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'ZP_OP_DAY'
              Width = 113
            end
            object cxGrid2DBTableView1TAB_NUM: TcxGridDBColumn
              Caption = #1058#1072#1073'. '#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Width = 99
            end
            object cxGrid2DBTableView1TITLE_SHORT: TcxGridDBColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Width = 100
            end
            object cxGrid2DBTableView1FULL_NAME: TcxGridDBColumn
              Caption = #1060#1048#1054
              DataBinding.FieldName = 'FULL_NAME'
              Width = 169
            end
            object cxGrid2DBTableView1DEPT_USER: TcxGridDBColumn
              Caption = #1055#1086#1076#1088'-'#1085#1080#1077' '#1089#1086#1090#1088'.'
              DataBinding.FieldName = 'DEPT_USER'
              Width = 100
            end
            object cxGrid2DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'-'#1085#1080#1077
              DataBinding.FieldName = 'DEPT_NAME_SHORT'
              Width = 100
            end
            object cxGrid2DBTableView1ID_WORK: TcxGridDBColumn
              Caption = 'ID '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'ID_WORK'
            end
            object cxGrid2DBTableView1WORK_UNIT: TcxGridDBColumn
              Caption = #1042#1080#1076' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'WORK_UNIT'
              Width = 71
            end
            object cxGrid2DBTableView1WORK_NAME: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'WORK_NAME'
              Width = 180
            end
            object cxGrid2DBTableView1PAYMENT_GENERAL: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              DataBinding.FieldName = 'PAYMENT_GENERAL'
              Width = 140
            end
            object cxGrid2DBTableView1MEASURE_UNIT: TcxGridDBColumn
              Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
              DataBinding.FieldName = 'MEASURE_UNIT'
              Width = 100
            end
            object cxGrid2DBTableView1FACT: TcxGridDBColumn
              Caption = #1050#1086#1083'-'#1074#1086
              DataBinding.FieldName = 'FACT'
            end
            object cxGrid2DBTableView1START_WORK: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
              DataBinding.FieldName = 'START_WORK'
            end
            object cxGrid2DBTableView1END_WORK: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
              DataBinding.FieldName = 'END_WORK'
            end
            object cxGrid2DBTableView1DIFF_TIME: TcxGridDBColumn
              Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099
              DataBinding.FieldName = 'DIFF_TIME'
              Width = 110
            end
            object cxGrid2DBTableView1VALIDE_WORK: TcxGridDBColumn
              Caption = #1042#1072#1083#1080#1076#1085#1072#1103' '#1088#1072#1073#1086#1090#1072
              DataBinding.FieldName = 'VALIDE_WORK'
              Width = 57
            end
            object cxGrid2DBTableView1BIRZHA: TcxGridDBColumn
              Caption = #1053#1072' '#1073#1080#1088#1078#1077
              DataBinding.FieldName = 'BIRZHA'
              Width = 58
            end
            object cxGrid2DBTableView1KTU: TcxGridDBColumn
              Caption = #1050#1058#1059
              DataBinding.FieldName = 'KTU'
            end
            object cxGrid2DBTableView1START_EARLY: TcxGridDBColumn
              Caption = #1056#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086
              DataBinding.FieldName = 'START_EARLY'
              Width = 77
            end
            object cxGrid2DBTableView1LATE_END: TcxGridDBColumn
              Caption = #1055#1086#1079#1076#1085'.'#1074#1099#1087'.'
              DataBinding.FieldName = 'LATE_END'
              Width = 66
            end
            object cxGrid2DBTableView1WORK_WITHOUT_MARK_DAY: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1073#1077#1079' '#1087#1088#1080#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_DAY'
              Width = 110
            end
            object cxGrid2DBTableView1WORK_WITHOUT_MARK_NIGTH: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1087#1086#1089#1083#1077' '#1091#1093#1086#1076#1072
              DataBinding.FieldName = 'WORK_WITHOUT_MARK_NIGTH'
              Width = 107
            end
            object cxGrid2DBTableView1WORKSHIFT: TcxGridDBColumn
              Caption = #1057#1084#1077#1085#1072
              DataBinding.FieldName = 'WORKSHIFT'
            end
            object cxGrid2DBTableView1ID_SHIFT_CHECK_IN: TcxGridDBColumn
              Caption = #1044#1077#1085#1100'/'#1053#1086#1095#1100
              DataBinding.FieldName = 'ID_SHIFT_CHECK_IN'
            end
            object cxGrid2DBTableView1WORK_KTU: TcxGridDBColumn
              Caption = 'ID '#1088#1072#1073#1086#1090#1099' '#1050#1058#1059' '
              DataBinding.FieldName = 'WORK_KTU'
              Width = 85
            end
            object cxGrid2DBTableView1KTU_NAME: TcxGridDBColumn
              Caption = #1056#1072#1073#1086#1090#1072' '#1050#1058#1059
              DataBinding.FieldName = 'KTU_NAME'
              Width = 150
            end
            object cxGrid2DBTableView1NUM_MISSION: TcxGridDBColumn
              DataBinding.FieldName = 'NUM_MISSION'
              Width = 100
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object Panel7: TPanel
          Left = 1
          Top = 1
          Width = 1362
          Height = 88
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object Shape2: TShape
            Left = 88
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxRadioGroup1: TcxRadioGroup
            Left = 412
            Top = 8
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            Properties.Items = <
              item
                Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
              end
              item
                Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 0
            Height = 57
            Width = 130
          end
          object cxComboBox2: TcxComboBox
            Left = 556
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel6: TcxLabel
            Left = 556
            Top = 5
            Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object CheckBox1: TCheckBox
            Left = 565
            Top = 48
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 3
            WordWrap = True
          end
          object cxTextEdit2: TcxTextEdit
            Left = 700
            Top = 24
            Style.Color = 16446703
            TabOrder = 4
            Width = 121
          end
          object cxLabel7: TcxLabel
            Left = 700
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object cxDateEdit3: TcxDateEdit
            Left = 116
            Top = 25
            Style.Color = 16446703
            TabOrder = 6
            Width = 121
          end
          object cxLabel8: TcxLabel
            Left = 116
            Top = 5
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.IsFontAssigned = True
          end
          object cxDateEdit4: TcxDateEdit
            Left = 116
            Top = 50
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel9: TcxLabel
            Left = 92
            Top = 53
            Caption = ' '#1087#1086
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel10: TcxLabel
            Left = 96
            Top = 27
            Caption = #1089
            ParentFont = False
            Style.Font.Charset = DEFAULT_CHARSET
            Style.Font.Color = clWindowText
            Style.Font.Height = -11
            Style.Font.Name = 'MS Sans Serif'
            Style.Font.Style = [fsBold]
            Style.LookAndFeel.SkinName = 'Blue'
            Style.IsFontAssigned = True
            StyleDisabled.LookAndFeel.SkinName = 'Blue'
            StyleFocused.LookAndFeel.SkinName = 'Blue'
            StyleHot.LookAndFeel.SkinName = 'Blue'
          end
          object cxButton3: TcxButton
            Left = 10
            Top = 24
            Width = 65
            Height = 33
            Caption = #1057#1073#1088#1086#1089
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 11
            LookAndFeel.SkinName = 'Blue'
          end
          object Panel8: TPanel
            Left = 1048
            Top = 0
            Width = 314
            Height = 88
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 12
            object cxButton4: TcxButton
              Left = 264
              Top = 5
              Width = 45
              Height = 43
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
          object cxRadioGroup2: TcxRadioGroup
            Left = 259
            Top = 8
            Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
            Properties.Items = <
              item
                Caption = #1055#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088'.)'
              end
              item
                Caption = #1055#1086' "'#1047#1055' '#1086#1073#1097#1080#1081'"'
              end
              item
                Caption = #1055#1086' PLN ('#1086#1087#1077#1088#1072#1094'.'#1076#1077#1085#1100')'
              end>
            ItemIndex = 0
            Style.LookAndFeel.NativeStyle = False
            Style.Shadow = False
            Style.TextStyle = []
            StyleDisabled.LookAndFeel.NativeStyle = False
            StyleFocused.LookAndFeel.NativeStyle = False
            StyleHot.LookAndFeel.NativeStyle = False
            TabOrder = 13
            Height = 65
            Width = 145
          end
        end
      end
    end
  end
  object orqrySelfDiagnosis: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '   SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           unit_temp,'
      '           etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           1 as valid_work,'
      '           null num_work_unstop,'
      '           num_mission,'
      '           0 marc_time'
      '                         '
      '    FROM  plan_pers_work_ungroup_new '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '        --  &dept_sotr1'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '        '
      '       -- AND start_work >= To_date('#39'11.02.2020'#39', '#39'dd.mm.yyyy'#39') '
      
        '       -- AND start_work <= To_date( '#39'13.02.2020'#39', '#39'dd.mm.yyyy'#39')' +
        ' + 1.5'
      '    UNION ALL'
      '    SELECT operating_day,'
      '           id_dept,'
      '           null plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           null unit_temp,'
      '           etat,'
      '           null id_workplace,'
      '           null unit_txt,'
      '           0 as valid_work,'
      '           num_work_unstop,'
      '           num_mission,'
      '           marc_time'
      '          '
      '    FROM  pp_unvalid_works_ungroup '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '         -- &dept_sotr2'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '          &mission_unique'
      
        '         -- AND start_work >= To_date('#39'11.02.2020'#39', '#39'dd.mm.yyyy'#39 +
        ') '
      
        '         -- AND start_work <= To_date( '#39'13.02.2020'#39', '#39'dd.mm.yyyy' +
        #39') + 1.5    '
      '    '
      '),'
      ''
      'PPWUN AS ('
      '         Select'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'init_data as ('
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short as DEPT_WORK,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.id_work,'
      '        PPWL.WORK_NAME,'
      '        pidpwt.name_work_zp as PAYMENT_GENERAL,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(PPWUN.DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.HOURS, 2, '#39'0'#39')' +
        '||'#39':'#39'||LPAD(PPWUN.MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.SECONDS, 2, ' +
        #39'0'#39') AS diff_time,'
      '        CASE '
      '            WHEN valid_work = 1 Then '#39#1044#1040#39
      '            WHEN valid_work = 0 Then '#39#1053#1045#1058#39
      '            ELSE '#39' - '#39
      '        END valide_work,'
      '        CASE '
      '            WHEN (PPWUN.start_work >= ppb.time_sent) AND '
      
        '                  (PPWUN.start_work <= ppb.time_confirm_transfer' +
        ')'
      '            Then '#39#1044#1072#39
      '            ELSE '#39#1053#1077#1090#39
      '        END birzha,'
      '        CASE '
      '            WHEN PPWUN.num_work_unstop is not NULL  '
      '            Then '#39#1044#1072#39
      '            ELSE '#39#1053#1077#1090#39
      '        END KTU,'
      '        CASE '
      '            WHEN PPWUN.start_work < PPWUN.operating_day + 8/24 '
      '            THEN '#39#1044#1072#39
      '            Else '#39#1053#1077#1090#39
      '        END start_early,'
      '        CASE '
      
        '            WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 +' +
        ' 1'
      '            THEN '#39#1044#1072#39
      '            Else '#39#1053#1077#1090#39
      '        END late_end,'
      '       '
      '       CASE '
      
        '          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + ' +
        '1'
      '          THEN operating_day'
      '          ELSE Trunc(PPWUN.start_work)'
      '        END ZP_OP_DAY,'
      '         CASE '
      
        '          WHEN  PPWUN.start_work < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                 AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  ppday.time_go_in < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN ppday.time_go_in'
      
        '          ELSE To_Date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh' +
        '24:mi:ss'#39')'
      '       END go_in,'
      '       CASE '
      
        '          WHEN  (PPWUN.start_work > To_Date(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1) '
      '                AND  ppday.id_shift_check_in in (2, 4)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  (ppday.time_go_out > To_Date(:date_end || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1)'
      '                AND  ppday.id_shift_check_in in (2, 4) '
      '          THEN ppday.time_go_out'
      
        '          ELSE To_Date(:date_end || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh24' +
        ':mi:ss'#39') + 1'
      '       END go_out, '
      
        '       DECODE (ppc98.workday,  '#39#1044#1040#39', '#39#1057#1084#1077#1085#1072' A'#39',  '#39#1053#1045#1058#39', '#39#1057#1084#1077#1085#1072' '#1041 +
        #39',  NULL) workshift,'
      
        '       DECODE (ppday.id_shift_check_in,  1, '#39#1044#1077#1085#1100#39',  2, '#39#1053#1086#1095#1100#39', ' +
        ' 3, '#39#1044#1077#1085#1100#39',  4, '#39#1053#1086#1095#1100#39',  NULL) id_shift_check_in,'
      '       ppwK.id_work as WORK_KTU,'
      '       PPWL_KTU.work_name as KTU_NAME,'
      '       num_mission,'
      '       valid_work,'
      '       CASE '
      '          WHEN marc_time = 1'
      '               AND time_go_in > PPWUN.start_work'
      '          THEN '#39#1044#1072#39' '
      '          ELSE '#39#1053#1077#1090#39
      '       END WORK_Without_MARK_DAY,'
      '        CASE '
      '          WHEN marc_time = 1'
      '               AND  time_go_out < PPWUN.start_work'
      '          THEN '#39#1044#1072#39
      '          ELSE '#39#1053#1077#1090#39' '
      '       END WORK_Without_MARK_NIGTH    '
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '              AND uad.id_user = :nom_user'
      '             -- AND uad.id_user = 46023 '
      '      LEFT JOIN plan_pers_birzha ppb '
      '             ON ppb.tab_num = PPW.tab_num'
      '               and PPWUN.operating_day = ppb.plan_day'
      '               and PPDU.id_dept = ppb.id_dept_transfer'
      '      LEFT JOIN plan_pers_work_ktu ppwK '
      '             ON ppwK.num_work = PPWUN.num_work_unstop'
      '      INNER JOIN pers_pers_day ppday '
      '              ON PPWUN.operating_day = ppday.plan_day'
      '                 AND PPWUN.tab_num = ppday.tab_num'
      '      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON PPWL.id_work = pidpwt.num_work_res_plan'
      '      LEFT JOIN plan_pers_prodcalend ppc98 '
      '             ON ppc98.num_prod = 98'
      '                AND ppc98.day_id = PPWUN.operating_day'
      '      LEFT JOIN plan_pers_works_list PPWL_KTU '
      
        '              ON PPWL_KTU.id_work = ppwK.id_work                ' +
        '            '
      '      '
      'WHERE 1 = 1 '
      '      --and ppw.tab_num = '#39'RUS77MCO015087'#39
      '     -- and ppw.tab_num = '#39'RUS77MCO106033'#39
      ''
      '     &dept_FILTER'
      '     &deptUSER_filter  '
      '     &fio_filter '
      '),'
      ''
      'tab_time_interval as ('
      '    SELECT * '
      '    FROM init_data'
      '    WHERE start_work >= go_in'
      '          AND  start_work <= go_out'
      ')'
      ''
      '--RESULT_TABLE AS('
      '    Select  tab_num, '
      '            title_short, '
      '            full_name, '
      '            dept_user,'
      '            DEPT_WORK,'
      '            id_work, '
      '            work_name,'
      '            measure_unit,'
      '            operating_day,'
      '            CASE '
      '              WHEN start_work <= operating_day + 8/24 + 1'
      '              THEN operating_day'
      '              ELSE Trunc(start_work)'
      '            END ZP_OP_DAY,'
      '            work_unit,'
      '            KTU,'
      '            KTU_NAME,'
      '            start_early,'
      '            late_end,'
      '            birzha,'
      '            pidpwt.name_work_zp as PAYMENT_GENERAL,'
      '            WORK_Without_MARK_DAY,'
      '            WORK_Without_MARK_NIGTH,'
      
        '            sum (Case When valid_work = 1 Then fact END) as Vali' +
        'dW,'
      
        '            sum (Case When valid_work = 0 Then fact END) as UnVa' +
        'lidW'
      '            '
      '    From tab_time_interval tti'
      '          LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON tti.id_work = pidpwt.num_work_res_plan'
      '    Group by tab_num, '
      '             title_short, '
      '             full_name, '
      '             dept_user, '
      '             DEPT_WORK,'
      '             id_work, '
      '             work_name,'
      '             measure_unit,'
      '             operating_day,'
      '             CASE '
      '                WHEN start_work <= operating_day + 8/24 + 1'
      '                THEN operating_day'
      '                ELSE Trunc(start_work)'
      '            END,'
      '            work_unit,'
      '            KTU,'
      '            KTU_NAME,'
      '            start_early,'
      '            late_end,'
      '            birzha,'
      '            pidpwt.name_work_zp,'
      '            WORK_Without_MARK_DAY,'
      '            WORK_Without_MARK_NIGTH'
      ''
      '/*'
      ')'
      ''
      'Select operating_day,'
      '       ZP_OP_DAY,'
      '       tab_num, '
      '       title_short, '
      '       full_name, '
      '       dept_user,'
      '       DEPT_WORK,'
      '       id_work,'
      '       work_name,'
      '       pidpwt.name_work_zp as PAYMENT_GENERAL, '
      '       measure_unit,'
      '       sum(ValidW),'
      '       sum(UnValidW)'
      '            '
      'From RESULT_TABLE rt'
      '      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON rt.id_work = pidpwt.num_work_res_plan '
      'Group by tab_num, '
      '         title_short,'
      '         work_name,'
      '         id_work,'
      '         measure_unit,'
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         pidpwt.name_work_zp, '
      '         operating_day,'
      '         ZP_OP_DAY'
      '*/')
    FetchAll = True
    Left = 1268
    Top = 370
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start'
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
      end
      item
        DataType = ftUnknown
        Name = 'nom_user'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
      end>
    MacroData = <
      item
        Name = 'date_PLN'
        Value = 
          'AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '#13#10'        A' +
          'ND start_work <= To_date( :date_end, '#39'dd.mm.yyyy'#39') + 1.5'
      end
      item
        Name = 'date_ZP'
        Value = 
          'AND start_work >= To_date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy' +
          ' hh24:mi:ss'#39')'#13#10'        AND start_work <= To_date( :date_end || '#39 +
          '08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1 '
      end
      item
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39')'#13#10' AND o' +
          'perating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39')'
      end
      item
        Name = 'mission_unique'
        Value = 
          'and ( operating_day, start_work, num_mission, tab_num) '#13#10'       ' +
          '   NOT IN ( '#13#10'                    SELECT ppwun.operating_day,'#13#10' ' +
          '                          ppwun.start_work,'#13#10'                   ' +
          '        ppwun.num_mission,'#13#10'                           ppwun.tab' +
          '_num'#13#10'                           -- ppwun.id_dept as id_dept_VAL' +
          'ID,'#13#10'                           -- ppuwu.id_dept as id_dept_UNVA' +
          'LID,'#13#10'                           -- ppwun.id_work as id_work_VAL' +
          'ID,'#13#10'                           --  ppuwu.id_work as id_work_UNV' +
          'ALID,'#13#10'                           --   ppuwu.id_dept_pers'#13#10'     ' +
          '               FROM  plan_pers_work_ungroup_new ppwun'#13#10'         ' +
          '                 INNER JOIN pp_unvalid_works_ungroup ppuwu'#13#10'    ' +
          '                              ON ppwun.operating_day = ppuwu.ope' +
          'rating_day'#13#10'                                      AND ppwun.num_' +
          'mission = ppuwu.num_mission'#13#10'                                   ' +
          '   AND ppwun.start_work = ppuwu.start_work'#13#10'                    ' +
          '                  AND ppwun.tab_num = ppuwu.tab_num    '#13#10'       ' +
          '             WHERE 1 = 1'#13#10'                          AND ppwun.op' +
          'erating_day >=  To_date(:date_start, '#39'dd.mm.yyyy'#39')  - 1'#13#10'       ' +
          '                   AND ppwun.operating_day <= To_date( :date_end' +
          ', '#39'dd.mm.yyyy'#39')  + 1'#13#10')'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUSER_filter'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.full_name) like :FIO'
      end>
  end
  object dsSelfDiagnosis: TOraDataSource
    DataSet = orqrySelfDiagnosis
    Left = 1270
    Top = 316
  end
  object orqryInitData: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '   SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           unit_temp,'
      '           etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           1 as valid_work,'
      '           null num_work_unstop,'
      '           num_mission,'
      '           0 marc_time'
      '                         '
      '    FROM  plan_pers_work_ungroup_new '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &dept_sotr1'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      
        '          &date_PLN_1 -- '#1087#1086' PLN ('#1079#1072' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1077' '#1089#1091#1090#1082#1080' '#1089' 8 '#1080#1083#1080' '#1076 +
        #1072#1090#1077' '#1087#1088#1080#1093#1086#1076#1072' '#1091#1090#1088#1072' '#1076#1086' 8 '#1080#1083#1080' '#1076#1072#1090#1077' '#1091#1093#1086#1076#1072' '#1091#1090#1088#1072' '#1089#1083#1077#1076' '#1076#1085#1103')'
      
        '       -- AND operating_day >= To_date('#39'10.02.2020'#39', '#39'dd.mm.yyyy' +
        #39')'
      
        '       -- AND operating_day <= To_date('#39'13.02.2020'#39', '#39'dd.mm.yyyy' +
        #39') '
      '    UNION ALL'
      '    SELECT operating_day,'
      '           id_dept,'
      '           null plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           null unit_temp,'
      '           etat,'
      '           null id_workplace,'
      '           null unit_txt,'
      '           0 as valid_work,'
      '           num_work_unstop,'
      '           num_mission,'
      '           marc_time'
      '          '
      '    FROM  pp_unvalid_works_ungroup '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &dept_sotr2'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      
        '          &date_PLN_1 -- '#1087#1086' PLN ('#1079#1072' '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1077' '#1089#1091#1090#1082#1080' '#1089' 8 '#1080#1083#1080' '#1076 +
        #1072#1090#1077' '#1087#1088#1080#1093#1086#1076#1072' '#1091#1090#1088#1072' '#1076#1086' 8 '#1080#1083#1080' '#1076#1072#1090#1077' '#1091#1093#1086#1076#1072' '#1091#1090#1088#1072' '#1089#1083#1077#1076' '#1076#1085#1103')'
      
        '         --AND operating_day >= To_date('#39'10.02.2020'#39', '#39'dd.mm.yyy' +
        'y'#39')'
      
        '         --AND operating_day <= To_date('#39'13.02.2020'#39', '#39'dd.mm.yyy' +
        'y'#39')        '
      '    '
      '),'
      ''
      'PPWUN AS ('
      '         Select'
      '             /*   CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 60'
      '                    ELSE  (end_work - start_work)* 24 * 60'
      '                END Time_Work_MINUTES, */'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'init_data as ('
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.id_work,'
      '        PPWL.WORK_NAME,'
      '        pidpwt.name_work_zp as PAYMENT_GENERAL,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '     --   ROUND(Time_Work_MINUTES, 4),'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(PPWUN.DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.HOURS, 2, '#39'0'#39')' +
        '||'#39':'#39'||LPAD(PPWUN.MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.SECONDS, 2, ' +
        #39'0'#39') AS diff_time,'
      '        CASE '
      '            WHEN valid_work = 1 Then '#39#1044#1040#39
      '            WHEN valid_work = 0 Then '#39#1053#1045#1058#39
      '            ELSE '#39' - '#39
      '        END valide_work,'
      '     --   null as '#1056#1072#1079#1076#1077#1083#1080#1090#1077#1083#1100', '
      '        CASE '
      '            WHEN (PPWUN.start_work >= ppb.time_sent) AND '
      
        '                  (PPWUN.start_work <= ppb.time_confirm_transfer' +
        ')'
      '            Then '#39#1044#1072#39
      '            ELSE '#39#1053#1077#1090#39
      '        END birzha,'
      '        CASE '
      '            WHEN PPWUN.num_work_unstop is not NULL  '
      '            Then '#39#1044#1072#39
      '            ELSE '#39#1053#1077#1090#39
      '        END KTU,'
      '        CASE '
      
        '           -- WHEN PPWUN.start_work < To_date(PPWUN.operating_da' +
        'y || '#39' 08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '            WHEN PPWUN.start_work < PPWUN.operating_day + 8/24 '
      '            THEN '#39#1044#1072#39
      '            Else '#39#1053#1077#1090#39
      '        END start_early,'
      '        CASE '
      
        '            WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 +' +
        ' 1'
      
        '            --WHEN PPWUN.start_work > To_date(PPWUN.operating_da' +
        'y || '#39' 08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1'
      '            THEN '#39#1044#1072#39
      '            Else '#39#1053#1077#1090#39
      '        END late_end,'
      '     --    ppday.plan_start_date,'
      '     --    ppday.plan_end_date,     '
      '       CASE '
      
        '          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + ' +
        '1'
      '          THEN operating_day'
      '          ELSE Trunc(PPWUN.start_work)'
      '        END ZP_OP_DAY,'
      '         CASE '
      
        '          WHEN  PPWUN.start_work < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                 AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  ppday.time_go_in < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN ppday.time_go_in'
      
        '          ELSE To_Date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh' +
        '24:mi:ss'#39')'
      '       END go_in,'
      '       CASE '
      
        '          WHEN  (PPWUN.start_work > To_Date(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1) '
      '                AND  ppday.id_shift_check_in in (2, 4)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  (ppday.time_go_out > To_Date(:date_end || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1)'
      '                AND  ppday.id_shift_check_in in (2, 4) '
      '          THEN ppday.time_go_out'
      
        '          ELSE To_Date(:date_end || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh24' +
        ':mi:ss'#39') + 1'
      '       END go_out, '
      
        '       DECODE (ppc98.workday,  '#39#1044#1040#39', '#39#1057#1084#1077#1085#1072' A'#39',  '#39#1053#1045#1058#39', '#39#1057#1084#1077#1085#1072' '#1041 +
        #39',  NULL) workshift,'
      
        '       DECODE (ppday.id_shift_check_in,  1, '#39#1044#1077#1085#1100#39',  2, '#39#1053#1086#1095#1100#39', ' +
        ' 3, '#39#1044#1077#1085#1100#39',  4, '#39#1053#1086#1095#1100#39',  NULL) id_shift_check_in,'
      '       ppwK.id_work as WORK_KTU,'
      '       PPWL_KTU.work_name as KTU_NAME,'
      '       num_mission,'
      '       CASE '
      '          WHEN marc_time = 1'
      '               AND time_go_in > PPWUN.start_work'
      '          THEN '#39#1044#1072#39' '
      '          ELSE '#39#1053#1077#1090#39
      '       END WORK_Without_MARK_DAY,'
      '        CASE '
      '          WHEN marc_time = 1'
      '               AND  time_go_out < PPWUN.start_work'
      '          THEN '#39#1044#1072#39
      '          ELSE '#39#1053#1077#1090#39' '
      '       END WORK_Without_MARK_NIGTH    '
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '              AND uad.id_user = :nom_user'
      '              --AND uad.id_user = 46023 '
      '      LEFT JOIN plan_pers_birzha ppb '
      '             ON ppb.tab_num = PPW.tab_num'
      '               and PPWUN.operating_day = ppb.plan_day'
      '               and PPDU.id_dept = ppb.id_dept_transfer'
      '      LEFT JOIN plan_pers_work_ktu ppwK '
      '             ON ppwK.num_work = PPWUN.num_work_unstop'
      '      INNER JOIN pers_pers_day ppday '
      '              ON PPWUN.operating_day = ppday.plan_day'
      '                 AND PPWUN.tab_num = ppday.tab_num'
      '      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON PPWL.id_work = pidpwt.num_work_res_plan'
      '      LEFT JOIN plan_pers_prodcalend ppc98 '
      '             ON ppc98.num_prod = 98'
      '                AND ppc98.day_id = PPWUN.operating_day'
      '     /* LEFT JOIN plan_pers_prodcalend ppc99 '
      '             ON ppc99.num_prod = 99'
      '                AND ppc99.day_id = PPWUN.operating_day */'
      '      LEFT JOIN plan_pers_works_list PPWL_KTU '
      
        '              ON PPWL_KTU.id_work = ppwK.id_work                ' +
        '            '
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   '
      '      '
      'WHERE 1 = 1 '
      '      --and ppw.tab_num = '#39'RUS77MCO015087'#39
      '      --and ppw.tab_num = '#39'RUS77MCO106033'#39
      ''
      '     &dept_FILTER'
      '     &deptUSER_filter  '
      '     &fio_filter'
      ')'
      ''
      'SELECT * '
      'FROM init_data'
      'WHERE start_work >= go_in'
      '      AND  start_work <= go_out')
    FetchAll = True
    Left = 1189
    Top = 631
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start'
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'nom_user'
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
      end>
    MacroData = <
      item
        Name = 'date_PLN'
        Value = 
          'AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '#13#10'        A' +
          'ND start_work <= To_date( :date_end, '#39'dd.mm.yyyy'#39') + 1.5'#13#10
      end
      item
        Name = 'dept_sotr1'
        Value = ' and id_dept = :dept_id'
      end
      item
        Name = 'date_ZP'
        Value = 
          'AND start_work >= To_date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy' +
          ' hh24:mi:ss'#39') '#13#10'        AND start_work <= To_date( :date_end || ' +
          #39'08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1  '
      end
      item
        Name = 'date_filter'
        Value = 
          'AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39')'#13#10' AND op' +
          'erating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39')'#13#10#13#10#13#10#13#10
      end
      item
        Name = 'date_PLN_1'
        Value = 
          '--AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39') - 1'#13#10' ' +
          '--AND operating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39') + 1'
      end
      item
        Name = 'dept_sotr2'
        Value = 'and id_dept_pers = :dept_id'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUSER_filter'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.full_name) like :FIO'
      end>
  end
  object dsInitData: TOraDataSource
    DataSet = orqryInitData
    Left = 1147
    Top = 632
  end
  object dsInitData2: TOraDataSource
    DataSet = orqryInitData2
    Left = 1263
    Top = 638
  end
  object orqryInitData2: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '   SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           unit_temp,'
      '           etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           1 as valid_work,'
      '           null num_work_unstop,'
      '           num_mission,'
      '           0 marc_time'
      '                         '
      '    FROM  plan_pers_work_ungroup_new '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      
        '    --    AND operating_day >= To_date('#39'01.03.2020'#39', '#39'dd.mm.yyyy' +
        #39')'
      '    --    AND operating_day <= sysdate'
      '    UNION ALL'
      '    SELECT operating_day,'
      '           id_dept,'
      '           null plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           null unit_temp,'
      '           etat,'
      '           null id_workplace,'
      '           null unit_txt,'
      '           0 as valid_work,'
      '           num_work_unstop,'
      '           num_mission,'
      '           marc_time'
      '          '
      '    FROM  pp_unvalid_works_ungroup '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '    '
      
        '      --   AND operating_day >= To_date('#39'01.03.2020'#39', '#39'dd.mm.yyy' +
        'y'#39')'
      '      --  AND operating_day <= sysdate     '
      '    '
      '),'
      ''
      'PPWUN AS ('
      '         Select'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'init_data as ('
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.id_work,'
      '        PPWL.WORK_NAME,'
      '        pidpwt.name_work_zp as PAYMENT_GENERAL,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(PPWUN.DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.HOURS, 2, '#39'0'#39')' +
        '||'#39':'#39'||LPAD(PPWUN.MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.SECONDS, 2, ' +
        #39'0'#39') AS diff_time,'
      '        CASE '
      '            WHEN valid_work = 1 Then '#39#1044#1040#39
      '            WHEN valid_work = 0 Then '#39#1053#1045#1058#39
      '            ELSE '#39' - '#39
      '        END valide_work,'
      '        CASE '
      '            WHEN (PPWUN.start_work >= ppb.time_sent) AND '
      
        '                  (PPWUN.start_work <= ppb.time_confirm_transfer' +
        ')'
      '            Then 1'
      '            ELSE 0'
      '        END birzha,'
      '        CASE '
      '            WHEN PPWUN.num_work_unstop is not NULL  '
      '            Then 1'
      '            ELSE 0'
      '        END KTU,'
      '        CASE '
      '            WHEN PPWUN.start_work < PPWUN.operating_day + 8/24 '
      '            THEN 1'
      '            Else 0'
      '        END start_early,'
      '        CASE '
      
        '            WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 +' +
        ' 1'
      '            THEN 1'
      '            Else 0'
      '        END late_end,    '
      '       CASE '
      
        '          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + ' +
        '1'
      '          THEN operating_day'
      '          ELSE Trunc(PPWUN.start_work)'
      '        END ZP_OP_DAY,'
      '         CASE '
      
        '          WHEN  PPWUN.start_work < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                 AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  ppday.time_go_in < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN ppday.time_go_in'
      
        '          ELSE To_Date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh' +
        '24:mi:ss'#39')'
      '       END go_in,'
      '       CASE '
      
        '          WHEN  (PPWUN.start_work > To_Date(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1) '
      '                AND  ppday.id_shift_check_in in (2, 4)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  (ppday.time_go_out > To_Date(:date_end || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1)'
      '                AND  ppday.id_shift_check_in in (2, 4) '
      '          THEN ppday.time_go_out'
      
        '          ELSE To_Date(:date_end || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh24' +
        ':mi:ss'#39') + 1'
      '       END go_out, '
      
        '       DECODE (ppc98.workday,  '#39#1044#1040#39', '#39#1057#1084#1077#1085#1072' A'#39',  '#39#1053#1045#1058#39', '#39#1057#1084#1077#1085#1072' '#1041 +
        #39',  NULL) workshift,'
      
        '       DECODE (ppday.id_shift_check_in,  1, '#39#1044#1077#1085#1100#39',  2, '#39#1053#1086#1095#1100#39', ' +
        ' 3, '#39#1044#1077#1085#1100#39',  4, '#39#1053#1086#1095#1100#39',  NULL) id_shift_check_in,'
      '       ppwK.id_work as WORK_KTU,'
      '       PPWL_KTU.work_name as KTU_NAME,'
      '       num_mission,'
      '       CASE '
      '          WHEN marc_time = 1'
      '               AND time_go_in > PPWUN.start_work'
      '          THEN 1 '
      '          ELSE 0'
      '       END WORK_Without_MARK_DAY,'
      '        CASE '
      '          WHEN marc_time = 1'
      '               AND  time_go_out < PPWUN.start_work'
      '          THEN 1'
      '          ELSE 0 '
      '       END WORK_Without_MARK_NIGTH    '
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '              AND uad.id_user = :nom_user'
      '            --  AND uad.id_user = 46023 '
      '      LEFT JOIN plan_pers_birzha ppb '
      '             ON ppb.tab_num = PPW.tab_num'
      '               and PPWUN.operating_day = ppb.plan_day'
      '               and PPDU.id_dept = ppb.id_dept_transfer'
      '      LEFT JOIN plan_pers_work_ktu ppwK '
      '             ON ppwK.num_work = PPWUN.num_work_unstop'
      '      INNER JOIN pers_pers_day ppday '
      '              ON PPWUN.operating_day = ppday.plan_day'
      '                 AND PPWUN.tab_num = ppday.tab_num'
      '      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON PPWL.id_work = pidpwt.num_work_res_plan'
      '      LEFT JOIN plan_pers_prodcalend ppc98 '
      '             ON ppc98.num_prod = 98'
      '                AND ppc98.day_id = PPWUN.operating_day'
      '      LEFT JOIN plan_pers_works_list PPWL_KTU '
      
        '              ON PPWL_KTU.id_work = ppwK.id_work                ' +
        '            '
      ''
      '      '
      'WHERE 1 = 1 '
      '      --and ppw.tab_num = '#39'RUS77MCO015087'#39
      '      --and ppw.tab_num = '#39'RUS77MCO106033'#39
      '     -- and ppw.tab_num = '#39'RUS77MCO075881'#39
      ''
      '     &dept_FILTER'
      '     &deptUSER_filter  '
      '     &fio_filter'
      ')'
      ''
      'SELECT operating_day,'
      '       tab_num,'
      '       title_short,'
      '       FULL_NAME,'
      '       DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      '       dept_name_short,'
      '       WORK_UNIT,'
      '       id_work,'
      '       WORK_NAME,'
      '       PAYMENT_GENERAL,'
      '       measure_unit,'
      '       FACT,'
      '       start_work,'
      '       end_work,'
      '       diff_time,'
      '       valide_work,'
      '       CASE'
      '           WHEN birzha = 1 '
      '                THEN '#39#1053#1072' '#1073#1080#1088#1078#1077#39
      '           WHEN KTU = 1'
      '                THEN '#39#1050#1058#1059#39
      '           ELSE '#39#1055#1088#1086#1095#1077#1077#39
      '       END type_work,'
      '       CASE'
      '           WHEN start_early = 1'
      '               THEN '#39#1056#1072#1085#1077#1077' '#1085#1072#1095#1072#1083#1086#39
      '           WHEN late_end = 1'
      '               THEN '#39#1055#1086#1079#1076#1085#1077#1077' '#1086#1082#1086#1085#1095#1072#1085#1080#1077#39
      '           WHEN WORK_Without_MARK_DAY = 1 '
      '               THEN '#39#1056#1072#1073#1086#1090#1072' '#1073#1077#1079' '#1087#1088#1080#1093#1086#1076#1072#39
      '           WHEN WORK_Without_MARK_NIGTH = 1 '
      '               THEN '#39#1056#1072#1073#1086#1090#1072' '#1087#1086#1089#1083#1077' '#1091#1093#1086#1076#1072#39
      '           ELSE '#39#1053#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1080#1085#1090#1077#1088#1074#1072#1083#39'       '
      '       END interval_work,'
      '       ZP_OP_DAY, '
      '       workshift,'
      '       id_shift_check_in,'
      '       WORK_KTU, --id ktu'
      '       KTU_NAME,'
      '       num_mission'
      '      '
      'FROM init_data'
      'WHERE start_work >= go_in'
      '      AND  start_work <= go_out')
    Left = 1293
    Top = 635
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start'
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
      end
      item
        DataType = ftUnknown
        Name = 'nom_user'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
      end>
    MacroData = <
      item
        Name = 'date_PLN'
        Value = 
          'AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '#13#10'        A' +
          'ND start_work <= To_date( :date_end, '#39'dd.mm.yyyy'#39') + 1.5'
      end
      item
        Name = 'date_ZP'
        Value = 
          'AND start_work >= To_date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy' +
          ' hh24:mi:ss'#39') '#13#10'        AND start_work <= To_date( :date_end || ' +
          #39'08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1  '
      end
      item
        Name = 'date_filter'
        Value = 
          'AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39')'#13#10' AND op' +
          'erating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39')'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUSER_filter'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.full_name) like :FIO'
      end>
  end
  object dsGroupResult1: TOraDataSource
    DataSet = orqryGroupResult2
    Left = 1272
    Top = 421
  end
  object orqryGroupResult1: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '   SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           unit_temp,'
      '           etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           1 as valid_work,'
      '           null num_work_unstop,'
      '        --   num_mission,'
      '           0 marc_time'
      '                         '
      '    FROM  plan_pers_work_ungroup_new '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '        '
      '       -- AND start_work >= To_date('#39'01.02.2020'#39', '#39'dd.mm.yyyy'#39') '
      
        '       -- AND start_work <= To_date( '#39'29.02.2020'#39', '#39'dd.mm.yyyy'#39')' +
        ' + 1.5    '
      '    UNION ALL'
      '    SELECT operating_day,'
      '           id_dept,'
      '           null plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           null unit_temp,'
      '           etat,'
      '           null id_workplace,'
      '           null unit_txt,'
      '           0 as valid_work,'
      '           num_work_unstop,'
      '          -- num_mission,'
      '           marc_time'
      '          '
      '    FROM  pp_unvalid_works_ungroup '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '    '
      '    --    AND start_work >= To_date('#39'01.02.2020'#39', '#39'dd.mm.yyyy'#39') '
      
        '    --    AND start_work <= To_date( '#39'29.02.2020'#39', '#39'dd.mm.yyyy'#39')' +
        ' + 1.5        '
      '    '
      '),'
      ''
      'PPWUN AS ('
      '         Select'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'init_data as ('
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.id_work,'
      '        PPWL.WORK_NAME,'
      '        pidpwt.name_work_zp as PAYMENT_GENERAL,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(PPWUN.DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.HOURS, 2, '#39'0'#39')' +
        '||'#39':'#39'||LPAD(PPWUN.MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.SECONDS, 2, ' +
        #39'0'#39') AS diff_time,'
      '        valid_work,'
      '        CASE '
      '            WHEN (PPWUN.start_work >= ppb.time_sent) AND '
      
        '                  (PPWUN.start_work <= ppb.time_confirm_transfer' +
        ')'
      '            Then 1'
      '            ELSE 0'
      '        END birzha,'
      '        CASE '
      '            WHEN PPWUN.num_work_unstop is not NULL  '
      '            Then 1'
      '            ELSE 0'
      '        END KTU,'
      '        CASE '
      '            WHEN PPWUN.start_work < PPWUN.operating_day + 8/24 '
      '            THEN 1'
      '            Else 0'
      '        END start_early,'
      '        CASE '
      
        '            WHEN PPWUN.start_work > PPWUN.operating_day + 8/24 +' +
        ' 1'
      '            THEN 1'
      '            Else 0'
      '        END late_end,    '
      '       CASE '
      
        '          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + ' +
        '1'
      '          THEN operating_day'
      '          ELSE Trunc(PPWUN.start_work)'
      '        END ZP_OP_DAY,'
      '         CASE '
      
        '          WHEN  PPWUN.start_work < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                 AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  ppday.time_go_in < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN ppday.time_go_in'
      
        '          ELSE To_Date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh' +
        '24:mi:ss'#39')'
      '       END go_in,'
      '       CASE '
      
        '          WHEN  (PPWUN.start_work > To_Date(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1) '
      '                AND  ppday.id_shift_check_in in (2, 4)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  (ppday.time_go_out > To_Date(:date_end || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1)'
      '                AND  ppday.id_shift_check_in in (2, 4) '
      '          THEN ppday.time_go_out'
      
        '          ELSE To_Date(:date_end || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh24' +
        ':mi:ss'#39') + 1'
      '       END go_out, '
      
        '       DECODE (ppc98.workday,  '#39#1044#1040#39', '#39#1057#1084#1077#1085#1072' A'#39',  '#39#1053#1045#1058#39', '#39#1057#1084#1077#1085#1072' '#1041 +
        #39',  NULL) workshift,'
      
        '       DECODE (ppday.id_shift_check_in,  1, '#39#1044#1077#1085#1100#39',  2, '#39#1053#1086#1095#1100#39', ' +
        ' 3, '#39#1044#1077#1085#1100#39',  4, '#39#1053#1086#1095#1100#39',  NULL) id_shift_check_in,'
      '       ppwK.id_work as WORK_KTU,'
      '       PPWL_KTU.work_name as KTU_NAME,'
      '       CASE '
      '          WHEN marc_time = 1'
      '               AND time_go_in > PPWUN.start_work'
      '          THEN 1 '
      '          ELSE 0'
      '       END WORK_Without_MARK_DAY,'
      '        CASE '
      '          WHEN marc_time = 1'
      '               AND  time_go_out < PPWUN.start_work'
      '          THEN 1'
      '          ELSE 0 '
      '       END WORK_Without_MARK_NIGTH    '
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '              AND uad.id_user = :nom_user'
      '            --  AND uad.id_user = 46023 '
      '      LEFT JOIN plan_pers_birzha ppb '
      '             ON ppb.tab_num = PPW.tab_num'
      '               and PPWUN.operating_day = ppb.plan_day'
      '               and PPDU.id_dept = ppb.id_dept_transfer'
      '      LEFT JOIN plan_pers_work_ktu ppwK '
      '             ON ppwK.num_work = PPWUN.num_work_unstop'
      '      INNER JOIN pers_pers_day ppday '
      '              ON PPWUN.operating_day = ppday.plan_day'
      '                 AND PPWUN.tab_num = ppday.tab_num'
      '      LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '              ON PPWL.id_work = pidpwt.num_work_res_plan'
      '      LEFT JOIN plan_pers_prodcalend ppc98 '
      '             ON ppc98.num_prod = 98'
      '                AND ppc98.day_id = PPWUN.operating_day'
      '      LEFT JOIN plan_pers_works_list PPWL_KTU '
      
        '              ON PPWL_KTU.id_work = ppwK.id_work                ' +
        '            '
      ''
      '      '
      'WHERE 1 = 1 '
      '      -- and ppw.tab_num = '#39'RUS77MCO015087'#39
      '      -- and ppw.tab_num = '#39'RUS77MCO106033'#39
      '      -- and ppw.tab_num = '#39'RUS77MCO075881'#39
      '     &dept_FILTER'
      '     &deptUSER_filter  '
      '     &fio_filter '
      '),'
      ''
      'tab_interval as ('
      '    SELECT operating_day,'
      '           ZP_OP_DAY, '
      '           tab_num,'
      '           title_short,'
      '           FULL_NAME,'
      '           DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      '           dept_name_short as DEPT_WORK,'
      '           WORK_UNIT,'
      '           id_work,'
      '           WORK_NAME,'
      '           PAYMENT_GENERAL,'
      '           measure_unit,'
      '           FACT,'
      '           start_work,'
      '           end_work,'
      '           diff_time,'
      '           valid_work,'
      '           CASE'
      '               WHEN start_early = 1'
      '                   THEN 1 '
      '               WHEN late_end = 1'
      '                   THEN 2 '
      '               WHEN WORK_Without_MARK_DAY = 1 '
      '                   THEN 3'
      '               WHEN WORK_Without_MARK_NIGTH = 1 '
      '                   THEN 4    '
      '               ELSE 5 -- '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1080#1085#1090#1077#1088#1074#1072#1083'       '
      '           END interval_work,'
      '           CASE'
      '               WHEN birzha = 111'
      '                   THEN 1 '
      '               WHEN KTU = 1'
      '                   THEN 222     '
      '               ELSE 333 -- '#1087#1088#1086#1095#1077#1077'       '
      '           END type_work,'
      '           workshift,'
      '           id_shift_check_in'
      '          '
      '    FROM init_data'
      '    WHERE start_work >= go_in'
      '          AND  start_work <= go_out'
      '),'
      ''
      'tab_result as ('
      'Select   '#39'c '#39'||to_char(MIN(operating_day), '#39'dd.mm.yyyy'#39')'
      '         ||'#39' '#1087#1086' '#39'|| to_char(MAX(ZP_OP_DAY), '#39'dd.mm.yyyy'#39') as DT,'
      '         tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         id_work, '
      '         work_name,'
      '         measure_unit,'
      '         work_unit,'
      '         PAYMENT_GENERAL,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 111'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_birzha,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 222'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_KTU,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 333'
      '                   AND valid_work = 1'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_Other,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work not in (111, 222) '
      '                   AND valid_work = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_Unvalid,   '
      '        sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND type_work = 111'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_birzha,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND type_work = 222'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_KTU,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND valid_work = 1'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_Other,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   and type_work not IN (111, 222) '
      '                   AND valid_work = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_Unvalid_work,   '
      '       sum( CASE '
      '              WHEN interval_work = 3 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) work_without_mark_day,'
      '        sum( CASE '
      '              WHEN interval_work = 4 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) work_without_mark_nigth,'
      '         sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND type_work = 111 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_birzha,'
      '        sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND  type_work = 222'
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_KTU,'
      '         sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND  type_work = 333'
      '                   AND valid_work = 1'
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_Other,'
      '          sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND valid_work = 0'
      '                   and type_work NOT IN (111, 222)'
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_Unvalid           '
      '       '
      'FROM tab_interval '
      'group by to_char(ZP_OP_DAY, '#39'MM'#39'),'
      '         to_char(operating_day, '#39'MM'#39'),'
      '         tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         id_work, '
      '         work_name,'
      '         measure_unit,'
      '         work_unit,'
      '         PAYMENT_GENERAL --'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1047#1055' '#1086#1073#1097#1080#1081
      ')'
      ''
      'Select   DT,'
      '         tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         id_work, '
      '         work_name,'
      '         measure_unit,'
      '         work_unit,'
      '         PAYMENT_GENERAL,'
      '         early_birzha,'
      '         early_KTU,'
      '         early_Other,'
      '         early_Unvalid,   '
      '         late_birzha,'
      '         late_KTU,'
      '         late_Other,'
      '         late_Unvalid_work,   '
      '         work_without_mark_day,'
      '         work_without_mark_nigth,'
      '         norm_work_birzha,'
      '         norm_work_KTU,'
      '         norm_work_Other,'
      '         norm_work_Unvalid,'
      '         ( early_Other'
      '             + late_Other'
      '             + norm_work_Other ) as sum_valid,'
      '         (late_Unvalid_work '
      '             + norm_work_Unvalid                 '
      '             + work_without_mark_day'
      '             + work_without_mark_nigth'
      '             + early_Unvalid '
      '             + early_birzha'
      '             + early_KTU'
      '             + late_birzha'
      '             + late_KTU'
      '             + norm_work_birzha'
      '             + norm_work_KTU) as sum_unvalid'
      'From tab_result')
    Left = 1274
    Top = 431
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start'
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
      end
      item
        DataType = ftUnknown
        Name = 'nom_user'
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
      end>
    MacroData = <
      item
        Name = 'date_PLN'
        Value = 
          'AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '#13#10'        A' +
          'ND start_work <= To_date( :date_end, '#39'dd.mm.yyyy'#39') + 1.5'
      end
      item
        Name = 'date_ZP'
        Value = 
          'AND start_work >= To_date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy' +
          ' hh24:mi:ss'#39')'#13#10'        AND start_work <= To_date( :date_end || '#39 +
          '08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1 '
      end
      item
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39')'#13#10' AND o' +
          'perating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39')'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUSER_filter'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.full_name) like :FIO'
      end>
  end
  object dsGroupResult2: TOraDataSource
    DataSet = orqryGroupResult2
    Left = 29
    Top = 224
  end
  object orqryGroupResult2: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '   SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           unit_temp,'
      '           etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           1 as valid_work,'
      '           null num_work_unstop,'
      '           0 marc_time'
      '                         '
      '    FROM  plan_pers_work_ungroup_new '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '        '
      '     --  AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '
      
        '     --  AND start_work <= To_date(:date_end, '#39'dd.mm.yyyy'#39') + 1.' +
        '5    '
      '    UNION ALL'
      '    SELECT operating_day,'
      '           id_dept,'
      '           null plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           null unit_temp,'
      '           etat,'
      '           null id_workplace,'
      '           null unit_txt,'
      '           0 as valid_work,'
      '           num_work_unstop,'
      '          -- num_mission,'
      '           marc_time'
      '          '
      '    FROM  pp_unvalid_works_ungroup '
      '    WHERE 1 = 1'
      '          &date_PLN -- '#1086#1076#1085#1086#1074#1088#1077#1084#1077#1085#1085#1086' '#1089#1088#1072#1073#1072#1090#1099#1074#1072#1085#1080#1077' '#1089' date_pln'
      '          &date_ZP --'#1087#1086' '#1079#1087' '#1086#1073#1097#1080#1081
      '          &date_filter -- '#1087#1086' PLN ('#1089#1084#1077#1085#1072' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072')'
      '      '
      '     --  AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '
      
        '     --  AND start_work <= To_date(:date_end, '#39'dd.mm.yyyy'#39') + 1.' +
        '5        '
      '    '
      '),'
      ''
      'PPWUN AS ('
      '         Select'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'init_data as ('
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.id_work,'
      '        PPWL.WORK_NAME,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(PPWUN.DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.HOURS, 2, '#39'0'#39')' +
        '||'#39':'#39'||LPAD(PPWUN.MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(PPWUN.SECONDS, 2, ' +
        #39'0'#39') AS diff_time,'
      '        valid_work,'
      '        CASE '
      '            WHEN (PPWUN.start_work >= ppb.time_sent) AND '
      
        '                  (PPWUN.start_work <= ppb.time_confirm_transfer' +
        ')'
      '            Then 1'
      '            ELSE 0'
      '        END birzha,'
      '        CASE '
      '            WHEN PPWUN.num_work_unstop is not NULL  '
      '            Then 1'
      '            ELSE 0'
      '        END KTU,'
      '        CASE'
      
        '            --  WHEN PPWUN.start_work < PPWUN.operating_day + 8/' +
        '24'
      
        '            WHEN PPWUN.start_work < TO_DATE(:date_start || '#39'08:0' +
        '0:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') '
      '            THEN 1'
      '            Else 0'
      '        END start_early,'
      '        CASE '
      
        '           -- WHEN PPWUN.start_work > PPWUN.operating_day + 8/24' +
        ' + 1'
      
        '            WHEN PPWUN.start_work > TO_DATE(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1'
      '            THEN 1'
      '            Else 0'
      '        END late_end,    '
      '       CASE '
      
        '          WHEN PPWUN.start_work <= PPWUN.operating_day + 8/24 + ' +
        '1'
      '          THEN operating_day'
      '          ELSE Trunc(PPWUN.start_work)'
      '        END ZP_OP_DAY,'
      '         CASE '
      
        '          WHEN  PPWUN.start_work < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                 AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  ppday.time_go_in < To_Date(:date_start || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39')'
      '                AND  ppday.id_shift_check_in in (1, 3)'
      '          THEN ppday.time_go_in'
      
        '          ELSE To_Date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh' +
        '24:mi:ss'#39')'
      '       END go_in,'
      '       CASE '
      
        '          WHEN  (PPWUN.start_work > To_Date(:date_end || '#39'08:00:' +
        '00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1) '
      '                AND  ppday.id_shift_check_in in (2, 4)'
      '          THEN PPWUN.start_work'
      
        '          WHEN  (ppday.time_go_out > To_Date(:date_end || '#39'08:00' +
        ':00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1)'
      '                AND  ppday.id_shift_check_in in (2, 4) '
      '          THEN ppday.time_go_out'
      
        '          ELSE To_Date(:date_end || '#39'08:00:00'#39', '#39'dd.mm.yyyy hh24' +
        ':mi:ss'#39') + 1'
      '       END go_out, '
      
        '       DECODE (ppc98.workday,  '#39#1044#1040#39', '#39#1057#1084#1077#1085#1072' A'#39',  '#39#1053#1045#1058#39', '#39#1057#1084#1077#1085#1072' '#1041 +
        #39',  NULL) workshift,'
      
        '       DECODE (ppday.id_shift_check_in,  1, '#39#1044#1077#1085#1100#39',  2, '#39#1053#1086#1095#1100#39', ' +
        ' 3, '#39#1044#1077#1085#1100#39',  4, '#39#1053#1086#1095#1100#39',  NULL) id_shift_check_in,'
      '       ppwK.id_work as WORK_KTU,'
      '       PPWL_KTU.work_name as KTU_NAME,'
      '       CASE '
      '          WHEN marc_time = 1'
      '               AND time_go_in > PPWUN.start_work'
      '          THEN 1 '
      '          ELSE 0'
      '       END WORK_Without_MARK_DAY,'
      '        CASE '
      '          WHEN marc_time = 1'
      '               AND  time_go_out < PPWUN.start_work'
      '          THEN 1'
      '          ELSE 0 '
      '       END WORK_Without_MARK_NIGTH,'
      '       PPWUN.user_demande    '
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '              ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '              AND uad.id_user = :nom_user'
      '           --   AND uad.id_user = 46023 '
      '      LEFT JOIN plan_pers_birzha ppb '
      '             ON ppb.tab_num = PPW.tab_num'
      '               and PPWUN.operating_day = ppb.plan_day'
      '               and PPDU.id_dept = ppb.id_dept_transfer'
      '      LEFT JOIN plan_pers_work_ktu ppwK '
      '             ON ppwK.num_work = PPWUN.num_work_unstop'
      '      INNER JOIN pers_pers_day ppday '
      '              ON PPWUN.operating_day = ppday.plan_day'
      '                 AND PPWUN.tab_num = ppday.tab_num'
      '    --  LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '    --          ON PPWL.id_work = pidpwt.num_work_res_plan'
      '      LEFT JOIN plan_pers_prodcalend ppc98 '
      '             ON ppc98.num_prod = 98'
      '                AND ppc98.day_id = PPWUN.operating_day'
      '      LEFT JOIN plan_pers_works_list PPWL_KTU '
      
        '              ON PPWL_KTU.id_work = ppwK.id_work                ' +
        '            '
      ''
      '      '
      'WHERE 1 = 1 '
      '      -- and ppw.tab_num = '#39'RUS77MCO015087'#39
      '      -- and ppw.tab_num = '#39'RUS77MCO106033'#39
      '      -- and ppw.tab_num = '#39'RUS77MCO075881'#39
      '     &dept_FILTER'
      '     &deptUSER_filter  '
      '     &fio_filter '
      '     '
      '),'
      ''
      'tab_interval as ('
      '    SELECT operating_day,'
      '           ZP_OP_DAY, '
      '           tab_num,'
      '           title_short,'
      '           FULL_NAME,'
      '           DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
      '           dept_name_short as DEPT_WORK,'
      '           WORK_UNIT,'
      '           id_work,'
      '           WORK_NAME,'
      '           measure_unit,'
      '           FACT,'
      '           start_work,'
      '           end_work,'
      '           diff_time,'
      '           valid_work,'
      '           '
      '           CASE'
      '               WHEN start_early = 1'
      '                   THEN 1 '
      '               WHEN late_end = 1'
      '                   THEN 2 '
      '               WHEN WORK_Without_MARK_DAY = 1 '
      '                   THEN 3'
      '               WHEN WORK_Without_MARK_NIGTH = 1 '
      '                   THEN 4    '
      '               ELSE 5 -- '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1080#1085#1090#1077#1088#1074#1072#1083'       '
      '           END interval_work,'
      '           CASE'
      '               WHEN birzha = 111'
      '                   THEN 1 '
      '               WHEN KTU = 1'
      '                   THEN 222     '
      '               ELSE 333 -- '#1087#1088#1086#1095#1077#1077'       '
      '           END type_work,'
      '           workshift,'
      '           id_shift_check_in,'
      '           &op_day_PLN'
      '           &op_day_ZP'
      '           &op_day_ZP1'
      '           user_demande'
      '    FROM init_data'
      '    WHERE start_work >= go_in'
      '          AND  start_work <= go_out'
      '),'
      ''
      'tab_result as ('
      'Select   --'#39'c '#39'||to_char(MIN(operating_day), '#39'dd.mm.yyyy'#39')'
      
        '         --||'#39' '#1087#1086' '#39'|| to_char(MAX(ZP_OP_DAY), '#39'dd.mm.yyyy'#39') as D' +
        'T,'
      '         tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         id_work, '
      '         work_name,'
      '         measure_unit,'
      '         work_unit,'
      '         '
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 111'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_birzha,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 222'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_KTU,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work = 333'
      '                   AND valid_work = 1'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_Other,'
      '       sum( CASE '
      '              WHEN interval_work = 1 '
      '                   AND type_work not in (111, 222) '
      '                   AND valid_work = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) early_Unvalid,   '
      '        sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND type_work = 111'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_birzha,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND type_work = 222'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_KTU,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   AND valid_work = 1'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_Other,'
      '       sum( CASE '
      '              WHEN interval_work = 2 '
      '                   and type_work not IN (111, 222) '
      '                   AND valid_work = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) late_Unvalid_work,   '
      '       sum( CASE '
      '              WHEN interval_work = 3 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) work_without_mark_day,'
      '        sum( CASE '
      '              WHEN interval_work = 4 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) work_without_mark_nigth,'
      '         sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND type_work = 111'
      '                   and op_day = 0 '
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_birzha,'
      '        sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND  type_work = 222'
      '                   and op_day = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_KTU,'
      '         sum( CASE '
      '              WHEN interval_work = 5 '
      '                   AND  type_work = 333'
      '                   AND valid_work = 1'
      '                   and op_day = 0'
      '              THEN fact'
      '              ELSE 0'
      '          END ) norm_work_Other,'
      '          sum( CASE '
      '               WHEN interval_work = 5 '
      '                   AND valid_work = 0'
      '                   and type_work NOT IN (111, 222)'
      '                   and op_day = 0'
      '               THEN fact'
      '               ELSE 0'
      '          END ) norm_work_Unvalid,'
      '          sum( CASE '
      '               WHEN valid_work = 1'
      '                   and op_day = 1'
      '               THEN fact'
      '               ELSE 0'
      '          END ) before_OP_start_day_valid,'
      '          sum( CASE '
      '               WHEN valid_work = 0'
      '                   and op_day = 1'
      '               THEN fact'
      '               ELSE 0'
      '          END ) before_OP_end_day_unvalid,'
      '          sum( CASE '
      '               WHEN valid_work = 1'
      '                   and op_day = 2'
      '               THEN fact'
      '               ELSE 0'
      '          END ) after_OP_start_day_valid,'
      '          sum( CASE '
      '               WHEN valid_work = 0'
      '                   and op_day = 2'
      '               THEN fact'
      '               ELSE 0'
      '          END ) after_OP_end_day_unvalid,'
      '          user_demande           '
      '       '
      'FROM tab_interval '
      'GROUP BY --to_char(ZP_OP_DAY, '#39'MM'#39'),'
      '         --to_char(operating_day, '#39'MM'#39'),'
      '         tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK,'
      '         id_work, '
      '         work_name,'
      '         measure_unit,'
      '         work_unit,'
      '         user_demande '
      '),'
      ''
      'tab_pers_itog_zp as ('
      '    SELECT id_lm, tb, sum(cnt) as CNZ_ZP, sum(money) as money_ZP'
      '    FROM plan_pers_zp_out_itog a'
      '    WHERE oper_date >= To_date(:date_start, '#39'dd.mm.yyyy'#39')'
      '         AND oper_date <= To_date(:date_end, '#39'dd.mm.yyyy'#39')'
      '    GROUP BY id_lm, tb'
      '),'
      ''
      'RESULT_TABLE AS ('
      '    SELECT  -- t.DT,'
      '             t.tab_num, '
      '             t.title_short, '
      '             t.full_name, '
      '             t.dept_user,'
      '             t.DEPT_WORK,'
      '             t.id_work, '
      '             t.work_name,'
      '             t.measure_unit,'
      '             t.work_unit,'
      
        '             pidpwt.name_work_zp as PAYMENT_GENERAL, --'#1085#1072#1080#1084#1077#1085#1086#1074#1072 +
        #1085#1080#1077' '#1047#1055' '#1086#1073#1097#1080#1081
      '             t.early_birzha,'
      '             t.early_KTU,'
      '             t.early_Other,'
      '             t.early_Unvalid,   '
      '             t.late_birzha,'
      '             t.late_KTU,'
      '             t.late_Other,'
      '             t.late_Unvalid_work,   '
      '             t.work_without_mark_day,'
      '             t.work_without_mark_nigth,'
      '             t.norm_work_birzha,'
      '             t.norm_work_KTU,'
      '             t.norm_work_Other,'
      '             t.norm_work_Unvalid,'
      '             --t.user_demande,'
      '             ( early_Other'
      '                 + late_Other'
      '                 + norm_work_Other ) as sum_valid,'
      '             ( late_Unvalid_work '
      '                 + norm_work_Unvalid                 '
      '                 + work_without_mark_day'
      '                 + work_without_mark_nigth'
      '                 + early_Unvalid '
      '                 + early_birzha'
      '                 + early_KTU'
      '                 + late_birzha'
      '                 + late_KTU'
      '                 + norm_work_birzha'
      '                 + norm_work_KTU) as sum_unvalid,'
      '                 PPN.normo,'
      '                 PPN.money,'
      '            (   norm_work_Unvalid                 '
      '                 + norm_work_birzha'
      '                 + norm_work_KTU'
      '                 + norm_work_Other'
      '                 + before_OP_start_day_valid'
      '                 + before_OP_end_day_unvalid'
      '                 + after_OP_start_day_valid'
      '                 + after_OP_end_day_unvalid'
      '                 + work_without_mark_day'
      '                 + work_without_mark_nigth) as NormWork,'
      '         /*    (   norm_work_Unvalid                 '
      '                 + norm_work_birzha'
      '                 + norm_work_KTU'
      '                 + norm_work_Other'
      '                 + before_OP_start_day_valid'
      '                 + before_OP_end_day_unvalid'
      '                 + after_OP_start_day_valid'
      '                 + after_OP_end_day_unvalid'
      '                 + work_without_mark_day'
      
        '                 + work_without_mark_nigth) * PPN.money as Money' +
        'ForNormWork, */'
      '            ( late_Unvalid_work'
      '                 + late_Other'
      '                 + late_birzha'
      '                 + late_KTU                '
      '                 + early_Unvalid '
      '                 + early_birzha'
      '                 + early_KTU'
      '                 + early_Other'
      '              ) AS OtherWork, -- '#1085#1077' '#1085#1091#1078#1085#1086
      '            /* ( late_Unvalid_work'
      '                 + late_Other'
      '                 + late_birzha'
      '                 + late_KTU                '
      '                 + early_Unvalid '
      '                 + early_birzha'
      '                 + early_KTU'
      '                 + early_Other'
      '              ) * PPN.money as MoneyForOtherWork, */'
      '             ( early_Other'
      '                  + early_Unvalid '
      '                  + early_birzha'
      '                  + early_KTU'
      '                  + norm_work_Other '
      '                  + norm_work_Unvalid'
      '                  + norm_work_birzha'
      '                  + norm_work_KTU '
      '                  + late_Other'
      '                  + late_Unvalid_work '
      '                  + late_birzha'
      '                  + late_KTU               '
      '                  + work_without_mark_day'
      '                  + work_without_mark_nigth'
      '                  + before_OP_start_day_valid'
      '                  + before_OP_end_day_unvalid'
      '                  + after_OP_start_day_valid'
      '                  + after_OP_end_day_unvalid'
      '               ) AS AllWork, -- '#1074#1089#1077' '#1088#1072#1073#1086#1090#1099
      '            /* ( early_Other'
      '                  + early_Unvalid '
      '                  + early_birzha'
      '                  + early_KTU'
      '                  + norm_work_Other '
      '                  + norm_work_Unvalid'
      '                  + norm_work_birzha'
      '                  + norm_work_KTU '
      '                  + late_Other'
      '                  + late_Unvalid_work '
      '                  + late_birzha'
      '                  + late_KTU               '
      '                  + work_without_mark_day'
      '                  + work_without_mark_nigth'
      '                  + before_OP_start_day_valid'
      '                  + before_OP_end_day_unvalid'
      '                  + after_OP_start_day_valid'
      '                  + after_OP_end_day_unvalid'
      '               ) * PPN.money as MoneyForAllWork, */'
      '               gen_pay.CNZ_ZP, -- '#1088#1072#1089#1095#1077#1090' '#1079#1087' '#1086#1073#1097#1080#1081' - '#1082#1086#1083'-'#1074#1086
      '               gen_pay.MONEY_ZP, --'#1088#1072#1089#1095#1077#1090' '#1079#1087' '#1086#1073#1097#1080#1081' - '#1089#1091#1084#1084#1072
      '               gen_pay.tb,'
      '               before_OP_start_day_valid,'
      '               before_OP_end_day_unvalid,'
      '               after_OP_start_day_valid,'
      '               after_OP_end_day_unvalid,'
      '              ( early_Other'
      '                 + norm_work_Other '
      '                 + late_Other'
      '              )  as PLN_CNT, -- '#1074#1089#1077' '#1088#1072#1073#1086#1090#1099
      '           /*   ( early_Other'
      '                 + norm_work_Other '
      '                 + late_Other'
      '              )  * PPN.money as PLN_AMOUNT_MONEY, */'
      '              ( early_Unvalid '
      '                  + work_without_mark_day'
      '                  + work_without_mark_nigth'
      '                  + norm_work_Unvalid'
      '                  + norm_work_birzha'
      '                  + norm_work_KTU '
      '                  - early_Other'
      '                  - late_Other'
      '                  + before_OP_start_day_valid'
      '                  + before_OP_end_day_unvalid'
      '                  + after_OP_start_day_valid'
      '                  + after_OP_end_day_unvalid'
      '               ) as difference_CNT'
      '          /*     ( early_Unvalid '
      '                  + work_without_mark_day'
      '                  + work_without_mark_nigth'
      '                  + norm_work_Unvalid'
      '                  + norm_work_birzha'
      '                  + norm_work_KTU '
      '                  - early_Other'
      '                  - late_Other'
      '                  + before_OP_start_day_valid'
      '                  + before_OP_end_day_unvalid'
      '                  + after_OP_start_day_valid'
      '                  + after_OP_end_day_unvalid'
      '               ) * PPN.money as difference_CNT_AMOUNT_MONEY */'
      '                 '
      '    FROM tab_result t'
      '         LEFT JOIN plan_pers_normo PPN'
      '                  ON PPN.id_work = t.id_work'
      '         LEFT JOIN pers_itog_dt_plan_work_temp pidpwt'
      '                  ON t.id_work = pidpwt.num_work_res_plan  '
      '         LEFT JOIN tab_pers_itog_zp gen_pay'
      '                   ON gen_pay.tb = pidpwt.work_zp_all '
      '                      AND gen_pay.id_lm = t.user_demande'
      ' --ORDER BY gen_pay.tb'
      ')'
      ''
      'SELECT  tab_num, '
      '        title_short, '
      '        full_name, '
      '        dept_user,'
      '        DEPT_WORK,'
      '        id_work, '
      '        work_name,'
      '        measure_unit,'
      '        work_unit,'
      '        PAYMENT_GENERAL, --'#1085#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1047#1055' '#1086#1073#1097#1080#1081
      '        early_birzha,'
      '        early_KTU,'
      '        early_Other,'
      '        early_Unvalid,   '
      '        late_birzha,'
      '        late_KTU,'
      '        late_Other,'
      '        late_Unvalid_work,   '
      '        work_without_mark_day,'
      '        work_without_mark_nigth,'
      '        norm_work_birzha,'
      '        norm_work_KTU,'
      '        norm_work_Other,'
      '        norm_work_Unvalid,'
      '        sum_valid,'
      '        sum_unvalid,'
      '        normo,'
      '        money,'
      '        NormWork,'
      '       (NormWork * money) as MoneyForNormWork,'
      '        OtherWork, -- '#1085#1077' '#1085#1091#1078#1085#1086
      '       (OtherWork * money) as MoneyForOtherWork, -- '#1085#1077' '#1085#1091#1078#1085#1086
      '        AllWork, -- '#1074#1089#1077' '#1088#1072#1073#1086#1090#1099
      '       (AllWork * money) as MoneyForAllWork, -- '#1074#1089#1077' '#1088#1072#1073#1086#1090#1099' '
      '        CNZ_ZP, -- '#1088#1072#1089#1095#1077#1090' '#1079#1087' '#1086#1073#1097#1080#1081' - '#1082#1086#1083'-'#1074#1086
      '        MONEY_ZP, --'#1088#1072#1089#1095#1077#1090' '#1079#1087' '#1086#1073#1097#1080#1081' - '#1089#1091#1084#1084#1072
      '        TB, -- '#1080#1079' '#1088#1072#1089#1095#1077#1090'_'#1079#1087' '#1086#1073#1097#1080#1081
      '        before_OP_start_day_valid,'
      '        before_OP_end_day_unvalid,'
      '        after_OP_start_day_valid,'
      '        after_OP_end_day_unvalid,'
      '        PLN_CNT,'
      '        (PLN_CNT * money) as PLN_AMOUNT_MONEY,'
      '        difference_CNT,'
      '        (difference_CNT * money) as difference_CNT_AMOUNT_MONEY,'
      '        (CNZ_ZP - NORMWORK) as DIFF_CNT_ZP_GENERAL,'
      
        '        (CNZ_ZP - NORMWORK) * money as  DIFF_AMOUNT_MONEY_ZP_GEN' +
        'ERAL'
      'FROM RESULT_TABLE')
    FetchAll = True
    Active = True
    Left = 31
    Top = 239
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'date_start'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'date_end'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'nom_user'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'dept_id'
        Value = Null
      end
      item
        DataType = ftUnknown
        Name = 'FIO'
        Value = Null
      end>
    MacroData = <
      item
        Name = 'date_PLN'
        Value = 
          'AND start_work >= To_date(:date_start, '#39'dd.mm.yyyy'#39') '#13#10'        A' +
          'ND start_work <= To_date( :date_end, '#39'dd.mm.yyyy'#39') + 1.5'
      end
      item
        Name = 'date_ZP'
        Value = 
          'AND start_work >= To_date(:date_start || '#39'08:00:00'#39', '#39'dd.mm.yyyy' +
          ' hh24:mi:ss'#39')'#13#10'        AND start_work <= To_date( :date_end || '#39 +
          '08:00:00'#39', '#39'dd.mm.yyyy hh24:mi:ss'#39') + 1 '
      end
      item
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= To_DATE(:date_start, '#39'dd.mm.yyyy'#39')'#13#10' AND o' +
          'perating_day <= TO_DATE(:date_end, '#39'dd.mm.yyyy'#39')'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUSER_filter'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.full_name) like :FIO'
      end
      item
        Name = 'op_day_PLN'
        Value = 
          'CASE '#13#10'               WHEN operating_day < To_date(:date_start, ' +
          #39'dd.mm.yyyy'#39')'#13#10'                    THEN 1 --'#1087#1088#1077#1076#1099#1076#1091#1097#1080#1081' '#1087#1077#1088#1080#1086#1076' ('#1076 +
          #1077#1085#1100' '#1076#1086' '#1085#1072#1095#1072#1083#1072')'#13#10'               WHEN operating_day > To_date(:dat' +
          'e_end, '#39'dd.mm.yyyy'#39')'#13#10'                    THEN 2 -- '#1089#1083#1077#1076#1091#1102#1097#1080#1081' '#1087#1077 +
          #1088#1080#1086#1076' ('#1076#1077#1085#1100' '#1087#1086#1089#1083#1077' '#1086#1082#1086#1085#1095#1072#1085#1080#1103')'#13#10'               ELSE 0 -- '#1086#1087#1077#1088#1072#1094#1080#1086#1085#1085 +
          #1099#1081' '#1076#1077#1085#1100#13#10' END op_day,'#13#10#13#10
        Active = False
      end
      item
        Name = 'op_day_ZP'
        Value = '0 op_day,'
      end
      item
        Name = 'op_day_ZP1'
        Value = '0 op_day,'
        Active = False
      end>
  end
end
