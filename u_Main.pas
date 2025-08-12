unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls, System.Generics.Collections, u_Pessoa, u_Estudante,u_Professor,  System.JSON, Rest.Json,  System.IOUtils, u_ID, u_InputManager, u_JsonManager,u_Disciplina,u_Matricula,u_Turma;



type
  Tf_Main = class(TForm)
    p_Main: TPanel;
    p_Estudante: TPanel;
    btn_Estudantes: TButton;
    btn_Back_E: TButton;
    lstB_e_Nome: TListBox;
    lstB_e_ID: TListBox;
    btn_Adicionar: TButton;
    pnl_inputE: TPanel;
    edt_nome_E: TEdit;
    lbl_edt_nome_E: TLabel;
    lbl_pnl_input_E: TLabel;
    btn_concluir_inputE: TButton;
    btn_Remover_E: TButton;
    btn_Editar_E: TButton;
    p_Professor: TPanel;
    btn_Back_P: TButton;
    lstB_p_Nome: TListBox;
    lstB_p_ID: TListBox;
    btn_Adicionar_P: TButton;
    pnl_inputP: TPanel;
    lbl_edt_nome_P: TLabel;
    lbl_pnl_input_P: TLabel;
    edt_nome_P: TEdit;
    btn_concluir_inputP: TButton;
    btn_Remover_P: TButton;
    btn_Editar_P: TButton;
    edt_CPF_P: TEdit;
    lbl_edt_CPF_P: TLabel;
    lstB_p_CPF: TListBox;
    btn_Professores: TButton;
    p_Disciplina: TPanel;
    btn_Back_D: TButton;
    lstB_d_Nome: TListBox;
    lstB_d_ID: TListBox;
    btn_Adicionar_D: TButton;
    pnl_inputD: TPanel;
    lbl_edt_nome_D: TLabel;
    lbl_pnl_input_D: TLabel;
    edt_nome_D: TEdit;
    btn_concluir_inputD: TButton;
    btn_Remover_D: TButton;
    btn_Editar_D: TButton;
    btn_Disciplinas: TButton;
    p_Turma: TPanel;
    btn_Back_T: TButton;
    lstB_t_Professor: TListBox;
    lstB_t_ID: TListBox;
    btn_Adicionar_T: TButton;
    pnl_inputT: TPanel;
    lbl_cB_professor_T: TLabel;
    lbl_pnl_input_T: TLabel;
    btn_concluir_inputT: TButton;
    btn_Remover_T: TButton;
    btn_Editar_T: TButton;
    lstb_t_Disciplina: TListBox;
    cB_professor_T: TComboBox;
    lbl_cB_disciplina_T: TLabel;
    cb_disciplina_T: TComboBox;
    btn_Turmas: TButton;
    lbl_Disciplina: TLabel;
    lbl_Estudante: TLabel;
    lbl_Professores: TLabel;
    lbl_Turmas: TLabel;
    btn_Matriculas: TButton;
    p_Matricula: TPanel;
    lbl_Matriculas: TLabel;
    btn_Back_M: TButton;
    lstB_m_Estudante: TListBox;
    lstB_m_ID: TListBox;
    btn_Adicionar_M: TButton;
    btn_Remover_M: TButton;
    btn_Editar_M: TButton;
    lstB_m_Turma: TListBox;
    pnl_inputM: TPanel;
    lbl_cb_estudante_M: TLabel;
    lbl_pnl_input_M: TLabel;
    lbl_cb_turma_M: TLabel;
    btn_concluir_inputM: TButton;
    cb_estudante_M: TComboBox;
    cb_turma_M: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
    procedure btn_Back_EClick(Sender: TObject);
    procedure btn_concluir_inputEClick(Sender: TObject);
    procedure btn_AdicionarClick(Sender: TObject);
    procedure btn_Remover_EClick(Sender: TObject);
    procedure btn_Editar_EClick(Sender: TObject);
    procedure btn_ProfessoresClick(Sender: TObject);
    procedure btn_Adicionar_PClick(Sender: TObject);
    procedure btn_concluir_inputPClick(Sender: TObject);
    procedure btn_Editar_PClick(Sender: TObject);
    procedure btn_Remover_PClick(Sender: TObject);
    procedure btn_DisciplinasClick(Sender: TObject);
    procedure btn_Adicionar_DClick(Sender: TObject);
    procedure btn_concluir_inputDClick(Sender: TObject);
    procedure btn_Remover_DClick(Sender: TObject);
    procedure btn_Editar_DClick(Sender: TObject);
    procedure btn_Adicionar_TClick(Sender: TObject);
    procedure btn_Editar_TClick(Sender: TObject);
    procedure btn_TurmasClick(Sender: TObject);
    procedure btn_concluir_inputTClick(Sender: TObject);
    procedure btn_Remover_TClick(Sender: TObject);
    procedure p_MainClick(Sender: TObject);
  private
    { Private declarations }
    
  public
    { Public declarations }
    var sToHide : TScreenState;
   

  end;

var
  f_Main: Tf_Main;


implementation


{$R *.dfm}

var sManager : TScreenManager;
var iManager : TInputManager;
var jManager : TjManager;


//ADICIONAR ALUNO
procedure Tf_Main.btn_AdicionarClick(Sender: TObject);
begin
  pnl_inputE.Visible := true;
  iManager.ActualState := etAdd;
end;

//VOLTAR PARA O MENU
procedure Tf_Main.btn_Adicionar_DClick(Sender: TObject);
begin
  pnl_inputD.Visible := true;
  iManager.ActualState := etAdd;
end;

//ADICIONAR PROFESSOR
procedure Tf_Main.btn_Adicionar_PClick(Sender: TObject);
begin
  pnl_inputP.Visible := true;
  iManager.ActualState := etAdd;
end;

//ADICIONAR TURMA
procedure Tf_Main.btn_Adicionar_TClick(Sender: TObject);

begin
  pnl_inputT.Visible := true;
  iManager.ActualState := etAdd;
  cB_professor_T.TextHint := '';
  cb_disciplina_T.TextHint := '';


end;

//VOLTAR PARA O MENU
procedure Tf_Main.btn_Back_EClick(Sender: TObject);
begin

  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etMain,sToHide);
  sManager.setActualScreen(etMain);

  iManager.ActualState := etBrowsing;

  lstB_e_Nome.Clear;
  lstB_e_ID.Clear;
  lstB_p_Nome.Clear;
  lstB_p_ID.Clear;
  lstB_p_CPF.Clear;
  lstB_d_Nome.Clear;
  lstB_d_ID.Clear;
  cB_professor_T.Clear;
  cb_disciplina_T.Clear;
  cb_estudante_M.Clear;
  cb_turma_M.Clear;
  lstB_t_Professor.Clear;
  lstB_t_ID.Clear;
  lstb_t_Disciplina.Clear;
  lstB_m_ID.Clear;
  lstB_m_Estudante.Clear;
  lstB_m_Turma.Clear;
  pnl_inputE.Visible := false;
  pnl_inputP.Visible := false;
  pnl_inputD.Visible := false;
  pnl_inputT.Visible := false;
  pnl_inputM.Visible := false;

end;



//CONCLUIR ADIÇÃO OU EDIÇÃO DISCIPLINAS
procedure Tf_Main.btn_concluir_inputDClick(Sender: TObject);
var newDisciplina : TDisciplina;
begin
    //Verificação se é o primeiro
    if(iManager.ActualState = etAdd) then
    begin
      if disciplinasList.Count > 0 then begin
        newDisciplina := TDisciplina.Create(disciplinasList.Last.GetCodigo + 1);
      end else begin
        newDisciplina := TDisciplina.Create(disciplinasList.Count + 1);
      end;

      newDisciplina.setNome(edt_nome_D.Text);

      disciplinasList.Add(newDisciplina);

      lstB_d_Nome.Items.Add(newDisciplina.getNome);
      lstB_d_ID.Items.Add(newDisciplina.GetCodigo.ToString);

    end else if (iManager.ActualState = etEdit) then
    begin

      var selectedItem: Integer;
      begin
        selectedItem := lstB_d_ID.ItemIndex;

        disciplinasList[selectedItem].setNome(edt_nome_D.Text);
        lstB_d_Nome.Items[selectedItem] := edt_nome_D.Text;

      end;
    end;


    pnl_inputD.Visible := false;
    edt_nome_d.Text := '';
    jManager.UpdateDisciplinasList();
    iManager.ActualState := etBrowsing;

end;

//CONCLUIR ADIÇÃO OU EDIÇÃO ESTUDANTES
procedure Tf_Main.btn_concluir_inputEClick(Sender: TObject);
var newEstudante : TEstudante;
begin

    if(iManager.ActualState = etAdd) then
    begin
      //Verificação se é o primeiro
      if estudantesList.Count > 0 then begin
        newEstudante := TEstudante.Create(estudantesList.Last.GetCodigo + 1);
      end else begin
        newEstudante := TEstudante.Create(estudantesList.Count + 1);
      end;

      newEstudante.setNome(edt_nome_E.Text);

      estudantesList.Add(newEstudante);

      lstB_e_Nome.Items.Add(newEstudante.getNome);
      lstB_e_ID.Items.Add(newEstudante.GetCodigo.ToString);

    end else if (iManager.ActualState = etEdit) then
    begin

      var selectedItem: Integer;
      begin
        selectedItem := lstB_e_ID.ItemIndex;

        estudantesList[selectedItem].setNome(edt_nome_E.Text);
        lstB_e_Nome.Items[selectedItem] := edt_nome_E.Text;

      end;
    end;


    pnl_inputE.Visible := false;
    edt_nome_E.Text := '';
    jManager.UpdateEstudanteList();
    iManager.ActualState := etBrowsing;

end;



//CONCLUIR ADIÇÃO OU EDIÇÃO DE PROFESSORES
procedure Tf_Main.btn_concluir_inputPClick(Sender: TObject);
var newProfessor : TProfessor;
begin

 if(iManager.ActualState = etAdd) then
    begin
      //Verificação se é o primeiro
      if professoresList.Count > 0 then begin
        newProfessor := TProfessor.Create(professoresList.Last.GetCodigo + 1);
      end else begin
        newProfessor := TProfessor.Create(professoresList.Count + 1);
      end;

      newProfessor.setNome(edt_nome_P.Text);
      newProfessor.setCpf(edt_CPF_P.Text);

      professoresList.Add(newProfessor);

      lstB_p_Nome.Items.Add(newProfessor.getNome);
      lstB_p_ID.Items.Add(newProfessor.GetCodigo.ToString);
      lstB_p_CPF.Items.Add(newProfessor.getCpf);

    end else if (iManager.ActualState = etEdit) then
    begin

      var selectedItem: Integer;
      begin
        selectedItem := lstB_p_ID.ItemIndex;

        professoresList[selectedItem].setNome(edt_nome_P.Text);
        professoresList[selectedItem].setCPF(edt_CPF_P.Text);
        lstB_p_Nome.Items[selectedItem] := edt_nome_P.Text;
        lstB_p_CPF.Items[selectedItem] := edt_CPF_P.Text;
      end;
    end;


    pnl_inputP.Visible := false;
    edt_nome_P.Text := '';
    edt_CPF_P.Text := '';
    jManager.UpdateProfessoresList();
    iManager.ActualState := etBrowsing;


end;

//CONCLUIR ADIÇÃO OU EDIÇÃO DE TURMAS
procedure Tf_Main.btn_concluir_inputTClick(Sender: TObject);
var newTurma: TTurma;
var selectedItem : Integer;
var tempNameProfessor,tempNameDisciplina : string;
begin



 if(iManager.ActualState = etAdd) then
    begin
      //Verificação se é o primeiro
      if turmasList.Count > 0 then begin
        newTurma := TTurma.Create(turmasList.Last.GetCodigo + 1);

      end else begin
        newTurma := TTurma.Create(turmasList.Count + 1);
      end;

     newTurma.setIDProfessorByNome(cB_professor_T.Text);
     newTurma.setIDDisciplinaByNome(cb_disciplina_T.Text);


     tempNameProfessor := newTurma.getNomeProfessorByID;
     tempNameDisciplina := newTurma.getNomeDisciplinaByID;

     turmasList.Add(newTurma);

     lstB_t_Professor.Items.Add(tempNameProfessor);
     lstb_t_Disciplina.Items.Add(tempNameDisciplina);
     lstB_t_ID.Items.Add(newTurma.getCodigo.ToString);


    end else if (iManager.ActualState = etEdit) then
    begin

          selectedItem := lstB_t_ID.ItemIndex;

          turmasList[selectedItem].setIDProfessorByNome(cB_professor_T.Text);
          turmasList[selectedItem].setIDDisciplinaByNome(cb_disciplina_T.Text);
          lstB_t_Professor.Items[selectedItem] :=turmasList[selectedItem].getNomeProfessorByID;
          lstb_t_Disciplina.Items[selectedItem] := turmasList[selectedItem].getNomeDisciplinaByID;

    end;


    pnl_inputT.Visible := false;
    cB_professor_T.Text := '';
    cb_disciplina_T.Text := '';
    jManager.UpdateTurmasList();
    iManager.ActualState := etBrowsing;

end;




//FORM CREATE -------------------------------------------------------------
procedure Tf_Main.FormCreate(Sender: TObject);

begin
  //Instanciando Listas

  //Estudantes
  if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt')) then
  begin
    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt');
    estudantesList := TJson.JsonToObject<TObjectList<TEstudante>>(jsonStr);
  end;

  if not (Assigned(estudantesList)) then
  begin

      estudantesList := TObjectList<TEstudante>.Create;
  end;

  //Professores
    if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Professores.txt.txt')) then
  begin
    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Professores.txt.txt');
    professoresList := TJson.JsonToObject<TObjectList<TProfessor>>(jsonStr);
  end;

  if not (Assigned(professoresList)) then
  begin
      professoresList := TObjectList<TProfessor>.Create;
  end;


  //Disciplinas
    if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Disciplinas.txt.txt')) then
  begin
    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Disciplinas.txt.txt');
    disciplinasList := TJson.JsonToObject<TObjectList<TDisciplina>>(jsonStr);
  end;

  if not (Assigned(disciplinasList)) then
  begin
      disciplinasList := TObjectList<TDisciplina>.Create;
  end;

   //Turmas
    if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Turmas.txt.txt')) then
  begin
    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Turmas.txt.txt');
    turmasList := TJson.JsonToObject<TObjectList<TTurma>>(jsonStr);
  end;

  if not (Assigned(turmasList)) then
  begin
      turmasList := TObjectList<TTurma>.Create;
  end;

  //Matriculas
    if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Matrículas.txt.txt')) then
  begin
    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Matrículas.txt.txt');
    matriculasList := TJson.JsonToObject<TObjectList<TMatricula>>(jsonStr);
  end;

  if not (Assigned(matriculasList)) then
  begin
      matriculasList := TObjectList<TMatricula>.Create;
  end;

  //ScrenManager
    sManager := TScreenManager.Create;
    sManager.setActualScreen(etMain);
    sManager.ScreenMap := TDictionary<TScreenState, TPanel>.Create;
    sManager.ScreenMap.Add(etMain,p_Main);
    sManager.ScreenMap.Add(etEstudante,p_Estudante);
    sManager.ScreenMap.Add(etProfessor, p_Professor);
    sManager.ScreenMap.Add(etDisciplina, p_Disciplina);
    sManager.ScreenMap.Add(etTurma, p_Turma);
    sManager.ScreenMap.Add(etMatricula,p_Matricula);
  //InputManager
  iManager := TInputManager.Create;

  //JsonManager
  jManager := TjManager.Create;
  end;

procedure Tf_Main.p_MainClick(Sender: TObject);
begin

end;

//EDITAR DISCIPLINA
procedure Tf_Main.btn_Editar_DClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_d_ID.ItemIndex;
  iManager.ActualState := etEdit;
  if(selectedItem <> -1)then
  begin
    pnl_inputD.Visible := true;
    edt_nome_D.Text := DisciplinasList[selectedItem].getNome;
  end;

end;

//EDITAR ESTUDANTE
procedure Tf_Main.btn_Editar_EClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_e_ID.ItemIndex;
  iManager.ActualState := etEdit;
  if(selectedItem <> -1)then
  begin
    pnl_inputE.Visible := true;
    edt_nome_E.Text := estudantesList[selectedItem].getNome;
  end;
end;

//EDITAR PROFESSOR
procedure Tf_Main.btn_Editar_PClick(Sender: TObject);
var selectedItem: Integer;
begin

  selectedItem := lstB_p_ID.ItemIndex;
  iManager.ActualState := etEdit;
  if(selectedItem <> -1)then
  begin
    pnl_inputP.Visible := true;
    edt_nome_P.Text := professoresList[selectedItem].getNome;
    edt_CPF_P.Text := professoresList[selectedItem].getCpf;
  end;




end;

//EDITAR TURMA
procedure Tf_Main.btn_Editar_TClick(Sender: TObject);
var selectedItem: Integer;
begin
  iManager.ActualState := etEdit;
  pnl_inputT.Visible := true;

  selectedItem := lstB_t_ID.ItemIndex;
  cB_professor_T.TextHint := turmasList[selectedItem].getNomeProfessorByID();
  cb_disciplina_T.TextHint := turmasList[selectedItem].getNomeDisciplinaByID;
end;

//ENTRAR NA PÁGINA DE ESTUDANTES
procedure Tf_Main.btn_EstudantesClick(Sender: TObject);

var i : Integer;

begin
  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etEstudante,sToHide);
  sManager.setActualScreen(etEstudante);



  if(estudantesList.Count > 0)  then
  begin

    for i := 0 to estudantesList.Count - 1 do
    begin
      lstB_e_Nome.Items.Add(estudantesList[i].getNome);
      lstB_e_ID.Items.Add(estudantesList[i].GetCodigo.ToString);
    end;
  end;


end;


//ENTRAR TELA PROFESSOR
procedure Tf_Main.btn_ProfessoresClick(Sender: TObject);

begin
var i : Integer;
  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etProfessor,sToHide);
  sManager.setActualScreen(etProfessor);



  if(professoresList.Count > 0)  then
  begin

    for i := 0 to professoresList.Count - 1 do
    begin
      lstB_p_Nome.Items.Add(professoresList[i].getNome);
      lstB_p_ID.Items.Add(professoresList[i].GetCodigo.ToString);
      lstB_p_CPF.Items.Add(professoresList[i].getCpf);
    end;
  end;


end;

//DELETAR DISCIPLINA
procedure Tf_Main.btn_Remover_DClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_d_ID.ItemIndex;
  if (selectedItem <> -1) then
  begin
   disciplinasList.Delete(selectedItem);

    lstB_d_ID.DeleteSelected;
    lstB_d_Nome.Items.Delete(selectedItem);


    jManager.UpdateDisciplinasList;
  end;
end;

//DELETAR ALUNO
procedure Tf_Main.btn_Remover_EClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_e_ID.ItemIndex;
  if (selectedItem <> -1) then
  begin
    estudantesList.Delete(selectedItem);

    lstB_e_ID.DeleteSelected;
    lstB_e_Nome.Items.Delete(selectedItem);

    jManager.UpdateEstudanteList;
  end;
end;

//DELETAR PROFESSOR
procedure Tf_Main.btn_Remover_PClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_p_ID.ItemIndex;
  if (selectedItem <> -1) then
  begin
    professoresList.Delete(selectedItem);

    lstB_p_ID.DeleteSelected;
    lstB_p_Nome.Items.Delete(selectedItem);
    lstB_p_CPF.Items.Delete(selectedItem);

    jManager.UpdateProfessoresList;
  end;
end;

//REMOVER TURMA
procedure Tf_Main.btn_Remover_TClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_t_ID.ItemIndex;
  if (selectedItem <> -1) then
  begin
    turmasList.Delete(selectedItem);

    lstB_t_ID.DeleteSelected;
    lstB_t_Professor.Items.Delete(selectedItem);
    lstb_t_Disciplina.Items.Delete(selectedItem);

    jManager.UpdateTurmasList;
  end;
end;

//ENTRAR NA PAGINA DE TURMA
procedure Tf_Main.btn_TurmasClick(Sender: TObject);
var i : Integer;
var j: Integer;
var k: Integer;
begin
  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etTurma,sToHide);
  sManager.setActualScreen(etTurma);

  //Atualizar dados nas ComboBox
  for i := 0 to professoresList.Count - 1  do
  begin
    cB_professor_T.Items.Add(professoresList[i].getNome);
  end;

  for i := 0 to disciplinasList.Count - 1  do
  begin
    cB_disciplina_T.Items.Add(disciplinasList[i].getNome);
  end;



  //Preencher a tabela ao entrar na página
  if(turmasList.Count > 0)  then
  begin

    for i := 0 to turmasList.Count - 1 do
    begin

       lstB_t_ID.Items.Add(turmasList[i].GetCodigo.ToString);

      for j := 0 to professoresList.Count - 1  do
      begin
           if(turmasList[i].GetIDProfessor = professoresList[j].GetCodigo) then
           begin
              lstB_t_Professor.Items.Add(professoresList[j].getNome);
           end;
      end;
      for k := 0 to disciplinasList.Count - 1  do
      begin
           if(turmasList[i].GetIDDisciplina = disciplinasList[k].GetCodigo) then
           begin
              lstb_t_Disciplina.Items.Add(disciplinasList[k].getNome);
           end;
      end;


    end;

  end;
end;

//ENTRAR NA PÁGINA DE DISCIPLINAS
procedure Tf_Main.btn_DisciplinasClick(Sender: TObject);
var i : Integer;
begin
  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etDisciplina,sToHide);
  sManager.setActualScreen(etDisciplina);

  if(disciplinasList.Count > 0)  then
  begin

    for i := 0 to disciplinasList.Count - 1 do
    begin
      lstB_d_Nome.Items.Add(disciplinasList[i].getNome);
      lstB_d_ID.Items.Add(disciplinasList[i].GetCodigo.ToString);
    end;

  end;
end;

end.
