unit u_Professor;

interface
uses u_Pessoa, System.Generics.Collections;

type TProfessor = class(TPessoa)

  private
  Cpf: String;

  public
  function getCpf: String;
  procedure setCpf (aCpf: String);

end;

var professoresList : TObjectList<TProfessor>;

implementation

{ TProfessor }

function TProfessor.getCpf: String;
begin
  Result := Self.Cpf;
end;

procedure TProfessor.setCpf(aCpf: String);
begin
  Self.Cpf := aCpf;
end;

end.
