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
    object btn_Estudantes: TButton
      Left = 784
      Top = 136
      Width = 145
      Height = 65
      Caption = 'Estudantes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_EstudantesClick
    end
  end
end
