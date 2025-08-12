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
    object lbl_Professores: TLabel
      Left = 1
      Top = 1
      Width = 1033
      Height = 61
      Align = alTop
      Alignment = taCenter
      Caption = 'Professor'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 195
    end
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
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_p_ID: TListBox
      Left = 289
      Top = 208
      Width = 39
      Height = 249
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
      Enabled = False
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
        ExplicitWidth = 146
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
  object p_Disciplina: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Caption = 'p_Estudante'
    ShowCaption = False
    TabOrder = 3
    Visible = False
    object lbl_Disciplina: TLabel
      Left = 1
      Top = 1
      Width = 1033
      Height = 61
      Align = alTop
      Alignment = taCenter
      Caption = 'Disciplinas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 223
    end
    object btn_Back_D: TButton
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
    object lstB_d_Nome: TListBox
      Left = 408
      Top = 192
      Width = 201
      Height = 249
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_d_ID: TListBox
      Left = 370
      Top = 192
      Width = 39
      Height = 249
      ExtendedSelect = False
      ItemHeight = 15
      TabOrder = 2
    end
    object btn_Adicionar_D: TButton
      Left = 310
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btn_Adicionar_DClick
    end
    object pnl_inputD: TPanel
      Left = 322
      Top = 192
      Width = 343
      Height = 185
      TabOrder = 4
      Visible = False
      object lbl_edt_nome_D: TLabel
        Left = 24
        Top = 67
        Width = 148
        Height = 14
        Caption = 'Digite o nome da disciplina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pnl_input_D: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 335
        Height = 16
        Margins.Top = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de Disciplina'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 142
      end
      object edt_nome_D: TEdit
        Left = 24
        Top = 87
        Width = 121
        Height = 23
        TabOrder = 0
      end
      object btn_concluir_inputD: TButton
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Concluir'
        TabOrder = 1
        OnClick = btn_concluir_inputDClick
      end
    end
    object btn_Remover_D: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_Remover_DClick
    end
    object btn_Editar_D: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Editar_DClick
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
    object lbl_Estudante: TLabel
      Left = 1
      Top = 1
      Width = 1033
      Height = 61
      Align = alTop
      Alignment = taCenter
      Caption = 'Estudantes'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 229
    end
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
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_e_ID: TListBox
      Left = 370
      Top = 192
      Width = 39
      Height = 249
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
  object p_Turma: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Caption = 'p_Estudante'
    ShowCaption = False
    TabOrder = 4
    Visible = False
    object lbl_Turmas: TLabel
      Left = 1
      Top = 1
      Width = 1033
      Height = 61
      Align = alTop
      Alignment = taCenter
      Caption = 'Turmas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 155
    end
    object btn_Back_T: TButton
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
    object lstB_t_Professor: TListBox
      Left = 400
      Top = 192
      Width = 115
      Height = 249
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_t_ID: TListBox
      Left = 362
      Top = 192
      Width = 39
      Height = 249
      ExtendedSelect = False
      ItemHeight = 15
      TabOrder = 2
    end
    object btn_Adicionar_T: TButton
      Left = 310
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btn_Adicionar_TClick
    end
    object btn_Remover_T: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_Remover_TClick
    end
    object btn_Editar_T: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Editar_TClick
    end
    object lstb_t_Disciplina: TListBox
      Left = 511
      Top = 192
      Width = 115
      Height = 249
      Enabled = False
      ItemHeight = 15
      TabOrder = 7
    end
    object pnl_inputT: TPanel
      Left = 322
      Top = 192
      Width = 343
      Height = 217
      TabOrder = 4
      Visible = False
      object lbl_cB_professor_T: TLabel
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
      object lbl_pnl_input_T: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 335
        Height = 16
        Margins.Top = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de Turma'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 123
      end
      object lbl_cB_disciplina_T: TLabel
        Left = 24
        Top = 145
        Width = 148
        Height = 14
        Caption = 'Digite o nome da disciplina:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_concluir_inputT: TButton
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Concluir'
        TabOrder = 0
        OnClick = btn_concluir_inputTClick
      end
      object cB_professor_T: TComboBox
        Left = 24
        Top = 87
        Width = 145
        Height = 23
        TabOrder = 1
      end
      object cb_disciplina_T: TComboBox
        Left = 24
        Top = 165
        Width = 145
        Height = 23
        TabOrder = 2
      end
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
    OnClick = p_MainClick
    ExplicitLeft = -1
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
    object btn_Disciplinas: TButton
      Left = 784
      Top = 321
      Width = 145
      Height = 65
      Caption = 'Disciplinas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_DisciplinasClick
    end
    object btn_Turmas: TButton
      Left = 784
      Top = 425
      Width = 145
      Height = 65
      Caption = 'Turmas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btn_TurmasClick
    end
    object btn_Matriculas: TButton
      Left = 784
      Top = 513
      Width = 145
      Height = 65
      Caption = 'Matr'#237'culas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btn_MatriculasClick
    end
  end
  object p_Matricula: TPanel
    Left = 0
    Top = 0
    Width = 1035
    Height = 734
    Align = alClient
    Caption = 'p_Estudante'
    ShowCaption = False
    TabOrder = 5
    Visible = False
    ExplicitLeft = 64
    ExplicitTop = 87
    object lbl_Matriculas: TLabel
      Left = 1
      Top = 1
      Width = 1033
      Height = 61
      Align = alTop
      Alignment = taCenter
      Caption = 'Matriculas'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -48
      Font.Name = 'Franklin Gothic Medium'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 215
    end
    object btn_Back_M: TButton
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
    object lstB_m_Estudante: TListBox
      Left = 400
      Top = 192
      Width = 115
      Height = 249
      Enabled = False
      ItemHeight = 15
      TabOrder = 1
    end
    object lstB_m_ID: TListBox
      Left = 362
      Top = 192
      Width = 39
      Height = 249
      ExtendedSelect = False
      ItemHeight = 15
      TabOrder = 2
    end
    object btn_Adicionar_M: TButton
      Left = 310
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Adicionar'
      TabOrder = 3
      OnClick = btn_Adicionar_MClick
    end
    object btn_Remover_M: TButton
      Left = 440
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Remover'
      TabOrder = 5
      OnClick = btn_Remover_MClick
    end
    object btn_Editar_M: TButton
      Left = 578
      Top = 472
      Width = 99
      Height = 33
      Caption = 'Editar'
      TabOrder = 6
      OnClick = btn_Editar_MClick
    end
    object lstB_m_Turma: TListBox
      Left = 511
      Top = 192
      Width = 115
      Height = 249
      Enabled = False
      ItemHeight = 15
      TabOrder = 7
    end
    object pnl_inputM: TPanel
      Left = 322
      Top = 192
      Width = 343
      Height = 217
      TabOrder = 4
      Visible = False
      object lbl_cb_estudante_M: TLabel
        Left = 24
        Top = 67
        Width = 159
        Height = 14
        Caption = 'Digite o nome do estudante:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbl_pnl_input_M: TLabel
        AlignWithMargins = True
        Left = 4
        Top = 16
        Width = 335
        Height = 16
        Margins.Top = 15
        Align = alTop
        Alignment = taCenter
        Caption = 'Cadastro de Matr'#237'cula'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ExplicitWidth = 143
      end
      object lbl_cb_turma_M: TLabel
        Left = 24
        Top = 145
        Width = 134
        Height = 14
        Caption = 'Digite o nome da turma:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object btn_concluir_inputM: TButton
        Left = 256
        Top = 152
        Width = 75
        Height = 25
        Caption = 'Concluir'
        TabOrder = 0
        OnClick = btn_concluir_inputTClick
      end
      object cb_estudante_M: TComboBox
        Left = 24
        Top = 87
        Width = 145
        Height = 23
        TabOrder = 1
      end
      object cb_turma_M: TComboBox
        Left = 24
        Top = 165
        Width = 209
        Height = 23
        TabOrder = 2
      end
    end
  end
end
