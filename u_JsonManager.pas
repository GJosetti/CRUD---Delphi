unit u_JsonManager;


interface
uses System.JSON, Rest.Json, System.IOUtils, System.Generics.Collections,u_Estudante, u_Professor, u_Disciplina;

var jsonStr: String;

type TjManager = class



procedure UpdateEstudanteList;
procedure UpdateProfessoresList;
procedure UpdateDisciplinasList;

end;


implementation


//DAR UPDATE NO ARQUIVO ESTUDANTES JSON
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

//DAR UPDATE NO ARQUIVO DISCIPLINAS JSON
procedure TJManager.UpdateDisciplinasList();
begin
  jsonStr := TJson.ObjectToJsonString(disciplinasList);
  TFile.WriteAllText('C:\Users\Guilherme Josetti\Desktop\CRUD\CRUD---Delphi\Arquivos\Disciplinas.txt.txt',jsonStr);
end;


end.
