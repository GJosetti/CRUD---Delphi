unit u_Matricula;

interface
uses u_ID;

type TMatricula = class(TID)

  private
  IDTurma : Integer;
  IDEstudante : Integer;


  public
  function getIDTurma : Integer;
  procedure setIDTurma (aID: Integer);

  function getIDEstudante : Integer;
  procedure setIDEstudante (aID: Integer);


end;



implementation

{ TMatricula }

function TMatricula.getIDEstudante: Integer;
begin
  Result := Self.IDEstudante;
end;

function TMatricula.getIDTurma: Integer;
begin
  Result := Self.IDTurma;
end;

procedure TMatricula.setIDEstudante(aID: Integer);
begin
  Self.IDEstudante := aID;
end;

procedure TMatricula.setIDTurma(aID: Integer);
begin
  Self.IDTurma := aID;
end;

end.
