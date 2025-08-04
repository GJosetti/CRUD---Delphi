unit u_Turma;

interface
uses u_ID;

type TTurma = class (TID)

  IDProfessor : Integer;
  IDDisciplina: Integer;

  function GetIDProfessor: Integer;
  procedure SetIDProfessor(aID: Integer);

  function GetIDDisciplina: Integer;
  procedure SetIDDisciplina(aID: Integer);

end;

implementation

{ TTurma }

function TTurma.GetIDDisciplina: Integer;
begin
  Result := Self.IDDisciplina;
end;

function TTurma.GetIDProfessor: Integer;
begin
  Result := Self.IDProfessor;
end;

procedure TTurma.SetIDDisciplina(aID: Integer);
begin
  Self.IDDisciplina := aID;
end;

procedure TTurma.SetIDProfessor(aID: Integer);
begin
  Self.IDProfessor := aID;
end;

end.
