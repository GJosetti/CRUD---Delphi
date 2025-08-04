unit u_ID;

interface

type TID = class

  private
  Codigo : Integer;

  public
  function GetCodigo: Integer;
  procedure SetCodigo(aID: Integer);

  constructor Create(aID: Integer);


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
