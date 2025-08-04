object f_Main: Tf_Main
  Left = 0
  Top = 0
  Caption = 'f_Main'
  ClientHeight = 734
  ClientWidth = 1035
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object p_Estudante: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Caption = 'p_Estudante'
    ShowCaption = False
    TabOrder = 1
    Visible = False
    ExplicitLeft = 432
    ExplicitTop = 368
    ExplicitWidth = 185
    ExplicitHeight = 41
  end
  object p_Main: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Color = 15189402
    ParentBackground = False
    TabOrder = 0
    ExplicitLeft = 400
    ExplicitTop = 360
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 480
      Top = 352
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
end
