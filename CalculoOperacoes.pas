unit CalculoOperacoes;

interface

uses
  System.SysUtils,
  System.Classes;

type
  TDmCalculoOperacoes = class(TDataModule)
    procedure DataModuleCreate(Sender: TObject);
  public
    function Somar(const ValorEsquerda, ValorDireita: Currency): Currency;
    function Subtrair(const ValorEsquerda, ValorDireita: Currency): Currency;
    function Multiplicar(const ValorEsquerda, ValorDireita: Currency): Currency;

  end;

var
  DmCalculoOperacoes: TDmCalculoOperacoes;

implementation

{ %CLASSGROUP 'System.Classes.TPersistent' }

{$R *.dfm}

procedure TDmCalculoOperacoes.DataModuleCreate(Sender: TObject);
begin

end;

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

end.
