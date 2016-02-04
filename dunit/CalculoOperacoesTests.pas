unit CalculoOperacoesTests;

interface

uses TestFramework, System.Classes, CalculoOperacoes, System.SysUtils;

type
  TCalculoOperacoesTests = class(TTestCase)
  strict private
    FSUT: TDmCalculoOperacoes;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Somar_Menos2ComMenos3_ResultadoMenos5;
    procedure Somar_Menos3Com2_ResultadoMenos1;
    procedure Somar_2Ponto5Com1Ponto3_Resultado3Ponto3;
  end;

implementation

procedure TCalculoOperacoesTests.SetUp;
begin
  FSUT := TDmCalculoOperacoes.Create(nil);
end;

procedure TCalculoOperacoesTests.Somar_2Ponto5Com1Ponto3_Resultado3Ponto3;
begin
  CheckEquals(3.8, FSUT.Somar(2.5, 1.3));
end;

procedure TCalculoOperacoesTests.Somar_Menos2ComMenos3_ResultadoMenos5;
begin
  CheckEquals(-5, FSUT.Somar(-2, -3));
end;

procedure TCalculoOperacoesTests.Somar_Menos3Com2_ResultadoMenos1;
begin
  CheckEquals(-1, FSUT.Somar(-3, 2));
end;

procedure TCalculoOperacoesTests.TearDown;
begin
  FSUT.Free;
end;

initialization

RegisterTest(TCalculoOperacoesTests.Suite);

end.
