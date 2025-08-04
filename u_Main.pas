unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager,
  Vcl.StdCtrls  ;

type
  Tf_Main = class(TForm)
    p_Main: TPanel;
    p_Estudante: TPanel;
    btn_Estudantes: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn_EstudantesClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Main: Tf_Main;

implementation


{$R *.dfm}

var sManager : TScreenManager;

procedure Tf_Main.FormCreate(Sender: TObject);



begin

  sManager := TScreenManager.Create;

  sManager.setActualScreen(etMain);


end;





procedure Tf_Main.btn_EstudantesClick(Sender: TObject);
var sToHide: TScreenState;
begin
  sToHide := sManager.getActualScreen;
  sManager.setActualScreen(etEstudante);

end;










procedure ChangeScreen(aScreenToHide: TScreenState);
begin



end;




end.
