object FJam: TFJam
  Left = 345
  Top = 186
  Width = 316
  Height = 339
  Caption = 'Jam Digital'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl_dtk: TLabel
    Left = 200
    Top = 112
    Width = 76
    Height = 75
    Caption = '58'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    OnClick = lbl_dtkClick
  end
  object lbl_jam: TLabel
    Left = 24
    Top = 112
    Width = 76
    Height = 75
    Caption = '23'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    OnClick = lbl_dtkClick
  end
  object lbl_mnt: TLabel
    Left = 112
    Top = 112
    Width = 76
    Height = 75
    Caption = '59'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -64
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    OnClick = lbl_dtkClick
  end
  object btn_klik: TBitBtn
    Left = 192
    Top = 224
    Width = 73
    Height = 33
    Caption = 'Klik'
    TabOrder = 0
    OnClick = btn_klikClick
  end
  object btn1: TBitBtn
    Left = 24
    Top = 224
    Width = 73
    Height = 33
    Caption = 'Foto'
    TabOrder = 1
    OnClick = btn1Click
  end
  object pnl_tgl: TPanel
    Left = 24
    Top = 32
    Width = 73
    Height = 73
    Caption = '30'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    OnClick = pnl_tglClick
  end
  object pnl_bln: TPanel
    Left = 112
    Top = 32
    Width = 73
    Height = 73
    Caption = '12'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -48
    Font.Name = 'Arial Rounded MT Bold'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
  end
  object pnl_thn: TPanel
    Left = 200
    Top = 32
    Width = 73
    Height = 73
    Caption = '2016'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -37
    Font.Name = 'Arial Narrow'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
  end
  object pnl_tgl2: TPanel
    Left = 56
    Top = 8
    Width = 201
    Height = 17
    Caption = 'dd-MM-yyyy'
    TabOrder = 5
  end
  object xpmnfst1: TXPManifest
    Left = 128
    Top = 224
  end
end
