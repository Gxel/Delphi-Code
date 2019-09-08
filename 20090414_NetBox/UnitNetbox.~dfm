object FormNetbox: TFormNetbox
  Left = 306
  Top = 143
  BorderStyle = bsNone
  Caption = 'FormNetbox'
  ClientHeight = 512
  ClientWidth = 547
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnClose = FormClose
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object EditCode: TEdit
    Left = 75
    Top = 4
    Width = 134
    Height = 17
    BorderStyle = bsNone
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnChange = EditCodeChange
  end
  object EditCounter: TEdit
    Left = 4
    Top = 4
    Width = 61
    Height = 17
    BorderStyle = bsNone
    Color = clInfoBk
    DragCursor = crDefault
    Enabled = False
    ReadOnly = True
    TabOrder = 1
  end
  object BitBtnOK: TBitBtn
    Left = 216
    Top = 3
    Width = 41
    Height = 21
    TabOrder = 2
    OnClick = BitBtnOKClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
      5000555555555555577755555555555550B0555555555555F7F7555555555550
      00B05555555555577757555555555550B3B05555555555F7F557555555555000
      3B0555555555577755755555555500B3B0555555555577555755555555550B3B
      055555FFFF5F7F5575555700050003B05555577775777557555570BBB00B3B05
      555577555775557555550BBBBBB3B05555557F555555575555550BBBBBBB0555
      55557F55FF557F5555550BB003BB075555557F577F5575F5555577B003BBB055
      555575F7755557F5555550BB33BBB0555555575F555557F555555507BBBB0755
      55555575FFFF7755555555570000755555555557777775555555}
    NumGlyphs = 2
  end
  object PageControlAdminBox: TPageControl
    Left = 8
    Top = 72
    Width = 529
    Height = 433
    ActivePage = TabSheetOptions
    TabIndex = 0
    TabOrder = 3
    Visible = False
    OnChange = PageControlAdminBoxChange
    object TabSheetOptions: TTabSheet
      Caption = 'Options'
      object BitBtn2: TBitBtn
        Left = 14
        Top = 8
        Width = 163
        Height = 25
        Caption = 'Programm exit'
        TabOrder = 0
        OnClick = BitBtn2Click
      end
      object GroupBoxAdminPass: TGroupBox
        Left = 16
        Top = 56
        Width = 161
        Height = 121
        Caption = 'Administrator Passwort'
        TabOrder = 1
        object cEdit: TEdit
          Left = 16
          Top = 24
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 0
          Text = 'cEdit'
        end
        object vEdit: TEdit
          Left = 16
          Top = 48
          Width = 121
          Height = 21
          PasswordChar = '*'
          TabOrder = 1
          Text = 'vEdit'
        end
        object BitBtnSetPass: TBitBtn
          Left = 16
          Top = 80
          Width = 121
          Height = 25
          Caption = 'set password'
          TabOrder = 2
          OnClick = BitBtnSetPassClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
            555555555555555555555555555555555555555555FF55555555555559055555
            55555555577FF5555555555599905555555555557777F5555555555599905555
            555555557777FF5555555559999905555555555777777F555555559999990555
            5555557777777FF5555557990599905555555777757777F55555790555599055
            55557775555777FF5555555555599905555555555557777F5555555555559905
            555555555555777FF5555555555559905555555555555777FF55555555555579
            05555555555555777FF5555555555557905555555555555777FF555555555555
            5990555555555555577755555555555555555555555555555555}
          NumGlyphs = 2
        end
      end
    end
    object TabSheetGenerator: TTabSheet
      Caption = 'TAN Generator'
      ImageIndex = 1
      object GroupBox1: TGroupBox
        Left = 3
        Top = 8
        Width = 513
        Height = 393
        Caption = 'TAN Generator '
        TabOrder = 0
        DesignSize = (
          513
          393)
        object Label1: TLabel
          Left = 24
          Top = 32
          Width = 54
          Height = 13
          Caption = 'TAN codes'
        end
        object Label2: TLabel
          Left = 24
          Top = 56
          Width = 57
          Height = 13
          Caption = 'TAN lenghe'
        end
        object LabelGenTanProcess: TLabel
          Left = 24
          Top = 104
          Width = 27
          Height = 13
          Caption = '0 of 0'
        end
        object LabelTanCount: TLabel
          Left = 64
          Top = 364
          Width = 73
          Height = 13
          Caption = 'LabelTanCount'
        end
        object Label3: TLabel
          Left = 24
          Top = 364
          Width = 32
          Height = 13
          Caption = 'TANS:'
        end
        object ProgressBar1: TProgressBar
          Left = 24
          Top = 80
          Width = 473
          Height = 17
          Anchors = [akLeft, akTop, akRight]
          Min = 0
          Max = 100
          TabOrder = 0
        end
        object SpinEditTanCount: TSpinEdit
          Left = 96
          Top = 27
          Width = 73
          Height = 22
          Increment = 100
          MaxValue = 10000000
          MinValue = 100
          TabOrder = 1
          Value = 100
        end
        object SpinEditChars: TSpinEdit
          Tag = 1
          Left = 96
          Top = 51
          Width = 73
          Height = 22
          MaxValue = 250
          MinValue = 3
          TabOrder = 2
          Value = 5
        end
        object BitBtn1: TBitBtn
          Left = 190
          Top = 37
          Width = 137
          Height = 25
          Caption = 'Generate TAN List'
          TabOrder = 3
          OnClick = BitBtn1Click
        end
        object PageControlTanLists: TPageControl
          Left = 24
          Top = 136
          Width = 473
          Height = 217
          ActivePage = TabSheetTAN1
          TabIndex = 0
          TabOrder = 4
          OnChange = PageControlTanListsChange
          object TabSheetTAN1: TTabSheet
            Caption = 'TAN12'
            object MemoTAN1: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheetTAN2: TTabSheet
            Caption = 'TAN2'
            ImageIndex = 1
            object MemoTAN2: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheetTAN3: TTabSheet
            Caption = 'TAN3'
            ImageIndex = 2
            object MemoTAN3: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheetTAN4: TTabSheet
            Caption = 'TAN4'
            ImageIndex = 3
            object MemoTAN4: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheetTAN5: TTabSheet
            Caption = 'TAN5'
            ImageIndex = 4
            object MemoTAN5: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
          object TabSheetTAN6: TTabSheet
            Caption = 'TAN6'
            ImageIndex = 5
            object MemoTAN6: TMemo
              Left = 0
              Top = 0
              Width = 465
              Height = 189
              Align = alClient
              ReadOnly = True
              ScrollBars = ssVertical
              TabOrder = 0
            end
          end
        end
        object BitBtnPrint: TBitBtn
          Left = 416
          Top = 360
          Width = 75
          Height = 25
          TabOrder = 5
          OnClick = BitBtnPrintClick
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00300000000000
            00033FFFFFFFFFFFFFFF0888888888888880777777777777777F088888888888
            8880777777777777777F0000000000000000FFFFFFFFFFFFFFFF0F8F8F8F8F8F
            8F80777777777777777F08F8F8F8F8F8F9F0777777777777777F0F8F8F8F8F8F
            8F807777777777777F7F0000000000000000777777777777777F3330FFFFFFFF
            03333337F3FFFF3F7F333330F0000F0F03333337F77773737F333330FFFFFFFF
            03333337F3FF3FFF7F333330F00F000003333337F773777773333330FFFF0FF0
            33333337F3FF7F3733333330F08F0F0333333337F7737F7333333330FFFF0033
            33333337FFFF7733333333300000033333333337777773333333}
          NumGlyphs = 2
        end
        object btnRefresh: TBitBtn
          Left = 328
          Top = 360
          Width = 75
          Height = 25
          TabOrder = 6
          OnClick = btnRefreshClick
          Glyph.Data = {
            66010000424D6601000000000000760000002800000014000000140000000100
            040000000000F000000000000000000000001000000000000000000000000000
            8000008000000080800080000000800080008080000080808000C0C0C0000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            11111133000033330000000099999933000033330FFFFFFF9999933300003331
            10F0F0F09999133300003390000FFFFF9999913300003390FF800000998F9911
            00009910F9FFFFFF9F00099100009910FFFFFFFFFFFFF9910000991300000000
            0000099100009913330000000003399100009913330FFFFFFF03399100009913
            330F00000F03399100009913330F0CCC0F03399100003391330F0CCC0F039911
            00003399130F00000F09913300003339910FFFFFFF0913330000333399000000
            0001333300003333999999999991333300003333333999999333333300003333
            33333333333333330000}
        end
      end
    end
    object TabSheetMS: TTabSheet
      Caption = 'Microsoft Windows'
      ImageIndex = 2
      object CheckBoxNotRegistrie: TCheckBox
        Left = 24
        Top = 24
        Width = 225
        Height = 17
        Caption = 'Registrie aufruf sperren'
        TabOrder = 0
        OnClick = CheckBoxNotRegistrieClick
      end
      object CheckBoxTaskManagerSperren: TCheckBox
        Left = 24
        Top = 56
        Width = 225
        Height = 17
        Caption = 'Task Manager aufruf sperren'
        TabOrder = 1
        OnClick = CheckBoxTaskManagerSperrenClick
      end
      object CheckBoxBildschirmeigenschaftenSperren: TCheckBox
        Left = 24
        Top = 88
        Width = 97
        Height = 17
        Caption = 'Bildschirmeigenschaften Sperren'
        TabOrder = 2
        OnClick = CheckBoxBildschirmeigenschaftenSperrenClick
      end
    end
    object tsTest: TTabSheet
      Caption = 'Test'
      ImageIndex = 3
      object BitBtn3: TBitBtn
        Left = 16
        Top = 40
        Width = 153
        Height = 25
        Caption = 'Close process'
        TabOrder = 0
        OnClick = BitBtn3Click
      end
      object BitBtn4: TBitBtn
        Left = 16
        Top = 72
        Width = 153
        Height = 25
        Caption = 'Beep'
        TabOrder = 1
        OnClick = BitBtn4Click
      end
      object BitBtn5: TBitBtn
        Left = 16
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 2
        OnClick = BitBtn5Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
          00333337777777777733333308033308033333337F7F337F7F33333308033308
          033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
          7333333373F77733733333333088888033333333373FFFF73333333333000003
          3333333333777773333333333333333333333333333333333333}
        NumGlyphs = 2
      end
      object BitBtn6: TBitBtn
        Left = 96
        Top = 8
        Width = 75
        Height = 25
        TabOrder = 3
        OnClick = BitBtn6Click
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
          333333333F777773FF333333008888800333333377333F3773F3333077870787
          7033333733337F33373F3308888707888803337F33337F33337F330777880887
          7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
          7703337F33377733337FB3088888888888033373FFFFFFFFFF733B3000000000
          0033333777777777773333BBBB3333080333333333F3337F7F33BBBB707BB308
          03333333373F337F7F3333BB08033308033333337F7F337F7F333B3B08033308
          033333337F73FF737F33B33B778000877333333373F777337333333B30888880
          33333333373FFFF73333333B3300000333333333337777733333}
        NumGlyphs = 2
      end
    end
  end
  object BitBtnLook: TBitBtn
    Left = 265
    Top = 3
    Width = 40
    Height = 21
    TabOrder = 4
    OnClick = BitBtnLookClick
    Glyph.Data = {
      76010000424D7601000000000000760000002800000020000000100000000100
      04000000000000010000120B0000120B00001000000000000000000000000000
      800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
      FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000003
      333333333F777773FF333333008888800333333377333F3773F3333077870787
      7033333733337F33373F3308888707888803337F33337F33337F330777880887
      7703337F33337FF3337F3308888000888803337F333777F3337F330777700077
      7703337F33377733337F33088888888888033373FFFFFFFFFF73333000000000
      00333337777777777733333308033308033333337F7F337F7F33333308033308
      033333337F7F337F7F33333308033308033333337F73FF737F33333377800087
      7333333373F77733733333333088888033333333373FFFF73333333333000003
      3333333333777773333333333333333333333333333333333333}
    NumGlyphs = 2
  end
  object TimerCounter: TTimer
    Enabled = False
    OnTimer = TimerCounterTimer
    Left = 40
    Top = 336
  end
  object TimerSysTray: TTimer
    Interval = 1
    OnTimer = TimerSysTrayTimer
    Left = 40
    Top = 384
  end
  object TimerRefresher: TTimer
    Interval = 10000
    OnTimer = TimerRefresherTimer
    Left = 40
    Top = 440
  end
end
