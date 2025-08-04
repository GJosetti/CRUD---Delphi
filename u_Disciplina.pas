unit u_Disciplina;

interface
uses u_ID;

type TDisciplina = class(TID)

  private
  Nome: String;

  public
  function getNome : String;
  procedure setNome(aNome: String);


end;

implementation

{ TDisciplina }

function TDisciplina.getNome: String;
begin
  Result := Self.Nome;
end;

procedure TDisciplina.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

end.
