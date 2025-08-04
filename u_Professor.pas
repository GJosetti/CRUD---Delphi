unit u_Professor;

interface
uses u_Pessoa;

type TProfessor = class(TPessoa)

  Cpf: String;

  function getCpf: String;
  procedure setCpf (aCpf: String);

end;


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
