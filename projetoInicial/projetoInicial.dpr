program projetoInicial;

uses
  Vcl.Forms,
  Primeiro_Formulario in 'Primeiro_Formulario.pas' {Cad_User};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TCad_User, Cad_User);
  Application.Run;
end.
