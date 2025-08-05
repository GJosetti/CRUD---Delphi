unit u_ScreenManager;

interface
uses System.Generics.Collections, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls;

type TScreenState = (etMain, etEstudante, etProfessor, etDisciplina, etTurma, etMatricula);



type TScreenManager = class

ScreenMap : TDictionary<TScreenState,TPanel>;



private
ActualScreen : TScreenState;
Pnl_actualScreen: TPanel;

public
function getActualScreen: TScreenState;
procedure setActualScreen(aScreen : TScreenState);
procedure ChangeScreen(aScreenToChange, aScreenToHide: TScreenState);

end;

implementation

{ TScreenManager }

procedure TScreenManager.ChangeScreen(aScreenToChange, aScreenToHide: TScreenState);
begin

  var sTS : TPanel;
  var sTH: TPanel;



  ScreenMap.TryGetValue(aScreenToHide, sTH);
  sTH.Visible := false;


  ScreenMap.TryGetValue(aScreenToChange,sTS);
  sTS.Visible := True;

end;

function TScreenManager.getActualScreen: TScreenState;
begin
  Result := Self.ActualScreen;
end;

procedure TScreenManager.setActualScreen(aScreen: TScreenState);
begin
  Self.ActualScreen := aScreen;
end;






end.
