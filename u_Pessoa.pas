unit u_Pessoa;

interface

uses u_ID;

type TPessoa = class(TID)

  protected
  nome : string;

  public
  function getNome : String;
  procedure setNome(aNome: String);

  property pNome: String read getNome write setNome;

end;

implementation

{ TPessoa }

function TPessoa.getNome: String;
begin
  Result := Self.nome;
end;

procedure TPessoa.setNome(aNome: String);
begin
  Self.nome := aNome;
end;

end.
