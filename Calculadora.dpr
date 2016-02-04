program Calculadora;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {FormPrincipal},
  CalculoOperacoes in 'CalculoOperacoes.pas' {DmCalculoOperacoes: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.CreateForm(TDmCalculoOperacoes, DmCalculoOperacoes);
  Application.Run;
end.
