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
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_EstudantesClick
    end
  end
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
    object btn_Back: TButton
      Left = 16
      Top = 16
      Width = 153
      Height = 65
      Caption = 'Voltar'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_BackClick
    end
    object lstB_e_Nome: TListBox
      Left = 408
      Top = 192
      Width = 201
      Height = 249
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_e_ID: TListBox
      Left = 370
      Top = 192
      Width = 39
      Height = 249
      Enabled = False
      ExtendedSelect = False
      ItemHeight = 15
      TabOrder = 2
    end
    object btn_Adicionar: TButton
      Left = 310
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btn_AdicionarClick
    end
    object pnl_inputE: TPanel
      Left = 322
      Top = 192
      Width = 343
      Height = 185
      TabOrder = 4
      Visible = False
      object lbl_edt_nome_E: TLabel
        Left = 24
        Top = 67
        Width = 93
        Height = 14
        Caption = 'Digite seu nome:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pnl_inputE: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 335
        Height = 16
        Margins.Top = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de Estudante'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 149
      end
      object edt_nome_E: TEdit
        Left = 24
        Top = 87
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object btn_concluir_inputE: TButton
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Concluir'
        TabOrder = 1
        OnClick = btn_concluir_inputEClick
      end
    end
    object btn_delete_E: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_delete_EClick
    end
    object btn_Edit_E: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Edit_EClick
    end
  end
end
