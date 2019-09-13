object FormDlgExport: TFormDlgExport
  Left = 392
  Top = 222
  Width = 775
  Height = 564
  Caption = 'Export'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 511
    Width = 767
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 34
    Width = 767
    Height = 233
    ActivePage = TabSheetSQLExport
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabIndex = 1
    TabOrder = 1
    object TabSheetCSVExport: TTabSheet
      Caption = 'CSV Export (f'#252'r MS-Excel / OO-Calc )'
      object Label2: TLabel
        Left = 8
        Top = 0
        Width = 32
        Height = 13
        Caption = 'Label2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label3: TLabel
        Left = 8
        Top = 88
        Width = 137
        Height = 13
        Caption = 'Spalten Anfang unf Ende . . .'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 114
        Width = 94
        Height = 13
        Caption = 'Spalten Trenner . . .'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn1: TBitBtn
        Left = 8
        Top = 144
        Width = 153
        Height = 25
        Caption = 'Export'
        TabOrder = 0
        OnClick = BitBtn1Click
      end
      object BitBtn2: TBitBtn
        Left = 176
        Top = 143
        Width = 225
        Height = 25
        Caption = 'Export Vorschau'
        TabOrder = 1
        OnClick = BitBtn2Click
      end
      object EditWordStartEnd: TEdit
        Left = 146
        Top = 84
        Width = 63
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        Text = '"'
      end
      object EditDelimeter: TEdit
        Left = 146
        Top = 110
        Width = 63
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = ','
      end
      object ComboBoxSucheRech: TComboBox
        Left = 4
        Top = 49
        Width = 349
        Height = 22
        Style = csOwnerDrawFixed
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ItemHeight = 16
        ItemIndex = 0
        ParentFont = False
        TabOrder = 4
        Text = 'Detail Filter'
        OnSelect = ComboBoxSucheRechSelect
        Items.Strings = (
          'Detail Filter')
      end
    end
    object TabSheetSQLExport: TTabSheet
      Caption = 'SQL Export'
      ImageIndex = 1
      object Label5: TLabel
        Left = 24
        Top = 64
        Width = 137
        Height = 13
        Caption = 'Spalten Anfang unf Ende . . .'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object Label6: TLabel
        Left = 24
        Top = 90
        Width = 94
        Height = 13
        Caption = 'Spalten Trenner . . .'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
      end
      object BitBtn3: TBitBtn
        Left = 8
        Top = 144
        Width = 153
        Height = 25
        Caption = 'Export'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 176
        Top = 143
        Width = 225
        Height = 25
        Caption = 'Export Vorschau'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object CheckBoxStripEnters: TCheckBox
        Left = 24
        Top = 16
        Width = 265
        Height = 17
        Caption = 'Ohne Zeilenumbr'#252'che'
        TabOrder = 2
      end
      object EditMySQLTrimer: TEdit
        Left = 162
        Top = 86
        Width = 63
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        Text = ','
      end
      object EditMySQLStartEnd: TEdit
        Left = 162
        Top = 60
        Width = 63
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        Text = '`'
      end
    end
    object TabSheetGDPDU_Export: TTabSheet
      Caption = 'GDPDU Export (Audicon)'
      ImageIndex = 2
    end
  end
  object Memo1: TMemo
    Left = 0
    Top = 337
    Width = 767
    Height = 174
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Lines.Strings = (
      '')
    ParentFont = False
    ScrollBars = ssBoth
    TabOrder = 2
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 767
    Height = 34
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 3
    object Label1: TLabel
      Left = 8
      Top = 8
      Width = 71
      Height = 16
      Caption = 'TABELLE '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object ComboBoxFocusedExportTables: TComboBox
      Left = 86
      Top = 5
      Width = 259
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = []
      ItemHeight = 16
      ParentFont = False
      TabOrder = 0
      Text = '- TABELLE -'
      OnSelect = ComboBoxFocusedExportTablesSelect
      Items.Strings = (
        '- TABELLE -'
        'ARCAS_Angestellte'
        'ARCAS_Angestellte_Arbeitsstunden'
        'ARCAS_Artikel'
        'ARCAS_Kassenjournal'
        'ARCAS_Kontorahmen'
        'ARCAS_Kunden'
        'ARCAS_KundenAkt '
        'ARCAS_KundenPersonen '
        'ARCAS_Lieferanten'
        'ARCAS_Lieferscheine '
        'ARCAS_LieferscheinPOS '
        'ARCAS_Logbuch'
        'ARCAS_RechnungPOS'
        'ARCAS_Rechnungen'
        'ARCAS_RechnungenStatus'
        'ARCAS_Schriftverkehr'
        'ARCAS_SchriftverkehrPOS'
        'ARCAS_SchriftverkehrStatus'
        'ARCAS_Schriftverkehr_MN_Rechnungen '
        'ARCAS_Schriftformen '
        'ARCAS_Stammdaten '
        'ARCAS_Steuersaetze '
        'ARCAS_Textbausteine '
        'ARCAS_ZBON'
        'ARCAS_Druckschablonen ')
    end
  end
  object MemoExcSQL: TMemo
    Left = 0
    Top = 267
    Width = 767
    Height = 70
    Align = alTop
    Color = clBtnFace
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    Lines.Strings = (
      'Executed SQL')
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 4
  end
end
