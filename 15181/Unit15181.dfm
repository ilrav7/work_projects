object Form15181: TForm15181
  Left = 207
  Top = 91
  Width = 1521
  Height = 857
  Caption = #1056#1077#1081#1090#1080#1085#1075'  Form15181'
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
    Width = 1505
    Height = 819
    ActivePage = cxTabSheet2
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    LookAndFeel.SkinName = 'Blue'
    ParentFont = False
    TabOrder = 0
    Visible = False
    ClientRectBottom = 813
    ClientRectLeft = 3
    ClientRectRight = 1499
    ClientRectTop = 26
    object cxTabSheet1: TcxTabSheet
      Caption = #1056#1077#1081#1090#1080#1085#1075
      ImageIndex = 1
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 1496
        Height = 787
        Align = alClient
        BevelOuter = bvNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentBackground = False
        ParentFont = False
        TabOrder = 0
        object Panel8: TPanel
          Left = 0
          Top = 0
          Width = 1496
          Height = 80
          Align = alTop
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 0
          object Shape2: TShape
            Left = 96
            Top = 2
            Width = 161
            Height = 75
            ParentShowHint = False
            Pen.Color = clRed
            Pen.Mode = pmMask
            ShowHint = False
          end
          object cxDateEdit3: TcxDateEdit
            Left = 124
            Top = 25
            Style.Color = 16446703
            TabOrder = 0
            Width = 121
          end
          object cxDateEdit4: TcxDateEdit
            Left = 124
            Top = 50
            Style.Color = 16446703
            TabOrder = 1
            Width = 121
          end
          object cxLabel7: TcxLabel
            Left = 124
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
          object cxLabel8: TcxLabel
            Left = 104
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
          object cxLabel9: TcxLabel
            Left = 100
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
          object ResetButtonRating: TcxButton
            Left = 8
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
            TabOrder = 5
            OnClick = ResetButtonRatingClick
            LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel10: TcxLabel
            Left = 272
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
          object cxComboBox3: TcxComboBox
            Left = 272
            Top = 25
            Properties.DropDownListStyle = lsFixedList
            Style.Color = 16446703
            TabOrder = 7
            Width = 121
          end
          object cxTextEdit2: TcxTextEdit
            Left = 416
            Top = 25
            Style.Color = 16446703
            TabOrder = 8
            Width = 121
          end
          object cxLabel12: TcxLabel
            Left = 416
            Top = 5
            Caption = #1060#1048#1054
            Style.TextStyle = [fsBold]
          end
          object Panel9: TPanel
            Left = 1182
            Top = 0
            Width = 314
            Height = 80
            Align = alRight
            BevelOuter = bvNone
            Color = clGradientInactiveCaption
            ParentBackground = False
            TabOrder = 10
            object SearchButtonRating: TcxButton
              Left = 264
              Top = 5
              Width = 45
              Height = 43
              TabOrder = 0
              OnClick = SearchButtonRatingClick
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
          object CheckBox2: TCheckBox
            Left = 280
            Top = 47
            Width = 137
            Height = 33
            Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
            Color = clGradientInactiveCaption
            ParentColor = False
            TabOrder = 11
            WordWrap = True
          end
        end
        object cxGrid3: TcxGrid
          Left = 0
          Top = 80
          Width = 1496
          Height = 666
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 1
          LookAndFeel.SkinName = 'Blue'
          object cxGrid3DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            DataController.DataSource = dsRaiting1
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid3DBTableView1TAB_NUM: TcxGridDBColumn
              Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
              DataBinding.FieldName = 'TAB_NUM'
              Styles.Header = cxStyle1
              Width = 120
            end
            object cxGrid3DBTableView1TITLE_SHORT: TcxGridDBColumn
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'TITLE_SHORT'
              Styles.Header = cxStyle1
              Width = 150
            end
            object cxGrid3DBTableView1FULL_NAME: TcxGridDBColumn
              Caption = #1060'.'#1048'.'#1054'.'
              DataBinding.FieldName = 'FULL_NAME'
              Styles.Header = cxStyle1
              Width = 170
            end
            object cxGrid3DBTableView1DEPT_USER: TcxGridDBColumn
              Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
              DataBinding.FieldName = 'DEPT_USER'
              Styles.Header = cxStyle1
              Width = 103
            end
            object cxGrid3DBTableView1PERFORMANCE: TcxGridDBColumn
              Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
              DataBinding.FieldName = 'PERFORMANCE'
              Styles.Header = cxStyle1
              Width = 141
            end
          end
          object cxGrid3Level1: TcxGridLevel
            GridView = cxGrid3DBTableView1
          end
        end
        object Panel10: TPanel
          Left = 0
          Top = 746
          Width = 1496
          Height = 41
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 2
          object ExportButtonRating: TcxButton
            Left = 8
            Top = 4
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
            OnClick = ExportButtonRatingClick
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
    end
    object cxTabSheet2: TcxTabSheet
      Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
      ImageIndex = 0
      object cxPageControl2: TcxPageControl
        Left = 0
        Top = 0
        Width = 1496
        Height = 787
        ActivePage = cxTabSheet11
        Align = alClient
        Color = clGradientInactiveCaption
        LookAndFeel.SkinName = 'Black'
        ParentColor = False
        TabOrder = 0
        ClientRectBottom = 782
        ClientRectLeft = 2
        ClientRectRight = 1491
        ClientRectTop = 25
        object cxTabSheet11: TcxTabSheet
          Caption = #1056#1077#1079#1091#1083#1100#1090#1080#1088#1091#1102#1097#1080#1081' '#1086#1090#1095#1077#1090
          ImageIndex = 2
          object Panel16: TPanel
            Left = 0
            Top = 0
            Width = 1489
            Height = 757
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object Panel17: TPanel
              Left = 0
              Top = 0
              Width = 1489
              Height = 81
              Align = alTop
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              Ctl3D = False
              ParentBackground = False
              ParentCtl3D = False
              TabOrder = 0
              object Shape4: TShape
                Left = 96
                Top = 2
                Width = 161
                Height = 75
                ParentShowHint = False
                Pen.Color = clRed
                Pen.Mode = pmMask
                ShowHint = False
              end
              object cxComboBox6: TcxComboBox
                Left = 416
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 0
                Width = 121
              end
              object cxDateEdit7: TcxDateEdit
                Left = 124
                Top = 25
                Style.Color = 16446703
                TabOrder = 1
                Width = 121
              end
              object cxDateEdit8: TcxDateEdit
                Left = 124
                Top = 50
                Style.Color = 16446703
                TabOrder = 2
                Width = 121
              end
              object cxLabel18: TcxLabel
                Left = 104
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
              object cxLabel19: TcxLabel
                Left = 100
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
              object cxLabel20: TcxLabel
                Left = 124
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
              object cxLabel21: TcxLabel
                Left = 416
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
              object Panel18: TPanel
                Left = 1175
                Top = 0
                Width = 314
                Height = 81
                Align = alRight
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                ParentBackground = False
                TabOrder = 7
                object btnSearchResult: TcxButton
                  Left = 264
                  Top = 5
                  Width = 45
                  Height = 43
                  TabOrder = 0
                  OnClick = btnSearchResultClick
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
              object btnResetResult: TcxButton
                Left = 8
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
                TabOrder = 8
                OnClick = btnResetResultClick
                LookAndFeel.SkinName = 'Blue'
              end
              object cxTextEdit4: TcxTextEdit
                Left = 560
                Top = 24
                Style.Color = 16446703
                TabOrder = 9
                Width = 121
              end
              object cxLabel23: TcxLabel
                Left = 560
                Top = 5
                Caption = #1060#1048#1054
                Style.TextStyle = [fsBold]
              end
              object CheckBox4: TCheckBox
                Left = 424
                Top = 48
                Width = 137
                Height = 33
                Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
                Color = clGradientInactiveCaption
                ParentColor = False
                TabOrder = 11
                WordWrap = True
              end
              object cxRdGrpResult: TcxRadioGroup
                Left = 271
                Top = 8
                Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Properties.Items = <
                  item
                    Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
                  end
                  item
                    Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
                  end>
                ItemIndex = 1
                Style.LookAndFeel.NativeStyle = False
                Style.Shadow = False
                Style.TextStyle = []
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 12
                Height = 57
                Width = 130
              end
            end
            object Panel19: TPanel
              Left = 0
              Top = 717
              Width = 1489
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 1
              object cxButton4: TcxButton
                Left = 8
                Top = 4
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
                OnClick = cxButton4Click
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
            object cxGrid5: TcxGrid
              Left = 0
              Top = 81
              Width = 1489
              Height = 636
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 2
              LookAndFeel.SkinName = 'Blue'
              object cxGrid5DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = OraDataSource3
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <>
                DataController.Summary.SummaryGroups = <>
                object cxGrid5DBTableView1TAB_NUM: TcxGridDBColumn
                  Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
                  DataBinding.FieldName = 'TAB_NUM'
                  Styles.Header = cxStyle1
                  Width = 131
                end
                object cxGrid5DBTableView1TITLE_SHORT: TcxGridDBColumn
                  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                  DataBinding.FieldName = 'TITLE_SHORT'
                  Styles.Header = cxStyle1
                  Width = 104
                end
                object cxGrid5DBTableView1FULL_NAME: TcxGridDBColumn
                  Caption = #1060'.'#1048'.'#1054'.'
                  DataBinding.FieldName = 'FULL_NAME'
                  Styles.Header = cxStyle1
                  Width = 161
                end
                object cxGrid5DBTableView1DEPT_USER: TcxGridDBColumn
                  Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                  DataBinding.FieldName = 'DEPT_USER'
                  Styles.Header = cxStyle1
                  Width = 107
                end
                object cxGrid5DBTableView1DEPT_WORK: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'-'#1085#1080#1077
                  DataBinding.FieldName = 'DEPT_WORK'
                  Styles.Header = cxStyle1
                  Width = 116
                end
                object cxGrid5DBTableView1TIME_WORK: TcxGridDBColumn
                  Caption = #1042#1088#1077#1084#1103' '#1088#1072#1073#1086#1090#1099', '#1095#1072#1089'.'
                  DataBinding.FieldName = 'TIME_WORK'
                  Styles.Header = cxStyle1
                  Width = 130
                end
                object cxGrid5DBTableView1SUMFACT: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'SUM(FACT)'
                  Styles.Header = cxStyle1
                  Width = 102
                end
                object cxGrid5DBTableView1PERFORMANCEONE: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076'.1, '#1082#1086#1083'/'#1095#1072#1089
                  DataBinding.FieldName = 'PERFORMANCEONE'
                  Styles.Header = cxStyle1
                  Width = 133
                end
                object cxGrid5DBTableView1PERFONEINPERC: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076'.1, %'
                  DataBinding.FieldName = 'PERFONEINPERC'
                  Styles.Header = cxStyle1
                  Width = 110
                end
                object cxGrid5DBTableView1PERF_ONE_HOURS: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076', '#1082#1086#1083'/'#1095#1072#1089
                  DataBinding.FieldName = 'PERF_ONE_HOURS'
                  Styles.Header = cxStyle1
                  Width = 137
                end
                object cxGrid5DBTableView1PERF_IN_PERC: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076', %'
                  DataBinding.FieldName = 'PERF_IN_PERC'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGrid5DBTableView1X: TcxGridDBColumn
                  Caption = 'X, %'
                  DataBinding.FieldName = 'X'
                  Styles.Header = cxStyle1
                end
              end
              object cxGrid5Level1: TcxGridLevel
                GridView = cxGrid5DBTableView1
              end
            end
          end
        end
        object cxTabSheet10: TcxTabSheet
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1088#1072#1073#1086#1090#1072#1084
          ImageIndex = 1
          object Panel12: TPanel
            Left = 0
            Top = 0
            Width = 1489
            Height = 757
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object Panel13: TPanel
              Left = 0
              Top = 0
              Width = 1489
              Height = 81
              Align = alTop
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              Ctl3D = False
              ParentBackground = False
              ParentCtl3D = False
              TabOrder = 0
              object Shape3: TShape
                Left = 96
                Top = 2
                Width = 161
                Height = 75
                ParentShowHint = False
                Pen.Color = clRed
                Pen.Mode = pmMask
                ShowHint = False
              end
              object cxComboBox4: TcxComboBox
                Left = 416
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 0
                Width = 121
              end
              object cxDateEdit5: TcxDateEdit
                Left = 124
                Top = 25
                Style.Color = 16446703
                TabOrder = 1
                Width = 121
              end
              object cxDateEdit6: TcxDateEdit
                Left = 124
                Top = 50
                Style.Color = 16446703
                TabOrder = 2
                Width = 121
              end
              object cxLabel11: TcxLabel
                Left = 104
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
              object cxLabel13: TcxLabel
                Left = 100
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
              object cxLabel14: TcxLabel
                Left = 124
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
              object cxLabel15: TcxLabel
                Left = 416
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
              object Panel14: TPanel
                Left = 1175
                Top = 0
                Width = 314
                Height = 81
                Align = alRight
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                ParentBackground = False
                TabOrder = 7
                object btnSearchPerformanceWorks: TcxButton
                  Left = 264
                  Top = 5
                  Width = 45
                  Height = 43
                  TabOrder = 0
                  OnClick = btnSearchPerformanceWorksClick
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
              object btnResetPerformanceWorks: TcxButton
                Left = 8
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
                TabOrder = 8
                OnClick = btnResetPerformanceWorksClick
                LookAndFeel.SkinName = 'Blue'
              end
              object cxTextEdit3: TcxTextEdit
                Left = 560
                Top = 24
                Style.Color = 16446703
                TabOrder = 9
                Width = 121
              end
              object cxLabel17: TcxLabel
                Left = 560
                Top = 5
                Caption = #1060#1048#1054
                Style.TextStyle = [fsBold]
              end
              object CheckBox3: TCheckBox
                Left = 424
                Top = 47
                Width = 137
                Height = 33
                Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
                Color = clGradientInactiveCaption
                ParentColor = False
                TabOrder = 11
                WordWrap = True
              end
              object cxRdGrpWORK: TcxRadioGroup
                Left = 271
                Top = 8
                Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Properties.Items = <
                  item
                    Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
                  end
                  item
                    Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
                  end>
                ItemIndex = 1
                Style.LookAndFeel.NativeStyle = False
                Style.Shadow = False
                Style.TextStyle = []
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 12
                Height = 57
                Width = 130
              end
            end
            object Panel15: TPanel
              Left = 0
              Top = 717
              Width = 1489
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 1
              object cxButton3: TcxButton
                Left = 8
                Top = 4
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
                OnClick = cxButton3Click
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
            object cxGrid4: TcxGrid
              Left = 0
              Top = 81
              Width = 1489
              Height = 636
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 2
              LookAndFeel.SkinName = 'Blue'
              object cxGrid4DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = OraDataSource2
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0'
                    Kind = skSum
                    Column = cxGrid4DBTableView1SUMFACT
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Footer = True
                object cxGrid4DBTableView1TAB_NUM: TcxGridDBColumn
                  Caption = #1058#1072#1073#1077#1083#1100#1085#1099#1081' '#1085#1086#1084#1077#1088
                  DataBinding.FieldName = 'TAB_NUM'
                  Styles.Header = cxStyle1
                  Width = 170
                end
                object cxGrid4DBTableView1TITLE_SHORT: TcxGridDBColumn
                  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                  DataBinding.FieldName = 'TITLE_SHORT'
                  Styles.Header = cxStyle1
                  Width = 120
                end
                object cxGrid4DBTableView1FULL_NAME: TcxGridDBColumn
                  Caption = #1060'.'#1048'.'#1054'.'
                  DataBinding.FieldName = 'FULL_NAME'
                  Styles.Header = cxStyle1
                  Width = 194
                end
                object cxGrid4DBTableView1DEPT_USER: TcxGridDBColumn
                  Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
                  DataBinding.FieldName = 'DEPT_USER'
                  Styles.Header = cxStyle1
                  Width = 101
                end
                object cxGrid4DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'-'#1085#1080#1077' ('#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1088#1072#1073#1086#1090#1072#1083')'
                  DataBinding.FieldName = 'DEPT_NAME_SHORT'
                  Styles.Header = cxStyle1
                  Width = 114
                end
                object cxGrid4DBTableView1WORK_NAME: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1090#1072
                  DataBinding.FieldName = 'WORK_NAME'
                  Styles.Header = cxStyle1
                  Width = 166
                end
                object cxGrid4DBTableView1MEASURE_UNIT: TcxGridDBColumn
                  Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
                  DataBinding.FieldName = 'MEASURE_UNIT'
                  Styles.Header = cxStyle1
                  Width = 98
                end
                object cxGrid4DBTableView1SUMTIME_WORK_SEC: TcxGridDBColumn
                  Caption = #1044#1083#1080#1090'. '#1088#1072#1073#1086#1090#1099', '#1095'.'
                  DataBinding.FieldName = 'SUM(TIME_WORK_SEC)'
                  Styles.Header = cxStyle1
                  Width = 120
                end
                object cxGrid4DBTableView1SUMFACT: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086' '
                  DataBinding.FieldName = 'SUM(FACT)'
                  Styles.Header = cxStyle1
                  Width = 89
                end
                object cxGrid4DBTableView1PERFORMANCEONE: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076'.1, '#1082#1086#1083'/'#1095#1072#1089
                  DataBinding.FieldName = 'PERFORMANCEONE'
                  Styles.Header = cxStyle1
                  Width = 135
                end
                object cxGrid4DBTableView1PERFONEINPERC: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076'.1, %'
                  DataBinding.FieldName = 'PERFONEINPERC'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGrid4DBTableView1ROUNDAVGPERF_ONE_HOURS2: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076', '#1082#1086#1083'/'#1095#1072#1089
                  DataBinding.FieldName = 'ROUND(AVG(PERF_ONE_HOURS),2)'
                  Styles.Header = cxStyle1
                  Width = 125
                end
                object cxGrid4DBTableView1ROUNDAVGPERF_IN_PERC2: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074#1086#1076'., %'
                  DataBinding.FieldName = 'ROUND(AVG(PERF_IN_PERC),2)'
                  Styles.Header = cxStyle1
                  Width = 98
                end
                object cxGrid4DBTableView1AVGNORMO: TcxGridDBColumn
                  Caption = #1053#1086#1088#1084#1072#1090#1080#1074
                  DataBinding.FieldName = 'AVG(NORMO)'
                  Styles.Header = cxStyle1
                  Width = 74
                end
              end
              object cxGrid4Level1: TcxGridLevel
                GridView = cxGrid4DBTableView1
              end
            end
          end
        end
        object cxTabSheet9: TcxTabSheet
          Caption = #1043#1088#1091#1087#1087#1080#1088#1086#1074#1082#1072' '#1087#1086' '#1088#1072#1073#1086#1090#1077
          ImageIndex = 0
          object Panel1: TPanel
            Left = 0
            Top = 0
            Width = 1489
            Height = 757
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object cxGrid1: TcxGrid
              Left = 0
              Top = 81
              Width = 1489
              Height = 636
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.SkinName = 'Blue'
              object cxGrid1DBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = OraDataSource1
                DataController.Summary.DefaultGroupSummaryItems = <>
                DataController.Summary.FooterSummaryItems = <
                  item
                    Format = '0'
                    Kind = skSum
                    Column = cxGrid1DBTableView1FACT
                  end>
                DataController.Summary.SummaryGroups = <>
                OptionsView.Footer = True
                object cxGrid1DBTableView1OPERATING_DAY: TcxGridDBColumn
                  Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
                  DataBinding.FieldName = 'OPERATING_DAY'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGrid1DBTableView1TAB_NUM: TcxGridDBColumn
                  Caption = #1058#1072#1073'.'#1085#1086#1084#1077#1088
                  DataBinding.FieldName = 'TAB_NUM'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGrid1DBTableView1TITLE_SHORT: TcxGridDBColumn
                  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                  DataBinding.FieldName = 'TITLE_SHORT'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGrid1DBTableView1FULL_NAME: TcxGridDBColumn
                  Caption = #1060'.'#1048'.'#1054'.'
                  DataBinding.FieldName = 'FULL_NAME'
                  Styles.Header = cxStyle1
                  Width = 169
                end
                object cxGrid1DBTableView1DEPT_USER: TcxGridDBColumn
                  Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
                  DataBinding.FieldName = 'DEPT_USER'
                  Styles.Header = cxStyle1
                  Width = 130
                end
                object cxGrid1DBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' ('#1074' '#1082#1086#1090#1086#1088#1086#1084' '#1088#1072#1073#1086#1090#1072#1083')'
                  DataBinding.FieldName = 'DEPT_NAME_SHORT'
                  Styles.Header = cxStyle1
                  Width = 153
                end
                object cxGrid1DBTableView1WORK_UNIT: TcxGridDBColumn
                  Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'WORK_UNIT'
                  Styles.Header = cxStyle1
                  Width = 200
                end
                object cxGrid1DBTableView1WORK_NAME: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1090#1072
                  DataBinding.FieldName = 'WORK_NAME'
                  Styles.Header = cxStyle1
                  Width = 200
                end
                object cxGrid1DBTableView1MEASURE_UNIT: TcxGridDBColumn
                  Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
                  DataBinding.FieldName = 'MEASURE_UNIT'
                  Styles.Header = cxStyle1
                  Width = 104
                end
                object cxGrid1DBTableView1FACT: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086' '#1092#1072#1082#1090'.'
                  DataBinding.FieldName = 'FACT'
                  Styles.Header = cxStyle1
                  Width = 84
                end
                object cxGrid1DBTableView1NORMO: TcxGridDBColumn
                  Caption = #1053#1086#1088#1084#1072#1090#1080#1074' '#1076#1083#1103' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'NORMO'
                  Styles.Header = cxStyle1
                  Width = 66
                end
                object cxGrid1DBTableView1TIME_WORK_SEC: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074'., '#1082#1086#1083'/'#1095#1072#1089'.'
                  DataBinding.FieldName = 'TIME_WORK_SEC'
                  Styles.Header = cxStyle1
                  Width = 122
                end
                object cxGrid1DBTableView1PERF_ONE_HOURS: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074'., '#1082#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'PERF_ONE_HOURS'
                  Styles.Header = cxStyle1
                  Width = 115
                end
                object cxGrid1DBTableView1PERF_IN_PERC: TcxGridDBColumn
                  Caption = '%'
                  DataBinding.FieldName = 'PERF_IN_PERC'
                  Styles.Header = cxStyle1
                  Width = 34
                end
                object cxGrid1DBTableView1START_WORK: TcxGridDBColumn
                  Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'START_WORK'
                  Styles.Header = cxStyle1
                  Width = 140
                end
                object cxGrid1DBTableView1END_WORK: TcxGridDBColumn
                  Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'END_WORK'
                  Styles.Header = cxStyle1
                  Width = 113
                end
                object cxGrid1DBTableView1DIFF_TIME: TcxGridDBColumn
                  Caption = #1044#1083#1080#1090'. '#1088#1072#1073#1086#1090#1099', '#1076#1085':'#1095#1072#1089':'#1084#1080#1085':'#1089#1077#1082
                  DataBinding.FieldName = 'DIFF_TIME'
                  Styles.Header = cxStyle1
                  Width = 182
                end
              end
              object cxGrid1Level1: TcxGridLevel
                GridView = cxGrid1DBTableView1
              end
            end
            object Panel2: TPanel
              Left = 0
              Top = 0
              Width = 1489
              Height = 81
              Align = alTop
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              Ctl3D = False
              ParentBackground = False
              ParentCtl3D = False
              TabOrder = 1
              object Shape1: TShape
                Left = 96
                Top = 2
                Width = 161
                Height = 75
                ParentShowHint = False
                Pen.Color = clRed
                Pen.Mode = pmMask
                ShowHint = False
              end
              object cxComboBox1: TcxComboBox
                Left = 416
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 0
                Width = 121
              end
              object cxDateEdit1: TcxDateEdit
                Left = 124
                Top = 25
                Style.Color = 16446703
                TabOrder = 1
                Width = 121
              end
              object cxDateEdit2: TcxDateEdit
                Left = 124
                Top = 50
                Style.Color = 16446703
                TabOrder = 2
                Width = 121
              end
              object cxLabel1: TcxLabel
                Left = 104
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
              object cxLabel2: TcxLabel
                Left = 100
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
              object cxLabel3: TcxLabel
                Left = 124
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
              object cxLabel4: TcxLabel
                Left = 416
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
              object Panel3: TPanel
                Left = 1175
                Top = 0
                Width = 314
                Height = 81
                Align = alRight
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                ParentBackground = False
                TabOrder = 7
                object SearchButtonPerfomance: TcxButton
                  Left = 264
                  Top = 5
                  Width = 45
                  Height = 43
                  TabOrder = 0
                  OnClick = SearchButtonPerfomanceClick
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
              object cxLabel5: TcxLabel
                Left = 560
                Top = 5
                Caption = #1058#1080#1087#1099' '#1088#1072#1073#1086#1090
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
              end
              object cxComboBox2: TcxComboBox
                Left = 560
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 9
                Width = 137
              end
              object ResetButtonPerfomance: TcxButton
                Left = 8
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
                TabOrder = 10
                OnClick = ResetButtonPerfomanceClick
                LookAndFeel.SkinName = 'Blue'
              end
              object cxTextEdit1: TcxTextEdit
                Left = 728
                Top = 24
                Style.Color = 16446703
                TabOrder = 11
                Width = 121
              end
              object cxLabel6: TcxLabel
                Left = 728
                Top = 5
                Caption = #1060#1048#1054
                Style.TextStyle = [fsBold]
              end
              object CheckAllTypeWorks: TcxCheckBox
                Left = 568
                Top = 55
                Caption = #1042#1089#1077' '#1090#1080#1087#1099' '#1088#1072#1073#1086#1090
                TabOrder = 13
                Width = 121
              end
              object CheckBox1: TCheckBox
                Left = 424
                Top = 48
                Width = 137
                Height = 33
                Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
                Color = clGradientInactiveCaption
                ParentColor = False
                TabOrder = 14
                WordWrap = True
              end
              object cxRdGrpSwitchDept: TcxRadioGroup
                Left = 271
                Top = 8
                Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Properties.Items = <
                  item
                    Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
                  end
                  item
                    Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
                  end>
                ItemIndex = 1
                Style.LookAndFeel.NativeStyle = False
                Style.Shadow = False
                Style.TextStyle = []
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 15
                Height = 57
                Width = 130
              end
            end
            object Panel7: TPanel
              Left = 0
              Top = 717
              Width = 1489
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 2
              object ExportButtonPerformance: TcxButton
                Left = 8
                Top = 4
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
                OnClick = ExportButtonPerformanceClick
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
        end
        object cxTabSheet12: TcxTabSheet
          Caption = #1048#1089#1093#1086#1076#1085#1099#1077' '#1076#1072#1085#1085#1099#1077
          ImageIndex = 0
          object Panel11: TPanel
            Left = 0
            Top = 0
            Width = 1489
            Height = 757
            Align = alClient
            BevelOuter = bvNone
            ParentBackground = False
            TabOrder = 0
            object cxGrid6: TcxGrid
              Left = 0
              Top = 81
              Width = 1489
              Height = 636
              Align = alClient
              BevelInner = bvNone
              BevelOuter = bvNone
              TabOrder = 0
              LookAndFeel.SkinName = 'Blue'
              object cxGridDBTableView1: TcxGridDBTableView
                NavigatorButtons.ConfirmDelete = False
                DataController.DataSource = dsInitiaLData
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
                  Caption = #1054#1087#1077#1088#1072#1094#1080#1086#1085#1085#1099#1081' '#1076#1077#1085#1100
                  DataBinding.FieldName = 'OPERATING_DAY'
                  Styles.Header = cxStyle1
                  Width = 140
                end
                object cxGridDBTableView1TAB_NUM: TcxGridDBColumn
                  Caption = #1058#1072#1073'. '#1085#1086#1084#1077#1088
                  DataBinding.FieldName = 'TAB_NUM'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGridDBTableView1TITLE_SHORT: TcxGridDBColumn
                  Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
                  DataBinding.FieldName = 'TITLE_SHORT'
                  Styles.Header = cxStyle1
                  Width = 120
                end
                object cxGridDBTableView1FULL_NAME: TcxGridDBColumn
                  Caption = #1060'.'#1048'.'#1054'.'
                  DataBinding.FieldName = 'FULL_NAME'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGridDBTableView1DEPT_USER: TcxGridDBColumn
                  Caption = #1055#1086#1076#1088'-'#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
                  DataBinding.FieldName = 'DEPT_USER'
                  Styles.Header = cxStyle1
                  Width = 140
                end
                object cxGridDBTableView1DEPT_NAME_SHORT: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1095#1077#1077' '#1087#1086#1076#1088'-'#1085#1080#1077
                  DataBinding.FieldName = 'DEPT_NAME_SHORT'
                  Styles.Header = cxStyle1
                  Width = 120
                end
                object cxGridDBTableView1WORK_UNIT: TcxGridDBColumn
                  Caption = #1058#1080#1087' '#1088#1072#1073#1086#1090#1099
                  DataBinding.FieldName = 'WORK_UNIT'
                  Styles.Header = cxStyle1
                  Width = 112
                end
                object cxGridDBTableView1WORK_NAME: TcxGridDBColumn
                  Caption = #1056#1072#1073#1086#1090#1072#13#10
                  DataBinding.FieldName = 'WORK_NAME'
                  Styles.Header = cxStyle1
                  Width = 150
                end
                object cxGridDBTableView1MEASURE_UNIT: TcxGridDBColumn
                  Caption = #1045#1076'. '#1080#1079#1084#1077#1088#1077#1085#1080#1103
                  DataBinding.FieldName = 'MEASURE_UNIT'
                  Styles.Header = cxStyle1
                  Width = 130
                end
                object cxGridDBTableView1FACT: TcxGridDBColumn
                  Caption = #1050#1086#1083'-'#1074#1086' '#1092#1072#1082#1090'.'
                  DataBinding.FieldName = 'FACT'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGridDBTableView1NORMO: TcxGridDBColumn
                  Caption = #1053#1086#1088#1084#1072#1090#1080#1074
                  DataBinding.FieldName = 'NORMO'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGridDBTableView1TIME_WORK_SEC: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074'., '#1082#1086#1083'/'#1095#1072#1089'.'
                  DataBinding.FieldName = 'TIME_WORK_SEC'
                  Styles.Header = cxStyle1
                  Width = 114
                end
                object cxGridDBTableView1PERF_ONE_HOURS: TcxGridDBColumn
                  Caption = #1055#1088#1086#1080#1079#1074'., '#1082#1086#1083'-'#1074#1086
                  DataBinding.FieldName = 'PERF_ONE_HOURS'
                  Styles.Header = cxStyle1
                  Width = 106
                end
                object cxGridDBTableView1PERF_IN_PERC: TcxGridDBColumn
                  Caption = '%'
                  DataBinding.FieldName = 'PERF_IN_PERC'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGridDBTableView1START_WORK: TcxGridDBColumn
                  Caption = #1042#1088#1077#1084#1103' '#1085#1072#1095#1072#1083#1072
                  DataBinding.FieldName = 'START_WORK'
                  Styles.Header = cxStyle1
                  Width = 100
                end
                object cxGridDBTableView1END_WORK: TcxGridDBColumn
                  Caption = #1042#1088#1077#1084#1103' '#1086#1082#1086#1085#1095#1072#1085#1080#1103
                  DataBinding.FieldName = 'END_WORK'
                  Styles.Header = cxStyle1
                  Width = 118
                end
                object cxGridDBTableView1DIFF_TIME: TcxGridDBColumn
                  Caption = #1044#1083#1080#1090'. '#1088#1072#1073#1086#1090#1099', '#1076#1085':'#1095#1072#1089':'#1084#1080#1085':'#1089#1077#1082
                  DataBinding.FieldName = 'DIFF_TIME'
                  Styles.Header = cxStyle1
                  Width = 183
                end
              end
              object cxGridLevel1: TcxGridLevel
                GridView = cxGridDBTableView1
              end
            end
            object Panel20: TPanel
              Left = 0
              Top = 0
              Width = 1489
              Height = 81
              Align = alTop
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              Ctl3D = False
              ParentBackground = False
              ParentCtl3D = False
              TabOrder = 1
              object Shape5: TShape
                Left = 96
                Top = 2
                Width = 161
                Height = 75
                ParentShowHint = False
                Pen.Color = clRed
                Pen.Mode = pmMask
                ShowHint = False
              end
              object cxComboBox5: TcxComboBox
                Left = 416
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 0
                Width = 121
              end
              object cxDateEdit9: TcxDateEdit
                Left = 124
                Top = 25
                Style.Color = 16446703
                TabOrder = 1
                Width = 121
              end
              object cxDateEdit10: TcxDateEdit
                Left = 124
                Top = 50
                Style.Color = 16446703
                TabOrder = 2
                Width = 121
              end
              object cxLabel30: TcxLabel
                Left = 104
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
              object cxLabel31: TcxLabel
                Left = 100
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
              object cxLabel32: TcxLabel
                Left = 124
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
              object cxLabel33: TcxLabel
                Left = 416
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
              object Panel21: TPanel
                Left = 1175
                Top = 0
                Width = 314
                Height = 81
                Align = alRight
                BevelOuter = bvNone
                Color = clGradientInactiveCaption
                ParentBackground = False
                TabOrder = 7
                object btnSearchInitData: TcxButton
                  Left = 264
                  Top = 5
                  Width = 45
                  Height = 43
                  TabOrder = 0
                  OnClick = btnSearchInitDataClick
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
              object cxLabel34: TcxLabel
                Left = 560
                Top = 5
                Caption = #1058#1080#1087#1099' '#1088#1072#1073#1086#1090
                ParentFont = False
                Style.Font.Charset = DEFAULT_CHARSET
                Style.Font.Color = clWindowText
                Style.Font.Height = -11
                Style.Font.Name = 'MS Sans Serif'
                Style.Font.Style = [fsBold]
                Style.IsFontAssigned = True
              end
              object cxComboBox9: TcxComboBox
                Left = 560
                Top = 25
                Properties.DropDownListStyle = lsFixedList
                Style.Color = 16446703
                TabOrder = 9
                Width = 137
              end
              object btnResetInitDATA: TcxButton
                Left = 8
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
                TabOrder = 10
                OnClick = btnResetInitDATAClick
                LookAndFeel.SkinName = 'Blue'
              end
              object cxTextEdit5: TcxTextEdit
                Left = 728
                Top = 24
                Style.Color = 16446703
                TabOrder = 11
                Width = 121
              end
              object cxLabel35: TcxLabel
                Left = 728
                Top = 5
                Caption = #1060#1048#1054
                Style.TextStyle = [fsBold]
              end
              object cxCheckBox1: TcxCheckBox
                Left = 568
                Top = 55
                Caption = #1042#1089#1077' '#1090#1080#1087#1099' '#1088#1072#1073#1086#1090
                TabOrder = 13
                Width = 121
              end
              object CheckBox5: TCheckBox
                Left = 424
                Top = 48
                Width = 137
                Height = 33
                Caption = #1042#1089#1077' '#1076#1086#1089#1090#1091#1087#1085#1099#1077' '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1103
                Color = clGradientInactiveCaption
                ParentColor = False
                TabOrder = 14
                Visible = False
                WordWrap = True
              end
              object cxRdGrpForINITDATA: TcxRadioGroup
                Left = 271
                Top = 8
                Caption = #1055#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077
                Properties.Items = <
                  item
                    Caption = #1055#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
                  end
                  item
                    Caption = #1055#1086' '#1088#1072#1073#1086#1090#1077
                  end>
                ItemIndex = 1
                Style.LookAndFeel.NativeStyle = False
                Style.Shadow = False
                Style.TextStyle = []
                StyleDisabled.LookAndFeel.NativeStyle = False
                StyleFocused.LookAndFeel.NativeStyle = False
                StyleHot.LookAndFeel.NativeStyle = False
                TabOrder = 15
                Height = 57
                Width = 130
              end
            end
            object Panel22: TPanel
              Left = 0
              Top = 717
              Width = 1489
              Height = 40
              Align = alBottom
              BevelOuter = bvNone
              Color = clGradientInactiveCaption
              ParentBackground = False
              TabOrder = 2
              object btnInitData: TcxButton
                Left = 8
                Top = 4
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
                OnClick = btnInitDataClick
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
        end
      end
    end
    object cxTabSheet3: TcxTabSheet
      Caption = #1055#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1100
      ImageIndex = 2
    end
    object cxTabSheet4: TcxTabSheet
      Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
      ImageIndex = 3
    end
    object cxTabSheet5: TcxTabSheet
      Caption = #1050#1072#1095#1077#1089#1090#1074#1086
      ImageIndex = 4
    end
    object cxTabSheet6: TcxTabSheet
      Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
      ImageIndex = 5
    end
    object cxTabSheet7: TcxTabSheet
      Caption = #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1089#1090#1100
      ImageIndex = 6
    end
    object cxTabSheet8: TcxTabSheet
      Caption = #1042#1077#1089#1086#1074#1099#1077' '#1082#1086#1101#1092#1092#1080#1094#1080#1077#1085#1090#1099
      ImageIndex = 7
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 1496
        Height = 787
        Align = alClient
        ParentBackground = False
        TabOrder = 0
        object cxGrid2: TcxGrid
          Left = 1
          Top = 1
          Width = 1494
          Height = 497
          Align = alClient
          BevelInner = bvNone
          BevelOuter = bvNone
          TabOrder = 0
          LookAndFeel.SkinName = 'Blue'
          object cxGrid2DBTableView1: TcxGridDBTableView
            NavigatorButtons.ConfirmDelete = False
            OnCellClick = cxGrid2DBTableView1CellClick
            DataController.DataSource = OraDataSource4
            DataController.Summary.DefaultGroupSummaryItems = <>
            DataController.Summary.FooterSummaryItems = <>
            DataController.Summary.SummaryGroups = <>
            object cxGrid2DBTableView1ID_WEIGHT: TcxGridDBColumn
              DataBinding.FieldName = 'ID_WEIGHT'
              Visible = False
            end
            object cxGrid2DBTableView1MONTH_WEIGHT: TcxGridDBColumn
              Caption = #1052#1045#1057#1071#1062
              DataBinding.FieldName = 'MONTH_WEIGHT'
              Visible = False
              Styles.Header = cxStyle1
              Width = 100
            end
            object cxGrid2DBTableView1MONTH_W: TcxGridDBColumn
              Caption = #1052#1045#1057#1071#1062
              DataBinding.FieldName = 'MONTH_W'
              Styles.Header = cxStyle1
            end
            object cxGrid2DBTableView1YEAR_WEIGHT: TcxGridDBColumn
              Caption = #1043#1054#1044
              DataBinding.FieldName = 'YEAR_WEIGHT'
              Styles.Header = cxStyle1
              Width = 120
            end
            object cxGrid2DBTableView1WEIGHT_VISIT: TcxGridDBColumn
              Caption = #1055#1054#1057#1045#1065#1040#1045#1052#1054#1057#1058#1068
              DataBinding.FieldName = 'WEIGHT_VISIT'
              Styles.Header = cxStyle1
              Width = 137
            end
            object cxGrid2DBTableView1WEIGHT_PERFORMANCE: TcxGridDBColumn
              Caption = #1055#1056#1054#1048#1047#1042#1054#1044#1048#1058#1045#1051#1068#1053#1054#1057#1058#1068
              DataBinding.FieldName = 'WEIGHT_PERFORMANCE'
              Styles.Header = cxStyle1
              Width = 171
            end
            object cxGrid2DBTableView1WEIGHT_DISCIPLINE: TcxGridDBColumn
              Caption = #1044#1048#1057#1062#1048#1055#1051#1048#1053#1040
              DataBinding.FieldName = 'WEIGHT_DISCIPLINE'
              Styles.Header = cxStyle1
              Width = 117
            end
            object cxGrid2DBTableView1WEIGHT_EXECUTION: TcxGridDBColumn
              Caption = #1048#1057#1055#1054#1051#1053#1048#1058#1045#1051#1068#1053#1054#1057#1058#1068
              DataBinding.FieldName = 'WEIGHT_EXECUTION'
              Styles.Header = cxStyle1
              Width = 163
            end
            object cxGrid2DBTableView1WEIGHT_QUALITY: TcxGridDBColumn
              Caption = #1050#1040#1063#1045#1057#1058#1042#1054
              DataBinding.FieldName = 'WEIGHT_QUALITY'
              Styles.Header = cxStyle1
              Width = 104
            end
            object cxGrid2DBTableView1WEIGHT_UNIVERSALITY: TcxGridDBColumn
              Caption = #1059#1053#1048#1042#1045#1056#1057#1040#1051#1068#1053#1054#1057#1058#1068
              DataBinding.FieldName = 'WEIGHT_UNIVERSALITY'
              Styles.Header = cxStyle1
              Width = 150
            end
            object cxGrid2DBTableView1SUM_WEIGHT: TcxGridDBColumn
              Caption = #1057#1059#1052#1052#1040' '#1050#1054#1069#1060#1060#1048#1062#1048#1069#1053#1058#1054#1042
              DataBinding.FieldName = 'SUM_WEIGHT'
              Styles.Header = cxStyle1
              Width = 190
            end
          end
          object cxGrid2Level1: TcxGridLevel
            GridView = cxGrid2DBTableView1
          end
        end
        object Panel6: TPanel
          Left = 1
          Top = 498
          Width = 1494
          Height = 288
          Align = alBottom
          BevelOuter = bvNone
          Color = clGradientInactiveCaption
          ParentBackground = False
          TabOrder = 1
          object cxComboBox7: TcxComboBox
            Left = 16
            Top = 32
            TabOrder = 0
            Width = 121
          end
          object cxComboBox8: TcxComboBox
            Left = 160
            Top = 32
            TabOrder = 1
            Width = 121
          end
          object btnAddWeight: TcxButton
            Left = 440
            Top = 80
            Width = 89
            Height = 25
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            OnClick = btnAddWeightClick
            LookAndFeel.SkinName = 'Blue'
          end
          object btnChangeWeight: TcxButton
            Left = 552
            Top = 80
            Width = 121
            Height = 25
            Caption = #1048#1079#1084#1077#1085#1080#1090#1100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 3
            OnClick = btnChangeWeightClick
            LookAndFeel.SkinName = 'Blue'
          end
          object cxLabel16: TcxLabel
            Left = 24
            Top = 8
            Caption = #1052#1077#1089#1103#1094
            Style.TextStyle = [fsBold]
          end
          object cxLabel22: TcxLabel
            Left = 168
            Top = 8
            Caption = #1043#1086#1076
            Style.TextStyle = [fsBold]
          end
          object cxLabel24: TcxLabel
            Left = 320
            Top = 8
            Caption = #1055#1086#1089#1077#1097#1072#1077#1084#1086#1089#1090#1100
            Style.TextStyle = [fsBold]
          end
          object cxLabel25: TcxLabel
            Left = 448
            Top = 8
            Caption = #1055#1088#1086#1080#1079#1074#1086#1076#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
            Style.TextStyle = [fsBold]
          end
          object cxLabel26: TcxLabel
            Left = 592
            Top = 8
            Caption = #1044#1080#1089#1094#1080#1087#1083#1080#1085#1072
            Style.TextStyle = [fsBold]
          end
          object cxLabel27: TcxLabel
            Left = 720
            Top = 8
            Caption = #1048#1089#1087#1086#1083#1085#1080#1090#1077#1083#1100#1085#1086#1089#1090#1100
            Style.TextStyle = [fsBold]
          end
          object cxLabel28: TcxLabel
            Left = 872
            Top = 8
            Caption = #1050#1072#1095#1077#1089#1090#1074#1086
            Style.TextStyle = [fsBold]
          end
          object cxLabel29: TcxLabel
            Left = 992
            Top = 8
            Caption = #1059#1085#1080#1074#1077#1088#1089#1072#1083#1100#1085#1086#1089#1090#1100
            Style.TextStyle = [fsBold]
          end
          object cxMaskEdit1: TcxMaskEdit
            Left = 312
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 12
            Width = 121
          end
          object cxMaskEdit2: TcxMaskEdit
            Left = 448
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 13
            Width = 121
          end
          object cxMaskEdit3: TcxMaskEdit
            Left = 592
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 14
            Width = 121
          end
          object cxMaskEdit4: TcxMaskEdit
            Left = 720
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 15
            Width = 121
          end
          object cxMaskEdit5: TcxMaskEdit
            Left = 856
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 16
            Width = 121
          end
          object cxMaskEdit6: TcxMaskEdit
            Left = 992
            Top = 32
            Properties.MaskKind = emkRegExpr
            Properties.EditMask = '((\d){0,50})?(\.(\d){0,50})?'
            Properties.MaxLength = 0
            TabOrder = 17
            Width = 121
          end
        end
      end
    end
  end
  object OraDataSource1: TOraDataSource
    DataSet = OraQuery1
    Left = 1288
    Top = 320
  end
  object OraQuery1: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '    SELECT operating_day,'
      '           id_dept,'
      '           id_work,'
      '           plan,'
      '           SUM (fact) fact,'
      '           SUM (fact2) fact2,'
      '           SUM (fact3) fact3,'
      '           user_demande,'
      '           tab_num,'
      '           MIN (start_work) start_work,'
      
        '           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_wo' +
        'rk) END end_work,'
      '           unit_temp,'
      '           MAX (etat) etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           id_shift,'
      '           MAX (user_completed) user_completed,'
      
        '           MAX (id_shift_check_in) id_shift_check_in            ' +
        '       '
      '    FROM plan_pers_work_ungroup_new'
      '    WHERE 1 = 1'
      '         &date_filter '
      
        '         --    AND operating_day >= To_date('#39'24.12.2019'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      
        '         --    AND operating_day <= to_date('#39'24.12.2019'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      '    GROUP BY operating_day,'
      '             id_dept,'
      '             id_work,'
      '             plan,'
      '             user_demande,'
      '             unit_temp,'
      '             id_workplace,'
      '             unit_txt,'
      '             id_shift,'
      '             tab_num'
      '    '
      '),'
      ''
      'PPWUN AS ('
      
        '         Select --ROUND((end_work - start_work)*24, 4) as Time_W' +
        'ork_Sec,'
      '                CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 3600'
      '                    ELSE  ROUND((end_work - start_work)* 24, 4)'
      '                END Time_Work_Sec,'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      ')'
      ''
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.WORK_NAME,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPN.normo,'
      '        PPN.money,'
      '        PPN.normo2,'
      '        PPN.money2,'
      '        PPN.normo3,'
      '        PPN.money3,'
      '        Time_Work_Sec,'
      
        '        ROUND((PPWUN.FACT / DECODE(Time_Work_Sec, 0, 1, NULL, 1,' +
        ' Time_Work_Sec)), 4) as Perf_One_Hours,'
      
        '        ROUND((PPWUN.FACT /DECODE(Time_Work_Sec, 0, 1, NULL, 1, ' +
        'Time_Work_Sec))*100 / PPN.normo , 2) as Perf_In_Perc, '
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(HOURS, 2, '#39'0'#39')||'#39':'#39'||LPAD(' +
        'MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(SECONDS, 2, '#39'0'#39') AS diff_time,'
      '        PPWUN.UNIT_TEMP'
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      LEFT JOIN plan_pers_normo PPN'
      '              ON PPN.id_work = PPWL.id_work'
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
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99'
      '      '
      'WHERE 1 = 1'
      '      &dept_FILTER'
      '      &deptUSER_filter '
      '      &fio_filter'
      '      &work_filter')
    FetchAll = True
    Left = 1296
    Top = 376
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
      end
      item
        DataType = ftUnknown
        Name = 'WORK_UNIT'
      end>
    MacroData = <
      item
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= :date_start'#13#10' AND operating_day <= :date_e' +
          'nd'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND PPWUN.id_dept = :dept_id'
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
        Name = 'work_filter'
        Value = 'AND PPWL.work_unit = :WORK_UNIT'
      end>
  end
  object OraQuery2: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '    SELECT operating_day,'
      '           id_dept,'
      '           id_work,'
      '           plan,'
      '           SUM (fact) fact,'
      '           SUM (fact2) fact2,'
      '           SUM (fact3) fact3,'
      '           user_demande,'
      '           tab_num,'
      '           MIN (start_work) start_work,'
      
        '           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_wo' +
        'rk) END end_work,'
      '           unit_temp,'
      '           MAX (etat) etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           id_shift,'
      '           MAX (user_completed) user_completed,'
      
        '           MAX (id_shift_check_in) id_shift_check_in            ' +
        '       '
      '    FROM plan_pers_work_ungroup_new'
      '    WHERE 1 = 1'
      '         &date_filter '
      
        '         --    AND operating_day >= To_date('#39'24.12.2019'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      
        '         --    AND operating_day <= to_date('#39'24.12.2019'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      '    GROUP BY operating_day,'
      '             id_dept,'
      '             id_work,'
      '             plan,'
      '             user_demande,'
      '             unit_temp,'
      '             id_workplace,'
      '             unit_txt,'
      '             id_shift,'
      '             tab_num'
      '),'
      ''
      'PPWUN AS ('
      
        '         Select --ROUND((end_work - start_work)*24, 4) as Time_W' +
        'ork_Sec,'
      '                CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 3600'
      '                    ELSE  ROUND((end_work - start_work)* 24, 4)'
      '                END Time_Work_Sec,'
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
      'RESULT_TABLE as ('
      '    Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.WORK_NAME,'
      '        PPWL.measure_unit,'
      '        Time_Work_Sec,'
      
        '        ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_Wor' +
        'k_Sec)), 4) as Perf_One_Hours,'
      
        '        ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_Wor' +
        'k_Sec  ))*100 / PPN.normo, 2) as Perf_In_Perc, '
      '        PPWUN.FACT,'
      '        PPN.normo,'
      '        PPN.money,'
      '        PPN.normo2,'
      '        PPN.money2,'
      '        PPN.normo3,'
      '        PPN.money3,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(HOURS, 2, '#39'0'#39')||'#39':'#39'||LPAD(' +
        'MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(SECONDS, 2, '#39'0'#39') AS TIME_WORK_FULL,'
      '        PPWUN.UNIT_TEMP'
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work'
      '      LEFT JOIN plan_pers_normo PPN'
      '              ON PPN.id_work = PPWL.id_work'
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '                 ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '                 AND uad.id_user = :nom_user'
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99'
      '      '
      'WHERE 1 = 1'
      '  &dept_FILTER'
      '  &deptUser_FILTER  '
      '  &fio_filter'
      '  &work_filter'
      ')'
      ''
      'Select  tab_num, '
      '        title_short, '
      '        full_name, '
      '        dept_user, '
      '        dept_name_short, '
      '        work_name,'
      '        sum(time_work_sec),'
      '        ROUND(avg(perf_one_hours), 2),'
      '        ROUND(avg(perf_in_perc), 2),'
      '        sum(fact),'
      
        '        round(sum(fact)/decode(sum(time_work_sec), 0, 1, sum(tim' +
        'e_work_sec)), 3) as performanceOne,'
      
        '        round(sum(fact)/decode(sum(time_work_sec), 0, 1, sum(tim' +
        'e_work_sec))/AVG(normo) *100, 3) as perfOneInPerc,'
      '        AVG(normo),'
      '        measure_unit'
      'From Result_table'
      'Group by tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user, '
      '         dept_name_short, '
      '         work_name,'
      '         measure_unit')
    FetchAll = True
    Left = 1208
    Top = 368
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
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= :date_start'#13#10' AND operating_day <= :date_e' +
          'nd'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND ppd.id_dept = :dept_id'
      end
      item
        Name = 'deptUser_FILTER'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.FULL_NAME)  like :FIO'
      end
      item
        Name = 'work_filter'
      end>
  end
  object cxStyleRepository1: TcxStyleRepository
    Left = 1016
    Top = 184
    PixelsPerInch = 96
    object cxStyle1: TcxStyle
      AssignedValues = [svFont]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
    end
  end
  object OraDataSource2: TOraDataSource
    DataSet = OraQuery2
    Left = 1205
    Top = 315
  end
  object OraQuery3: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '    SELECT operating_day,'
      '           id_dept,'
      '           id_work,'
      '           plan,'
      '           SUM (fact) fact,'
      '           SUM (fact2) fact2,'
      '           SUM (fact3) fact3,'
      '           user_demande,'
      '           tab_num,'
      '           MIN (start_work) start_work,'
      
        '           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_wo' +
        'rk) END end_work,'
      '           unit_temp,'
      '           MAX (etat) etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           id_shift,'
      '           MAX (user_completed) user_completed,'
      
        '           MAX (id_shift_check_in) id_shift_check_in            ' +
        '       '
      '    FROM plan_pers_work_ungroup_new'
      '    WHERE 1 = 1'
      '         &date_filter '
      
        '        --     AND operating_day >= To_date('#39'01.01.2020'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      
        '        --     AND operating_day <= to_date('#39'09.01.2020'#39', '#39'dd.mm' +
        '.yyyy'#39')'
      '    GROUP BY operating_day,'
      '             id_dept,'
      '             id_work,'
      '             plan,'
      '             user_demande,'
      '             unit_temp,'
      '             id_workplace,'
      '             unit_txt,'
      '             id_shift,'
      '             tab_num'
      '),'
      ''
      'PPWUN AS ('
      
        '         Select --ROUND((end_work - start_work)*24, 4) as Time_W' +
        'ork_Sec,'
      '                CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 3600'
      '                    ELSE  ROUND((end_work - start_work)* 24, 4)'
      '                END Time_Work_Sec,'
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
      'GROUP_TABLE_for_WORK as ('
      '    Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short AS DEPT_WORK,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.WORK_NAME,'
      '        PPWL.measure_unit,'
      '        Time_Work_Sec,'
      
        '        ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_Wor' +
        'k_Sec)), 4) as Perf_One_Hours,'
      
        '        ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_Wor' +
        'k_Sec  ))*100 / PPN.normo, 2) as Perf_In_Perc, '
      '        PPWUN.FACT,'
      '        PPN.normo,'
      '        PPN.money,'
      '        PPN.normo2,'
      '        PPN.money2,'
      '        PPN.normo3,'
      '        PPN.money3,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(HOURS, 2, '#39'0'#39')||'#39':'#39'||LPAD(' +
        'MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(SECONDS, 2, '#39'0'#39') AS TIME_WORK_FULL,'
      '        PPWUN.UNIT_TEMP'
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work'
      '      LEFT JOIN plan_pers_normo PPN'
      '              ON PPN.id_work = PPWL.id_work'
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '                 ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '                 AND uad.id_user = :nom_user'
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99'
      '      '
      'WHERE 1 = 1'
      '  &dept_FILTER '
      '  &deptUSER_filter '
      '  &fio_filter'
      '  &work_filter'
      '), '
      ''
      'RESULT_TABLE AS('
      '    Select  tab_num, '
      '            title_short, '
      '            full_name, '
      '            dept_user,'
      '            DEPT_WORK, '
      '            work_name,'
      '            sum(time_work_sec) as time_work_sec,'
      '            avg(perf_one_hours) as  perf_one_hours,'
      '            avg(perf_in_perc) as perf_in_perc,'
      '            sum(fact) as fact,'
      
        '            round(sum(fact)/decode(sum(time_work_sec), 0, 1, sum' +
        '(time_work_sec)), 3) as performanceOne,'
      
        '            round(sum(fact)/decode(sum(time_work_sec), 0, 1, sum' +
        '(time_work_sec))/AVG(normo) *100, 3) as perfOneInPerc,'
      '            AVG(normo),'
      '            measure_unit'
      '    From Group_TABLE_for_WORK'
      '    Group by tab_num, '
      '             title_short, '
      '             full_name, '
      '             dept_user, '
      '             DEPT_WORK, '
      '             work_name,'
      '             measure_unit'
      ')'
      ''
      'Select tab_num, '
      '       title_short, '
      '       full_name, '
      '       dept_user,'
      '       DEPT_WORK, '
      '       ROUND(sum(time_work_sec), 2) as TIME_WORK,'
      '       ROUND(avg(perf_one_hours)) as perf_one_hours,'
      '       ROUND(avg(perf_in_perc)) as perf_in_perc,'
      '       sum(fact),'
      
        '       ROUND(sum(time_work_sec*perfOneInPerc)/sum(time_work_sec)' +
        ') as X,'
      '       ROUND(avg(performanceOne)) as  performanceOne,'
      '       ROUND(avg(perfOneInPerc)) as perfOneInPerc'
      'From RESULT_TABLE'
      'Group by tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user,'
      '         DEPT_WORK')
    FetchAll = True
    Left = 1376
    Top = 376
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
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= :date_start'#13#10' AND operating_day <= :date_e' +
          'nd'
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
        Value = 'AND lower(PPW.FULL_NAME)  like :FIO'
      end
      item
        Name = 'work_filter'
      end>
  end
  object OraDataSource3: TOraDataSource
    DataSet = OraQuery3
    Left = 1376
    Top = 320
  end
  object OraQuery4: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'SELECT pprwf.*,'
      '       DECODE(pprwf.month_weight, '
      '              1, '#39#1103#1085#1074#1072#1088#1100#39','
      '              2, '#39#1092#1077#1074#1088#1072#1083#1100#39','
      '              3, '#39#1084#1072#1088#1090#39','
      '              4, '#39#1072#1087#1088#1077#1083#1100#39','
      '              5, '#39#1084#1072#1081#39','
      '              6, '#39#1080#1102#1085#1100#39','
      '              7, '#39#1080#1102#1083#1100#39','
      '              8, '#39#1072#1074#1075#1091#1089#1090#39','
      '              9, '#39#1089#1077#1085#1090#1103#1073#1088#1100#39','
      '              10, '#39#1086#1082#1090#1103#1073#1088#1100#39','
      '              11, '#39#1085#1086#1103#1073#1088#1100#39','
      '              12, '#39#1076#1077#1082#1072#1073#1088#1100#39') as MONTH_W,'
      '       (pprwf.weight_visit + pprwf.weight_performance '
      '        + pprwf.weight_discipline + pprwf.weight_execution'
      
        '        + pprwf.weight_quality + pprwf.weight_universality) as S' +
        'UM_WEIGHT'
      'From plan_pers_raiting_weight_fact pprwf'
      'Order By pprwf.year_weight, pprwf.month_weight')
    FetchAll = True
    Left = 1296
    Top = 424
  end
  object OraDataSource4: TOraDataSource
    DataSet = OraQuery4
    Left = 1211
    Top = 426
  end
  object orqryRaiting1: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '    SELECT operating_day,'
      '           id_dept,'
      '           id_work,'
      '           plan,'
      '           SUM (fact) fact,'
      '           SUM (fact2) fact2,'
      '           SUM (fact3) fact3,'
      '           user_demande,'
      '           tab_num,'
      '           MIN (start_work) start_work,'
      
        '           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_wo' +
        'rk) END end_work,'
      '           unit_temp,'
      '           MAX (etat) etat,'
      '           id_workplace,'
      '           unit_txt,'
      '           id_shift,'
      '           MAX (user_completed) user_completed,'
      
        '           MAX (id_shift_check_in) id_shift_check_in            ' +
        '       '
      '    FROM plan_pers_work_ungroup_new'
      '    WHERE 1 = 1'
      '          &date_filter '
      
        '         -- AND operating_day >= To_date('#39'20.12.2019'#39', '#39'dd.mm.yy' +
        'yy'#39')'
      
        '         -- AND operating_day <= to_date('#39'09.01.2020'#39', '#39'dd.mm.yy' +
        'yy'#39')'
      '    GROUP BY operating_day,'
      '             id_dept,'
      '             id_work,'
      '             plan,'
      '             user_demande,'
      '             unit_temp,'
      '             id_workplace,'
      '             unit_txt,'
      '             id_shift,'
      '             tab_num'
      '),'
      ''
      'PPWUN AS ('
      
        '         Select --ROUND((end_work - start_work)*24, 4) as Time_W' +
        'ork_Sec,'
      '                  CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 3600'
      '                    ELSE  ROUND((end_work - start_work)* 24, 4)'
      '                  END Time_Work_Sec,'
      '              --  TRUNC(end_work - start_work) as DAYS,'
      '              --  TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '             --   TRUNC(MOD((end_work - start_work) * 24 * 60, 6' +
        '0)) as MINUTES,'
      
        '             --   ROUND(MOD(MOD((end_work - start_work) * 24 * 3' +
        '600, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      '),'
      ''
      'GROUP_TABLE_for_WORK as ('
      '    Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.WORK_NAME,'
      '        --  PPWL.measure_unit,'
      '        Time_Work_Sec,'
      
        '        -- ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_' +
        'Work_Sec)), 4) as Perf_One_Hours,'
      
        '        -- ROUND((PPWUN.FACT / decode(Time_Work_Sec, 0, 1, Time_' +
        'Work_Sec  ))*100 / PPN.normo, 2) as Perf_In_Perc, '
      '        PPWUN.FACT,'
      '        PPN.normo,'
      '        PPN.money,'
      '        PPN.normo2,'
      '        PPN.money2,'
      '        PPN.normo3,'
      '        PPN.money3,'
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        -- LPAD(DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(HOURS, 2, '#39'0'#39')||'#39':'#39'||LP' +
        'AD(MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(SECONDS, 2, '#39'0'#39') AS TIME_WORK_FUL' +
        'L,'
      '        PPWUN.UNIT_TEMP'
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work'
      '      LEFT JOIN plan_pers_normo PPN'
      '              ON PPN.id_work = PPWL.id_work'
      '      INNER JOIN plan_pers_dept PPD '
      '              ON PPWUN.id_dept = PPD.id_dept       '
      '      INNER JOIN plan_pers_workers PPW '
      '              ON PPWUN.tab_num = PPW.tab_num'
      '      INNER JOIN plan_pers_dept PPDU '
      '              ON PPDU.id_dept = PPW.id_division_res_plan        '
      '      LEFT JOIN plan_pers_dolgnost PPDOL '
      '              ON PPW.id_title_res_plan = PPDOL.id_title'
      '      INNER JOIN user_access_dept uad'
      '                 ON uad.id_dept = PPW.ID_DIVISION_RES_PLAN'
      '                 AND uad.id_user = :nom_user'
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99'
      '      '
      'WHERE 1 = 1'
      '  &dept_FILTER  '
      '  &fio_filter'
      '), '
      ''
      'RESULT_TABLE AS('
      '    Select  '
      '        --  operating_day,'
      '            tab_num, '
      '            title_short, '
      '            full_name, '
      '            dept_user, '
      '         -- dept_name_short, '
      '            work_name,'
      '            sum(time_work_sec) as time_work_sec,'
      '         -- avg(perf_one_hours) as  perf_one_hours,'
      '         -- avg(perf_in_perc) as perf_in_perc,'
      '         -- sum(fact) as fact,'
      
        '            --round(sum(fact)/decode(sum(time_work_sec), 0, 1, s' +
        'um(time_work_sec)), 3) as performanceOne,'
      
        '            (sum(fact)/decode(sum(time_work_sec), 0, 1, sum(time' +
        '_work_sec))/AVG(normo) *100) as perfOneInPerc,'
      '            pprwf.weight_performance as weight_performance'
      '          --  AVG(normo),'
      '          --  measure_unit'
      '    From Group_TABLE_for_WORK gtfw'
      '         LEFT JOIN plan_pers_raiting_weight_fact pprwf '
      
        '              On extract(MONTH FROM gtfw.operating_day) = pprwf.' +
        'month_weight'
      
        '                 AND extract(YEAR FROM gtfw.operating_day) = ppr' +
        'wf.year_weight'
      '    Group by tab_num, '
      '             title_short, '
      '             full_name, '
      '             dept_user, '
      '          -- dept_name_short, '
      '             work_name,'
      '         --  operating_day,'
      '             pprwf.weight_performance'
      '          -- measure_unit'
      ')'
      ''
      'Select tab_num, '
      '       title_short, '
      '       full_name, '
      '       dept_user, '
      '       --sum(time_work_sec),'
      '       --ROUND(avg(perf_one_hours), 3) as perf_one_hours,'
      '      -- ROUND(avg(perf_in_perc),3) as perf_in_perc,'
      '      -- sum(fact),'
      
        '       ROUND(sum(time_work_sec*perfOneInPerc*weight_performance)' +
        '/sum(time_work_sec)) as Performance'
      '       '
      '      -- ROUND(avg(performanceOne), 3) as  performanceOne,'
      '      -- ROUND(avg(perfOneInPerc), 3) as perfOneInPerc'
      '      '
      'From RESULT_TABLE'
      '--Where dept_user = '#39#1054#1054#1052#1050#39
      '--      AND full_name = '#39#1040#1085#1094#1077#1088#1077#1074' '#1041#1086#1088#1080#1089' '#1040#1083#1077#1082#1089#1072#1085#1076#1088#1086#1074#1080#1095#39
      '      '
      'Group by tab_num, '
      '         title_short, '
      '         full_name, '
      '         dept_user')
    Left = 1315
    Top = 554
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
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= :date_start'#13#10' AND operating_day <= :date_e' +
          'nd'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND PPW.ID_DIVISION_RES_PLAN = :dept_id'
      end
      item
        Name = 'fio_filter'
        Value = 'AND lower(PPW.FULL_NAME)  like :FIO'
      end>
  end
  object dsRaiting1: TOraDataSource
    DataSet = orqryRaiting1
    Left = 1315
    Top = 530
  end
  object orqryInitiaLData: TOraQuery
    Session = DM_PlanPers.OraSession1
    SQL.Strings = (
      'WITH TAB AS ('
      '    SELECT operating_day,'
      '           id_dept,'
      '           plan,'
      '           fact,'
      '           fact2,'
      '           fact3,'
      '          -- SUM (fact) fact,'
      '          -- SUM (fact2) fact2,'
      '         --  SUM (fact3) fact3,'
      '           user_demande,'
      '           id_work,'
      '           tab_num,'
      '           start_work,'
      '           end_work,'
      '           --MIN (start_work) start_work,'
      '           /*'
      
        '           CASE WHEN MAX (etat) = 100 THEN NULL ELSE MAX (end_wo' +
        'rk) END end_work, */'
      '           unit_temp,'
      '           --MAX (etat) '
      '           etat,'
      '           id_workplace,'
      '           unit_txt'
      '          -- id_shift,'
      '           '
      '         --  MAX (user_completed) user_completed,'
      
        '         --  MAX (id_shift_check_in) id_shift_check_in          ' +
        '         '
      '    FROM plan_pers_work_ungroup_new'
      '    WHERE 1 = 1'
      '          &date_filter '
      
        '         -- AND operating_day >= To_date('#39'13.01.2020'#39', '#39'dd.mm.yy' +
        'yy'#39')'
      
        '       --AND operating_day <= To_date('#39'17.01.2020'#39', '#39'dd.mm.yyyy'#39 +
        ')    '
      '    '
      '),'
      ''
      'PPWUN AS ('
      
        '         Select --ROUND((end_work - start_work)*24, 4) as Time_W' +
        'ork_Sec,'
      '                CASE '
      '                    WHEN (end_work - start_work) = 0'
      '                    THEN 0.5 / 3600'
      '                    ELSE  ROUND((end_work - start_work)* 24, 4)'
      '                END Time_Work_Sec,'
      '                TRUNC(end_work - start_work) as DAYS,'
      '                TRUNC((end_work - start_work) * 24 ) as HOURS,'
      
        '                TRUNC(MOD((end_work - start_work) * 24 * 60, 60)' +
        ') as MINUTES,'
      
        '                ROUND(MOD(MOD((end_work - start_work) * 24 * 360' +
        '0, 3600), 60)) as SECONDS,'
      '                tab.*'
      '         FROM tab       '
      ')'
      ''
      'Select  PPWUN.operating_day,'
      '        PPW.tab_num,'
      '        PPDOL.title_short,'
      '        PPW.FULL_NAME,'
      
        '        PPDU.dept_name_short as DEPT_USER, -- '#1087#1086#1076#1088#1072#1079#1076#1077#1083#1077#1085#1080#1077' '#1089#1086#1090#1088 +
        #1091#1076#1085#1080#1082#1072
      '        PPD.dept_name_short,'
      '        PPWL.WORK_UNIT,'
      '        PPWL.WORK_NAME,'
      '        PPWL.measure_unit,'
      '        PPWUN.FACT,'
      '        PPN.normo,'
      '        PPN.money,'
      '        PPN.normo2,'
      '        PPN.money2,'
      '        PPN.normo3,'
      '        PPN.money3,'
      '        Time_Work_Sec,'
      
        '        ROUND((PPWUN.FACT / DECODE(Time_Work_Sec, 0, 1, NULL, 1,' +
        ' Time_Work_Sec)), 4) as Perf_One_Hours,'
      
        '        ROUND((PPWUN.FACT /DECODE(Time_Work_Sec, 0, 1, NULL, 1, ' +
        'Time_Work_Sec))*100 / PPN.normo , 2) as Perf_In_Perc, '
      '        PPWUN.start_work,'
      '        PPWUN.end_work,'
      
        '        LPAD(DAYS, 2, '#39'0'#39')||'#39':'#39'||LPAD(HOURS, 2, '#39'0'#39')||'#39':'#39'||LPAD(' +
        'MINUTES, 2, '#39'0'#39')||'#39':'#39'||LPAD(SECONDS, 2, '#39'0'#39') AS diff_time,'
      '        PPWUN.UNIT_TEMP'
      '        '
      'From  PPWUN'
      '      INNER JOIN plan_pers_works_list PPWL '
      '              ON PPWUN.id_work = PPWL.id_work '
      '      LEFT JOIN plan_pers_normo PPN'
      '              ON PPN.id_work = PPWL.id_work'
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
      
        '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = PP' +
        'W.ID_SHEDULER_RES_PLAN'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 98'
      '   -- LEFT JOIN plan_pers_workshedule PPWS ON PPWS.num_prod = 99'
      '      '
      'WHERE 1 = 1'
      '      &dept_FILTER'
      '      &deptUSER_filter '
      '      &fio_filter'
      '      &work_filter')
    FetchAll = True
    Left = 1240
    Top = 528
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
      end
      item
        DataType = ftUnknown
        Name = 'WORK_UNIT'
      end>
    MacroData = <
      item
        Name = 'date_filter'
        Value = 
          ' AND operating_day >= :date_start'#13#10' AND operating_day <= :date_e' +
          'nd'
      end
      item
        Name = 'dept_FILTER'
        Value = 'AND PPWUN.id_dept = :dept_id'
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
        Name = 'work_filter'
        Value = 'AND PPWL.work_unit = :WORK_UNIT'
      end>
  end
  object dsInitiaLData: TOraDataSource
    DataSet = orqryInitiaLData
    Left = 1245
    Top = 555
  end
end
