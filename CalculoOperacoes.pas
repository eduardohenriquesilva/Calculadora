unit CalculoOperacoes;

interface

uses
  System.SysUtils, System.Classes;

type
  TDmCalculoOperacoes = class(TDataModule)
  private
    { Private declarations }
  public
    function Somar(const ValorEsquerda, ValorDireita: Extended): Extended;
  end;

var
  DmCalculoOperacoes: TDmCalculoOperacoes;

implementation

{%CLASSGROUP 'System.Classes.TPersistent'}

{$R *.dfm}

{ TDmCalculoOperacoes }

function TDmCalculoOperacoes.Somar(const ValorEsquerda, ValorDireita: Extended): Extended;
begin
  Result := ValorEsquerda + ValorDireita;
end;

end.
