unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls, System.Generics.Collections, u_Pessoa, u_Estudante;

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
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
    procedure btn_BackClick(Sender: TObject);
    procedure btn_concluir_inputEClick(Sender: TObject);
    procedure btn_AdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var sToHide : TScreenState;
    var estudantesList : TObjectList<TEstudante>;
  end;

var
  f_Main: Tf_Main;


implementation


{$R *.dfm}

var sManager : TScreenManager;

procedure Tf_Main.btn_AdicionarClick(Sender: TObject);
begin
  pnl_inputE.Visible := true;
end;

procedure Tf_Main.btn_BackClick(Sender: TObject);
begin

  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etMain,sToHide);
  sManager.setActualScreen(etMain);

end;

procedure Tf_Main.btn_concluir_inputEClick(Sender: TObject);
var newEstudante : TEstudante;
begin

  newEstudante := TEstudante.Create(estudantesList.Count + 1);
  newEstudante.setNome(edt_nome_E.Text);

  estudantesList.Add(newEstudante);

  lstB_e_Nome.Items.Add(newEstudante.getNome);
  lstB_e_ID.Items.Add(newEstudante.GetCodigo.ToString);

  pnl_inputE.Visible := false;
  edt_nome_E.Text := '';

end;



procedure Tf_Main.FormCreate(Sender: TObject);
begin


  //Estudantes List
    estudantesList := TObjectList<TEstudante>.Create;

  //ScrenManager
    sManager := TScreenManager.Create;
    sManager.setActualScreen(etMain);
    sManager.ScreenMap := TDictionary<TScreenState, TPanel>.Create;
    sManager.ScreenMap.Add(etMain,p_Main);
    sManager.ScreenMap.Add(etEstudante,p_Estudante);




end;





procedure Tf_Main.btn_EstudantesClick(Sender: TObject);

begin
  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etEstudante,sToHide);
  sManager.setActualScreen(etEstudante);

end;


//procedure showPanel (aPanel: TPanel);
//begin
//
//  aPanel.Visible := true;
//
//end;










end.
