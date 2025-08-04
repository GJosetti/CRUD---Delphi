unit u_ScreenManager;

interface
uses System.Generics.Collections;

type TScreenState = (etMain, etEstudante, etProfessor, etDisciplina, etTurma, etMatricula);



type TScreenManager = class

//ScreenMap : TDictionary<TScreenManager, >


private
ActualScreen : TScreenState;


public
function getActualScreen: TScreenState;
procedure setActualScreen(aScreen : TScreenState);

end;

implementation

{ TScreenManager }

function TScreenManager.getActualScreen: TScreenState;
begin
  Result := Self.ActualScreen;
end;

procedure TScreenManager.setActualScreen(aScreen: TScreenState);
begin
  Self.ActualScreen := aScreen;
end;

end.
