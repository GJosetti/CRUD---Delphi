unit u_ListManager;

interface

uses System.Generics.Collections, u_ID;

type TListManager = class




procedure UpdateListEstudantes(str : String);

end;



implementation

{ TListManager }

procedure TListManager.UpdateListEstudantes(str: String);
begin

  str := TJson.ObjectToJsonString();
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt',jsonStr);

end;

end.
