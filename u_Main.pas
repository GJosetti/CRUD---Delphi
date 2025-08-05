unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls, System.Generics.Collections  ;

type
  Tf_Main = class(TForm)
    p_Main: TPanel;
    p_Estudante: TPanel;
    btn_Estudantes: TButton;
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
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

procedure Tf_Main.Button1Click(Sender: TObject);
begin

  sToHide:= sManager.getActualScreen;
  sManager.ChangeScreen(etMain,sToHide);
  sManager.setActualScreen(etMain);

end;

procedure Tf_Main.FormCreate(Sender: TObject);



begin

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













end.
