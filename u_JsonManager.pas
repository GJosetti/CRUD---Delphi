unit u_JsonManager;


interface
uses System.JSON, Rest.Json, System.IOUtils, System.Generics.Collections,u_Estudante, u_Professor;

var jsonStr: String;

type TjManager = class



procedure UpdateEstudanteList;
procedure UpdateProfessoresList;

end;


implementation


procedure TJManager.UpdateEstudanteList;
begin
  jsonStr := TJson.ObjectToJsonString(estudantesList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Estudantes.txt.txt',jsonStr);
end;

//DAR UPDATE NO ARQUIVO PROFESSORES JSON
procedure TJManager.UpdateProfessoresList();
begin
  jsonStr := TJson.ObjectToJsonString(professoresList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Professores.txt.txt',jsonStr);
end;

end.
