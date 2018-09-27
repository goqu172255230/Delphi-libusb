object Fmmain: TFmmain
  Left = 0
  Top = 0
  Caption = 'FXLoad'
  ClientHeight = 413
  ClientWidth = 620
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 57
    Width = 620
    Height = 356
    Align = alClient
    Lines.Strings = (
      '')
    TabOrder = 0
    ExplicitTop = -6
    ExplicitWidth = 657
    ExplicitHeight = 419
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 620
    Height = 57
    Align = alTop
    Caption = 'Fxload '
    TabOrder = 1
    ExplicitWidth = 657
    object Button1: TButton
      Left = 56
      Top = 16
      Width = 75
      Height = 25
      Caption = 'Run Fxload'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 480
    Top = 8
  end
end
