unit u_ID;

interface

type TID = class

  protected
  Codigo : Integer;

  public
  function GetCodigo: Integer;
  procedure SetCodigo(aID: Integer);

  constructor Create(aID: Integer);

  property ID: Integer read GetCodigo write SetCodigo;
end;





implementation

constructor TID.Create(aID: Integer);
begin
  Self.Codigo := aID;
end;

{ ID }

function TID.GetCodigo: Integer;
begin

  Result := Self.Codigo;

end;

procedure TID.SetCodigo(aID: Integer);
begin

  Self.Codigo := aID;

end;

end.
