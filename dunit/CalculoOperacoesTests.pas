unit CalculoOperacoesTests;

interface

uses
  TestFramework,
  System.Classes,
  CalculoOperacoes,
  System.SysUtils;

type
  TCalculoOperacoesTests = class(TTestCase)
  strict private
    FSUT: TDmCalculoOperacoes;
    procedure DividirPorZero;
  public
    procedure SetUp; override;
    procedure TearDown; override;
  published
    procedure Somar_Menos2ComMenos3_ResultadoMenos5;
    procedure Somar_Menos3Com2_ResultadoMenos1;
    procedure Somar_2Ponto5Com1Ponto3_Resultado3Ponto3;
    procedure Subtrair_4com2_Resultado2;
    procedure Subtrair_3ComMenos1Ponto9_Resultado4Ponto9;
    procedure Subtrair_Menos3Com4_ResultadoMenos1;
    procedure Subtrair_3Ponto8Com1Ponto6_Resultado2Ponto2;
    procedure Multiplicar_4Com4_Resultado16;
    procedure Multiplicar_5com0_Resultado0;
    procedure Multiplicar_Menos3com1Ponto5_ResultadoMenos4Ponto5;
    procedure Dividir_5Com2_Resultado2Ponto5;
    procedure Dividir_12ComMenos1Ponto5_ResultadoMenos6Ponto66;
    procedure Dividir_1PorZero_LevantarExceptionEZeroDivide;
  end;

implementation

procedure TCalculoOperacoesTests.DividirPorZero;
begin
  FSUT.Dividir(1, 0);
end;

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

procedure TCalculoOperacoesTests.Subtrair_4com2_Resultado2;
begin
  CheckEquals(2, FSUT.Subtrair(4, 2));
end;

procedure TCalculoOperacoesTests.Subtrair_3ComMenos1Ponto9_Resultado4Ponto9;
begin
  CheckEquals(4.9, FSUT.Subtrair(3, -1.9));
end;

procedure TCalculoOperacoesTests.Subtrair_Menos3Com4_ResultadoMenos1;
begin
  CheckEquals(-7, FSUT.Subtrair(-3, 4));
end;

procedure TCalculoOperacoesTests.Subtrair_3Ponto8Com1Ponto6_Resultado2Ponto2;
begin
  CheckEquals(2.2, FSUT.Subtrair(3.8, 1.6));
end;

procedure TCalculoOperacoesTests.Multiplicar_4Com4_Resultado16;
begin
  CheckEquals(16, FSUT.Multiplicar(4, 4));
end;

procedure TCalculoOperacoesTests.Multiplicar_5com0_Resultado0;
begin
  CheckEquals(0, FSUT.Multiplicar(5, 0));
end;

procedure TCalculoOperacoesTests.Multiplicar_Menos3com1Ponto5_ResultadoMenos4Ponto5;
begin
  CheckEquals(-4.5, FSUT.Multiplicar(-3, 1.5));
end;

procedure TCalculoOperacoesTests.Dividir_5Com2_Resultado2Ponto5;
begin
  CheckEquals(2.5, FSUT.Dividir(5, 2));
end;

procedure TCalculoOperacoesTests.Dividir_12ComMenos1Ponto5_ResultadoMenos6Ponto66;
begin
  CheckEquals(-8, FSUT.Dividir(12, -1.5));
end;

procedure TCalculoOperacoesTests.Dividir_1PorZero_LevantarExceptionEZeroDivide;
begin
  CheckException(DividirPorZero, ECalculoOperacoes);
end;

procedure TCalculoOperacoesTests.TearDown;
begin
  FSUT.Free;
end;

initialization

RegisterTest(TCalculoOperacoesTests.Suite);

end.
