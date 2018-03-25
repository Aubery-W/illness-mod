object frmProperties: TfrmProperties
  Left = 917
  Top = 284
  BorderStyle = bsDialog
  Caption = 'Device Properties'
  ClientHeight = 360
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 8
    Top = 8
    Width = 417
    Height = 337
    ActivePage = TabSheet1
    Align = alCustom
    TabIndex = 0
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Properties'
      object GroupBox1: TGroupBox
        Left = 8
        Top = 8
        Width = 393
        Height = 65
        Caption = 'Scalar Features'
        TabOrder = 0
        object LabelShutterMin: TLabel
          Left = 16
          Top = 16
          Width = 6
          Height = 13
          Caption = '1'
        end
        object LabelShutterMax: TLabel
          Left = 127
          Top = 15
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = '100'
        end
        object LabelGainMin: TLabel
          Left = 200
          Top = 16
          Width = 6
          Height = 13
          Caption = '1'
        end
        object LabelGainMax: TLabel
          Left = 312
          Top = 16
          Width = 18
          Height = 13
          Caption = '100'
        end
        object Label5: TLabel
          Left = 64
          Top = 16
          Width = 34
          Height = 13
          Alignment = taCenter
          Caption = 'Shutter'
        end
        object Label6: TLabel
          Left = 256
          Top = 16
          Width = 22
          Height = 13
          Alignment = taCenter
          Caption = 'Gain'
        end
        object HScrollShutter: TScrollBar
          Left = 16
          Top = 32
          Width = 129
          Height = 17
          PageSize = 0
          TabOrder = 0
          OnScroll = HScrollShutterScroll
        end
        object TextShutter: TEdit
          Left = 152
          Top = 32
          Width = 41
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          TabOrder = 1
          OnExit = TextShutterExit
          OnKeyDown = TextShutterKeyDown
        end
        object HScrollGain: TScrollBar
          Left = 200
          Top = 32
          Width = 129
          Height = 17
          PageSize = 0
          TabOrder = 2
          OnScroll = HScrollGainScroll
        end
        object TextGain: TEdit
          Left = 336
          Top = 32
          Width = 41
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          TabOrder = 3
          OnExit = TextGainExit
          OnKeyDown = TextGainKeyDown
        end
      end
      object WhiteBalance: TGroupBox
        Left = 8
        Top = 80
        Width = 393
        Height = 65
        Caption = 'White Balance'
        TabOrder = 1
        object LabelUMin: TLabel
          Left = 16
          Top = 16
          Width = 6
          Height = 13
          Caption = '1'
        end
        object LabelUMax: TLabel
          Left = 127
          Top = 15
          Width = 18
          Height = 13
          Alignment = taRightJustify
          Caption = '100'
        end
        object LabelVMin: TLabel
          Left = 200
          Top = 16
          Width = 6
          Height = 13
          Caption = '1'
        end
        object LabelVMax: TLabel
          Left = 312
          Top = 16
          Width = 18
          Height = 13
          Caption = '100'
        end
        object Label7: TLabel
          Left = 88
          Top = 16
          Width = 8
          Height = 13
          Alignment = taCenter
          Caption = 'U'
        end
        object Label8: TLabel
          Left = 272
          Top = 16
          Width = 7
          Height = 13
          Alignment = taCenter
          Caption = 'V'
        end
        object HScrollU: TScrollBar
          Left = 16
          Top = 32
          Width = 129
          Height = 17
          PageSize = 0
          TabOrder = 0
          OnScroll = HScrollUScroll
        end
        object TextU: TEdit
          Left = 152
          Top = 32
          Width = 41
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          TabOrder = 1
          OnExit = TextUExit
          OnKeyDown = TextUKeyDown
        end
        object HScrollV: TScrollBar
          Left = 200
          Top = 32
          Width = 129
          Height = 17
          PageSize = 0
          TabOrder = 2
          OnScroll = HScrollVScroll
        end
        object TextV: TEdit
          Left = 336
          Top = 32
          Width = 41
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          TabOrder = 3
          OnExit = TextVExit
          OnKeyDown = TextVKeyDown
        end
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 152
        Width = 209
        Height = 49
        Caption = 'Video Mode'
        TabOrder = 2
        object ComboVideoMode: TComboBox
          Left = 8
          Top = 16
          Width = 193
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboVideoModeChange
        end
      end
      object GroupBox3: TGroupBox
        Left = 232
        Top = 152
        Width = 169
        Height = 49
        Caption = 'ADC Level'
        TabOrder = 3
        object ComboADCLevel: TComboBox
          Left = 8
          Top = 16
          Width = 145
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboADCLevelChange
        end
      end
      object GroupBox4: TGroupBox
        Left = 8
        Top = 208
        Width = 209
        Height = 89
        Caption = 'Bayer Conversion'
        TabOrder = 4
        object Label1: TLabel
          Left = 8
          Top = 24
          Width = 65
          Height = 13
          Caption = 'Bayer to RGB'
        end
        object Label2: TLabel
          Left = 8
          Top = 56
          Width = 80
          Height = 13
          Caption = 'Conversion Type'
        end
        object ComboBayerToRGB: TComboBox
          Left = 104
          Top = 24
          Width = 97
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          ItemHeight = 13
          TabOrder = 0
          OnChange = ComboBayerToRGBChange
        end
        object ComboConversionType: TComboBox
          Left = 104
          Top = 56
          Width = 97
          Height = 21
          ImeName = #20013#25991' ('#31616#20307') - '#25340#38899#21152#21152
          ItemHeight = 13
          TabOrder = 1
          OnChange = ComboConversionTypeChange
        end
      end
    end
  end
end
