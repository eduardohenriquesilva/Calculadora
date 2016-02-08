object FormPrincipal: TFormPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Calculadora'
  ClientHeight = 291
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 279
    Top = 43
    Width = 8
    Height = 13
    Caption = '='
  end
  object LabelOperacao: TLabel
    Left = 135
    Top = 43
    Width = 3
    Height = 13
  end
  object EditValorEsquerda: TEdit
    Left = 8
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object EditValorDireita: TEdit
    Left = 152
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object EditResultado: TEdit
    Left = 293
    Top = 40
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object ButtonAdicao: TButton
    Left = 24
    Top = 96
    Width = 75
    Height = 25
    Action = ActionAdicao
    TabOrder = 3
  end
  object ButtonSubtracao: TButton
    Left = 120
    Top = 96
    Width = 75
    Height = 25
    Action = ActionSubtracao
    TabOrder = 4
  end
  object ActionListCalculadora: TActionList
    Left = 72
    Top = 232
    object ActionAdicao: TAction
      Caption = 'Adi'#231#227'o'
      OnExecute = ActionAdicaoExecute
    end
    object ActionSubtracao: TAction
      Caption = 'Subtra'#231#227'o'
      OnExecute = ActionSubtracaoExecute
    end
  end
end
