unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls, System.Generics.Collections, u_Pessoa, u_Estudante,  System.JSON, Rest.Json,  System.IOUtils, u_ID, u_InputManager;



type
  Tf_Main = class(TForm)
    p_Main: TPanel;
    p_Estudante: TPanel;
    btn_Estudantes: TButton;
    btn_Back: TButton;
    lstB_e_Nome: TListBox;
    lstB_e_ID: TListBox;
    btn_Adicionar: TButton;
    pnl_inputE: TPanel;
    edt_nome_E: TEdit;
    lbl_edt_nome_E: TLabel;
    lbl_pnl_inputE: TLabel;
    btn_concluir_inputE: TButton;
    btn_delete_E: TButton;
    btn_Edit_E: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
    procedure btn_BackClick(Sender: TObject);
    procedure btn_concluir_inputEClick(Sender: TObject);
    procedure btn_AdicionarClick(Sender: TObject);
    procedure btn_delete_EClick(Sender: TObject);
    procedure btn_Edit_EClick(Sender: TObject);
  private
    { Private declarations }
    procedure UpdateEstudanteList;
  public
    { Public declarations }
    var sToHide : TScreenState;
    var estudantesList : TObjectList<TEstudante>;
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
procedure Tf_Main.btn_BackClick(Sender: TObject);
begin

  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etMain,sToHide);
  sManager.setActualScreen(etMain);

  lstB_e_Nome.Clear;
  lstB_e_ID.Clear;

end;


//CONCLUIR ADIÇÃO OU EDIÇÃO
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

  
end;


//FORM CREATE
procedure Tf_Main.FormCreate(Sender: TObject);

begin


  //Instanciando Listas
  if(TFile.Exists('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt')) then
  begin

    jsonStr := Tfile.ReadAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt');
    estudantesList := TJson.JsonToObject<TObjectList<TEstudante>>(jsonStr);
  end;


  if not (Assigned(estudantesList)) then
  begin

      estudantesList := TObjectList<TEstudante>.Create;
  end;

  //ScrenManager
    sManager := TScreenManager.Create;
    sManager.setActualScreen(etMain);
    sManager.ScreenMap := TDictionary<TScreenState, TPanel>.Create;
    sManager.ScreenMap.Add(etMain,p_Main);
    sManager.ScreenMap.Add(etEstudante,p_Estudante);

  //InputManager
  iManager := TInputManager.Create;




end;

//DAR UPDATE NO ARQUIVO ESTUDANTES JSON
procedure Tf_Main.UpdateEstudanteList();
begin
  jsonStr := TJson.ObjectToJsonString(estudantesList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt',jsonStr);
end;

//EDITAR ALUNO
procedure Tf_Main.btn_Edit_EClick(Sender: TObject);
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



//DELETAR ALUNO
procedure Tf_Main.btn_delete_EClick(Sender: TObject);
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









end.
