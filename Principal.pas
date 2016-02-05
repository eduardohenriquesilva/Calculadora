unit Principal;

interface

uses Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs,
  Vcl.StdCtrls, Vcl.ActnList, CalculoOperacoes;

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
    procedure ActionAdicaoExecute(Sender: TObject);
  private
    FCalculo: TDmCalculoOperacoes;
    function ObterValor(Edit: TEdit): Extended;
  public
    constructor Create(AOwner: TComponent); override;

  end;

var FormPrincipal: TFormPrincipal;

implementation

{$R *.dfm}

constructor TFormPrincipal.Create(AOwner: TComponent);
begin
  inherited;
  FCalculo := TDmCalculoOperacoes.Create(AOwner);
end;

procedure TFormPrincipal.ActionAdicaoExecute(Sender: TObject);
var VD, VE: Extended;
begin
  LabelOperacao.Caption := '+';

  VD := ObterValor(EditValorEsquerda);
  VE := ObterValor(EditValorDireita);

  EditResultado.Text := Format('%8.5f', [FCalculo.Somar(VE, VD)])
end;

function TFormPrincipal.ObterValor(Edit: TEdit): Extended;
begin
  Edit.Text := StringReplace(Edit.Text, '.', ',', [rfReplaceAll]);
  Result := StrToFloat(Edit.Text);
end;

end.
