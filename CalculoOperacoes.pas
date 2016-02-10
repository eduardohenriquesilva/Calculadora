unit CalculoOperacoes;

interface

uses
  System.SysUtils,
  System.Classes;

type
  ECalculoOperacoes = Exception;

  TDmCalculoOperacoes = class(TDataModule)
  public
    function Somar(const ValorEsquerda, ValorDireita: Currency): Currency;
    function Subtrair(const ValorEsquerda, ValorDireita: Currency): Currency;
    function Multiplicar(const ValorEsquerda, ValorDireita: Currency): Currency;
    function Dividir(const ValorEsquerda, ValorDireita: Currency): Currency;
  end;

var
  DmCalculoOperacoes: TDmCalculoOperacoes;

implementation

uses
  Vcl.Dialogs;

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

{ TDmCalculoOperacoes }

function TDmCalculoOperacoes.Somar(const ValorEsquerda, ValorDireita: Currency): Currency;
begin
  Result := ValorEsquerda + ValorDireita;
end;

function TDmCalculoOperacoes.Subtrair(const ValorEsquerda, ValorDireita: Currency): Currency;
begin
  Result := ValorEsquerda - ValorDireita;
end;

function TDmCalculoOperacoes.Multiplicar(const ValorEsquerda, ValorDireita: Currency): Currency;
begin
  Result := ValorEsquerda * ValorDireita;
end;

function TDmCalculoOperacoes.Dividir(const ValorEsquerda, ValorDireita: Currency): Currency;
begin
  try
    Result := ValorEsquerda / ValorDireita;
  except
    on E: EZeroDivide do
    begin
      raise ECalculoOperacoes.Create('Não pode dividir por zero');
    end
    else
      raise;
  end;
end;

end.
