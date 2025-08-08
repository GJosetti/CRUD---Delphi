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
    object btn_Back_E: TButton
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
      OnClick = btn_Back_EClick
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
        Width = 132
        Height = 14
        Caption = 'Digite o nome do aluno:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pnl_input_E: TLabel
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
    object btn_Remover_E: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_Remover_EClick
    end
    object btn_Editar_E: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Editar_EClick
    end
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
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btn_EstudantesClick
    end
    object btn_Professores: TButton
      Left = 784
      Top = 232
      Width = 145
      Height = 65
      Caption = 'Professores'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btn_ProfessoresClick
    end
  end
  object p_Professor: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Caption = 'p_Estudante'
    ShowCaption = False
    TabOrder = 2
    Visible = False
    ExplicitLeft = -56
    ExplicitTop = 160
    object btn_Back_P: TButton
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
      OnClick = btn_Back_EClick
    end
    object lstB_p_Nome: TListBox
      Left = 326
      Top = 208
      Width = 197
      Height = 249
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_p_ID: TListBox
      Left = 289
      Top = 208
      Width = 39
      Height = 249
      Enabled = False
      ExtendedSelect = False
      ItemHeight = 15
      TabOrder = 2
    end
    object btn_Adicionar_P: TButton
      Left = 310
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btn_Adicionar_PClick
    end
    object btn_Remover_P: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_Remover_PClick
    end
    object btn_Editar_P: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Editar_PClick
    end
    object lstB_p_CPF: TListBox
      Left = 511
      Top = 208
      Width = 201
      Height = 249
      ItemHeight = 15
      TabOrder = 7
    end
    object pnl_inputP: TPanel
      Left = 322
      Top = 192
      Width = 343
      Height = 185
      TabOrder = 4
      Visible = False
      object lbl_edt_nome_P: TLabel
        Left = 24
        Top = 67
        Width = 153
        Height = 14
        Caption = 'Digite o nome do professor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pnl_input_P: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 335
        Height = 16
        Margins.Top = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de Professor'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitLeft = 0
      end
      object lbl_edt_CPF_P: TLabel
        Left = 24
        Top = 116
        Width = 142
        Height = 14
        Caption = 'Digite o CPF do professor:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edt_nome_P: TEdit
        Left = 24
        Top = 87
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object btn_concluir_inputP: TButton
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Concluir'
        TabOrder = 1
        OnClick = btn_concluir_inputPClick
      end
      object edt_CPF_P: TEdit
        Left = 24
        Top = 136
        Width = 121
        Height = 23
        TabOrder = 2
      end
    end
  end
end
