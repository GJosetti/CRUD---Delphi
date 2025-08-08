unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls, System.Generics.Collections, u_Pessoa, u_Estudante,u_Professor,  System.JSON, Rest.Json,  System.IOUtils, u_ID, u_InputManager;



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
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
    procedure btn_Back_EClick(Sender: TObject);
    procedure btn_concluir_inputEClick(Sender: TObject);
    procedure btn_AdicionarClick(Sender: TObject);
    procedure btn_Remover_EClick(Sender: TObject);
    procedure btn_Editar_EClick(Sender: TObject);
    procedure ListBox1Click(Sender: TObject);
    procedure btn_ProfessoresClick(Sender: TObject);
    procedure btn_Adicionar_PClick(Sender: TObject);
    procedure btn_concluir_inputPClick(Sender: TObject);
    procedure btn_Editar_PClick(Sender: TObject);
    procedure btn_Remover_PClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateEstudanteList;
    procedure UpdateProfessoresList;
  public
    { Public declarations }
    var sToHide : TScreenState;
    var estudantesList : TObjectList<TEstudante>;
    var professoresList : TObjectList<TProfessor>;
    jsonStr: string;
  end;

var
  f_Main: Tf_Main;


implementation


{$R *.dfm}

var sManager : TScreenManager;
var iManager : TInputManager;


//ADICIONAR ALUNO
procedure Tf_Main.btn_AdicionarClick(Sender: TObject);
begin
  pnl_inputE.Visible := true;
  iManager.ActualState := etAdd;
end;

//VOLTAR PARA O MENU
procedure Tf_Main.btn_Adicionar_PClick(Sender: TObject);
begin
  pnl_inputP.Visible := true;
  iManager.ActualState := etAdd;
end;

//VOLTAR PARA O MENU
procedure Tf_Main.btn_Back_EClick(Sender: TObject);
begin

  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etMain,sToHide);
  sManager.setActualScreen(etMain);

  lstB_e_Nome.Clear;
  lstB_e_ID.Clear;
  lstB_p_Nome.Clear;
  lstB_p_ID.Clear;
  lstB_p_CPF.Clear;

end;


//CONCLUIR ADI플O OU EDI플O ESTUDANTES
procedure Tf_Main.btn_concluir_inputEClick(Sender: TObject);
var newEstudante : TEstudante;
begin

    if(iManager.ActualState = etAdd) then
    begin
      if estudantesList.Count > 0 then begin
        newEstudante := TEstudante.Create(estudantesList.Last.GetCodigo + 1);
        newEstudante.setNome(edt_nome_E.Text);

        estudantesList.Add(newEstudante);

        lstB_e_Nome.Items.Add(newEstudante.getNome);
        lstB_e_ID.Items.Add(newEstudante.GetCodigo.ToString);

      end else begin
        newEstudante := TEstudante.Create(estudantesList.Count + 1);
        newEstudante.setNome(edt_nome_E.Text);

        estudantesList.Add(newEstudante);

        lstB_e_Nome.Items.Add(newEstudante.getNome);
        lstB_e_ID.Items.Add(newEstudante.GetCodigo.ToString);

      end;
    end else if (iManager.ActualState = etEdit) then
    begin

      var selectedItem: Integer;
      begin
        selectedItem := lstB_e_Nome.ItemIndex;

        estudantesList[selectedItem].setNome(edt_nome_E.Text);
        lstB_e_Nome.Items[selectedItem] := edt_nome_E.Text;

      end;
    end;


    pnl_inputE.Visible := false;
    edt_nome_E.Text := '';
    UpdateEstudanteList();
    iManager.ActualState := etBrowsing;
  
end;


//CONCLUIR ADI플O OU EDI플O DE PROFESSORES
procedure Tf_Main.btn_concluir_inputPClick(Sender: TObject);
var newProfessor : TProfessor;
begin

 if(iManager.ActualState = etAdd) then
    begin
      if professoresList.Count > 0 then begin
        newProfessor := TProfessor.Create(professoresList.Last.GetCodigo + 1);
        newProfessor.setNome(edt_nome_P.Text);
        newProfessor.setCpf(edt_CPF_P.Text);

        professoresList.Add(newProfessor);

        lstB_p_Nome.Items.Add(newProfessor.getNome);
        lstB_p_ID.Items.Add(newProfessor.GetCodigo.ToString);
        lstB_p_CPF.Items.Add(newProfessor.getCpf);

      end else begin
        newProfessor := TProfessor.Create(professoresList.Count + 1);
        newProfessor.setNome(edt_nome_P.Text);
        newProfessor.setCpf(edt_CPF_P.Text);

        professoresList.Add(newProfessor);

        lstB_p_Nome.Items.Add(newProfessor.getNome);
        lstB_p_ID.Items.Add(newProfessor.GetCodigo.ToString);
        lstB_p_CPF.Items.Add(newProfessor.getCpf);
      end;
    end else if (iManager.ActualState = etEdit) then
    begin

      var selectedItem: Integer;
      begin
        selectedItem := lstB_p_Nome.ItemIndex;

        professoresList[selectedItem].setNome(edt_nome_P.Text);
        professoresList[selectedItem].setCPF(edt_CPF_P.Text);
        lstB_p_Nome.Items[selectedItem] := edt_nome_P.Text;
        lstB_p_CPF.Items[selectedItem] := edt_CPF_P.Text;
      end;
    end;


    pnl_inputP.Visible := false;
    edt_nome_P.Text := '';
    edt_CPF_P.Text := '';
    UpdateProfessoresList();
    iManager.ActualState := etBrowsing;


end;

//FORM CREATE
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

  //ScrenManager
    sManager := TScreenManager.Create;
    sManager.setActualScreen(etMain);
    sManager.ScreenMap := TDictionary<TScreenState, TPanel>.Create;
    sManager.ScreenMap.Add(etMain,p_Main);
    sManager.ScreenMap.Add(etEstudante,p_Estudante);
    sManager.ScreenMap.Add(etProfessor, p_Professor);

  //InputManager
  iManager := TInputManager.Create;
end;

procedure Tf_Main.ListBox1Click(Sender: TObject);
begin

end;

//DAR UPDATE NO ARQUIVO ESTUDANTES JSON
procedure Tf_Main.UpdateEstudanteList();
begin
  jsonStr := TJson.ObjectToJsonString(estudantesList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt',jsonStr);
end;

//DAR UPDATE NO ARQUIVO PROFESSORES JSON
procedure Tf_Main.UpdateProfessoresList();
begin
  jsonStr := TJson.ObjectToJsonString(professoresList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Professores.txt.txt',jsonStr);
end;

//EDITAR ALUNO
procedure Tf_Main.btn_Editar_EClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_e_Nome.ItemIndex;
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

  selectedItem := lstB_p_Nome.ItemIndex;
  iManager.ActualState := etEdit;
  if(selectedItem <> -1)then
  begin
    pnl_inputP.Visible := true;
    edt_nome_P.Text := professoresList[selectedItem].getNome;
    edt_CPF_P.Text := professoresList[selectedItem].getCpf;
  end;




end;

//ENTRAR NA P핯INA DE ESTUDANTES
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

//DELETAR ALUNO
procedure Tf_Main.btn_Remover_EClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_e_Nome.ItemIndex;
  if (selectedItem <> -1) then
  begin
    estudantesList.Delete(selectedItem);

    lstB_e_Nome.DeleteSelected;
    lstB_e_ID.Items.Delete(selectedItem);

    UpdateEstudanteList;
  end;
end;


procedure Tf_Main.btn_Remover_PClick(Sender: TObject);
var selectedItem: Integer;
begin
  selectedItem := lstB_p_Nome.ItemIndex;
  if (selectedItem <> -1) then
  begin
    professoresList.Delete(selectedItem);

    lstB_p_Nome.DeleteSelected;
    lstB_p_ID.Items.Delete(selectedItem);
    lstB_p_CPF.Items.Delete(selectedItem);

    UpdateProfessoresList;
  end;
end;

end.
