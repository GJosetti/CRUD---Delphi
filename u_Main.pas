unit u_Main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, u_ScreenManager  ;

type
  Tf_Main = class(TForm)
    pMain: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Main: Tf_Main;

implementation


{$R *.dfm}

end.
