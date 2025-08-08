program CRUD;

uses
  Vcl.Forms,
  u_Main in 'u_Main.pas' {f_Main},
  u_ID in 'u_ID.pas',
  u_Pessoa in 'u_Pessoa.pas',
  u_Estudante in 'u_Estudante.pas',
  u_Professor in 'u_Professor.pas',
  u_Disciplina in 'u_Disciplina.pas',
  u_Turma in 'u_Turma.pas',
  u_Matricula in 'u_Matricula.pas',
  u_ScreenManager in 'u_ScreenManager.pas',
  u_InputManager in 'u_InputManager.pas',
  u_JsonManager in 'u_JsonManager.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tf_Main, f_Main);
  Application.Run;
end.
