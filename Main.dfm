object MainFrm: TMainFrm
  Left = 270
  Top = 113
  BorderWidth = 2
  Caption = 'HVRealtime'
  ClientHeight = 773
  ClientWidth = 1147
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnMouseDown = FormMouseDown
  PixelsPerInch = 120
  TextHeight = 16
  object Label1: TLabel
    Left = 974
    Top = 549
    Width = 59
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BiDiMode = bdRightToLeft
    Caption = #37319#26679#38388#38548'/s'
    ParentBiDiMode = False
  end
  object Label2: TLabel
    Left = 968
    Top = 581
    Width = 36
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = #28857#24179#22343
  end
  object Label3: TLabel
    Left = 962
    Top = 500
    Width = 47
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BiDiMode = bdRightToLeft
    Caption = #24635#26102#38388'/s'
    ParentBiDiMode = False
  end
  object Label4: TLabel
    Left = 1055
    Top = 420
    Width = 48
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BiDiMode = bdRightToLeft
    Caption = #27700#24179#20301#32622
    ParentBiDiMode = False
  end
  object Label5: TLabel
    Left = 1055
    Top = 457
    Width = 48
    Height = 16
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BiDiMode = bdRightToLeft
    Caption = #22402#30452#20301#32622
    ParentBiDiMode = False
  end
  object BitBtn1: TBitBtn
    Left = 874
    Top = 610
    Width = 92
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'START'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
    OnClick = BitBtn1Click
  end
  object StatusBar: TStatusBar
    Left = 0
    Top = 748
    Width = 1147
    Height = 25
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    BorderWidth = 1
    Panels = <
      item
        BiDiMode = bdLeftToRight
        ParentBiDiMode = False
        Text = #37319#26679#39057#29575'::00.00'
        Width = 100
      end
      item
        Text = #20445#23384#25968#30446'::0000'
        Width = 100
      end
      item
        Text = 'BMP'#25991#20214#21517
        Width = 100
      end
      item
        Text = #22352#26631#20301#32622
        Width = 180
      end
      item
        Width = 220
      end>
  end
  object Btn_BmpProb: TBitBtn
    Left = 994
    Top = 610
    Width = 92
    Height = 31
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Caption = 'PROB'
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 2
    OnClick = Btn_BmpProbClick
  end
  object Edit_Time_Delay: TEdit
    Left = 874
    Top = 546
    Width = 70
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 3
    Text = '1'
  end
  object Edit_NUM_SMOOTH: TEdit
    Left = 874
    Top = 578
    Width = 70
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 4
    Text = '5'
  end
  object Edit_Time_Length: TEdit
    Left = 874
    Top = 497
    Width = 70
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 5
    Text = '5'
  end
  object Edit2: TEdit
    Left = 952
    Top = 417
    Width = 45
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 6
    Text = '5'
  end
  object Edit3: TEdit
    Left = 874
    Top = 449
    Width = 45
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 7
    Text = '5'
  end
  object Edit1: TEdit
    Left = 874
    Top = 417
    Width = 45
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 8
    Text = '5'
  end
  object Edit4: TEdit
    Left = 952
    Top = 449
    Width = 45
    Height = 24
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    TabOrder = 9
    Text = '5'
  end
  object MainMenu1: TMainMenu
    Left = 40
    Top = 65528
    object Snap1: TMenuItem
      Caption = 'Snap'
      object Open1: TMenuItem
        Caption = 'Open'
        GroupIndex = 1
        OnClick = Open1Click
      end
      object Start1: TMenuItem
        Caption = 'Start'
        GroupIndex = 1
        OnClick = Start1Click
      end
      object Stop1: TMenuItem
        Caption = 'Stop'
        GroupIndex = 1
        OnClick = Stop1Click
      end
      object Close1: TMenuItem
        Caption = 'Close'
        GroupIndex = 1
        OnClick = Close1Click
      end
      object N1: TMenuItem
        Caption = '-'
        GroupIndex = 1
      end
      object Negative1: TMenuItem
        Caption = 'Negative'
        GroupIndex = 2
        OnClick = Negative1Click
      end
    end
    object N2: TMenuItem
      Caption = 'SaveBmp'
      object StartSave1: TMenuItem
        Caption = 'StartSave'
        OnClick = StartSave1Click
      end
      object StopSave1: TMenuItem
        Caption = 'StopSave'
        OnClick = StopSave1Click
      end
    end
  end
  object SaveDialog1: TSaveDialog
    Left = 72
    Top = 65528
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 104
    Top = 65528
  end
end
