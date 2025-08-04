unit u_ID;

interface

type TID = class

Codigo : Integer;


function GetCodigo: Integer;
procedure SetCodigo(aID: Integer);


end;





implementation

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
