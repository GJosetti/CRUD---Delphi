unit u_Turma;

interface
uses u_ID, System.Generics.Collections, u_Professor, u_Disciplina;

type TTurma = class (TID)

  private
  IDProfessor : Integer;
  IDDisciplina: Integer;


  public
  function GetIDProfessor: Integer;
  procedure SetIDProfessor(aID: Integer);

  function GetIDDisciplina: Integer;
  procedure SetIDDisciplina(aID: Integer);

  function getNomeProfessorByID() : string;
  function getNomeDisciplinaByID: string;

end;

var turmasList : TObjectList<TTurma>;

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

function TTurma.getNomeProfessorByID(): string;
var i: Integer;
var j: Integer;
begin

  for i := 0 to professoresList.Count -1 do
  begin
    if(Self.IDProfessor = professoresList[i].GetCodigo) then
    begin
      Result := professoresList[i].getNome;
    end;

  end;
end;

function TTurma.getNomeDisciplinaByID(): string;
var i: Integer;
var j: Integer;
begin

  for i := 0 to disciplinasList.Count -1 do
  begin
    if(Self.IDDisciplina = disciplinasList[i].GetCodigo) then
    begin
      Result := disciplinasList[i].getNome;
    end;

  end;
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
