unit Principal;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.StdCtrls,
  Vcl.ActnList,
  CalculoOperacoes;

type
  TFormPrincipal = class(TForm)
    EditValorEsquerda: TEdit;
    EditValorDireita: TEdit;
    EditResultado: TEdit;
    ButtonAdicao: TButton;
    ActionListCalculadora: TActionList;
    ActionAdicao: TAction;
    Label1: TLabel;
    LabelOperacao: TLabel;
    ButtonSubtracao: TButton;
    ActionSubtracao: TAction;
    ActionMultiplicacao: TAction;
    ButtonMultiplicacao: TButton;
    ButtonDivisao: TButton;
    ActionDivisao: TAction;
    procedure ActionDivisaoExecute(Sender: TObject);
    procedure ActionMultiplicacaoExecute(Sender: TObject);
    procedure ActionSubtracaoExecute(Sender: TObject);
    procedure ActionAdicaoExecute(Sender: TObject);
  private
    FCalculo: TDmCalculoOperacoes;
    function ObterValor(Edit: TEdit): Extended;
  public
    constructor Create(AOwner: TComponent); override;

  end;

var
  FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}


constructor TFormPrincipal.Create(AOwner: TComponent);
begin
  inherited;
  FCalculo := TDmCalculoOperacoes.Create(AOwner);
end;

procedure TFormPrincipal.ActionDivisaoExecute(Sender: TObject);
var
  VE, VD: Extended;
begin
  LabelOperacao.Caption := '/';

  VE := ObterValor(EditValorEsquerda);
  VD := ObterValor(EditValorDireita);

  EditResultado.Text := Format('%8.5f', [FCalculo.Dividir(VE, VD)])
end;

procedure TFormPrincipal.ActionMultiplicacaoExecute(Sender: TObject);
var
  VD, VE: Extended;
begin
  LabelOperacao.Caption := '*';

  VE := ObterValor(EditValorEsquerda);
  VD := ObterValor(EditValorDireita);

  EditResultado.Text := Format('%8.5f', [FCalculo.Multiplicar(VE, VD)])
end;

procedure TFormPrincipal.ActionSubtracaoExecute(Sender: TObject);
var
  VD, VE: Extended;
begin
  LabelOperacao.Caption := '-';

  VE := ObterValor(EditValorEsquerda);
  VD := ObterValor(EditValorDireita);

  EditResultado.Text := Format('%8.5f', [FCalculo.Subtrair(VE, VD)])
end;

procedure TFormPrincipal.ActionAdicaoExecute(Sender: TObject);
var
  VD, VE: Extended;
begin
  LabelOperacao.Caption := '+';

  VE := ObterValor(EditValorEsquerda);
  VD := ObterValor(EditValorDireita);

  EditResultado.Text := Format('%8.5f', [FCalculo.Somar(VE, VD)])
end;

function TFormPrincipal.ObterValor(Edit: TEdit): Extended;
begin
  Edit.Text := StringReplace(Edit.Text, '.', ',', [rfReplaceAll]);
  Result := StrToFloat(Edit.Text);
end;

end.
