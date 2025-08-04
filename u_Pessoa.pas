unit u_Pessoa;

interface

uses u_ID;

type TPessoa = class(TID)

  private
  Nome : string;

  public
  function getNome : String;
  procedure setNome(aNome: String);


end;

implementation

{ TPessoa }

function TPessoa.getNome: String;
begin
  Result := Self.Nome;
end;

procedure TPessoa.setNome(aNome: String);
begin
  Self.Nome := aNome;
end;

end.
