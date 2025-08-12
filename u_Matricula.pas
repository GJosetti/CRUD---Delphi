unit u_Matricula;

interface
uses u_ID, System.Generics.Collections, u_Estudante, u_Turma, System.SysUtils;

type TMatricula = class(TID)

  private
  IDTurma : Integer;
  IDEstudante : Integer;


  public
  function getIDTurma : Integer;
  procedure setIDTurma (aID: Integer);

  function getIDEstudante : Integer;
  procedure setIDEstudante (aID: Integer);

  function getNomeEstudanteByID() : string;
  function getNomeTurmaByID: string;
  procedure setIDEstudanteByNome(aNome: string);
  procedure setIDTurmaByNome(aNome: string);


end;

var matriculasList : TObjectList<TMatricula>;

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

function TMatricula.getNomeEstudanteByID: string;
var i: Integer;
begin

  for i := 0 to matriculasList.Count -1 do
  begin
    if(Self.IDEstudante = estudantesList[i].GetCodigo) then
    begin
      Result := estudantesList[i].getNome;
    end;
  end;

end;

function TMatricula.getNomeTurmaByID: string;
var i: Integer;
begin

  for i := 0 to matriculasList.Count -1 do
  begin
    if(Self.IDEstudante = turmasList[i].GetCodigo) then
    begin
      Result := turmasList[i].GetCodigo.ToString + ' - ' + 'Professor(a) ' + turmasList[i].getNomeProfessorByID + ' -> ' + turmasList[i].getNomeDisciplinaByID;
    end;
  end;

end;

procedure TMatricula.setIDEstudante(aID: Integer);
begin
  Self.IDEstudante := aID;
end;

procedure TMatricula.setIDEstudanteByNome(aNome: string);
var i : Integer;
begin
  for i := 0 to estudantesList.Count -1  do
  begin
    if(aNome = estudantesList[i].getNome) then
    begin
      Self.setIDEstudante(estudantesList[i].GetCodigo);
      break;
    end;
  end;
end;

procedure TMatricula.setIDTurma(aID: Integer);
begin
  Self.IDTurma := aID;
end;

procedure TMatricula.setIDTurmaByNome(aNome: string);
begin

var i : Integer;
begin

  for i := 0 to turmasList.Count -1  do
  begin
    if(aNome = (turmasList[i].GetCodigo).ToString + ' - ' + 'Professor(a) ' + turmasList[i].getNomeProfessorByID + ' -> ' + turmasList[i].getNomeDisciplinaByID)   then
    begin
      Self.SetIDTurma(turmasList[i].GetCodigo);
      break;
    end;
  end;
end;

end;

end.
