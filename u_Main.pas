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
    Button1: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Main: Tf_Main;

implementation


{$R *.dfm}

procedure Tf_Main.FormCreate(Sender: TObject);

var sManager : TScreenManager;

begin

  sManager := TScreenManager.Create;

  sManager.setActualScreen(etMain);


end;






end.
