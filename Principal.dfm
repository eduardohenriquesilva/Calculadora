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
    Left = 32
    Top = 96
    Width = 75
    Height = 25
    Action = ActionAdicao
    TabOrder = 3
  end
  object ButtonSubtracao: TButton
    Left = 128
    Top = 96
    Width = 75
    Height = 25
    Action = ActionSubtracao
    TabOrder = 4
  end
  object ButtonMultiplicacao: TButton
    Left = 223
    Top = 96
    Width = 75
    Height = 25
    Action = ActionMultiplicacao
    TabOrder = 5
  end
  object ButtonDivisao: TButton
    Left = 320
    Top = 96
    Width = 75
    Height = 25
    Action = ActionDivisao
    TabOrder = 6
  end
  object ActionListCalculadora: TActionList
    Top = 264
    object ActionAdicao: TAction
      Caption = 'Adi'#231#227'o'
      OnExecute = ActionAdicaoExecute
    end
    object ActionSubtracao: TAction
      Caption = 'Subtra'#231#227'o'
      OnExecute = ActionSubtracaoExecute
    end
    object ActionMultiplicacao: TAction
      Caption = 'Multiplica'#231#227'o'
      OnExecute = ActionMultiplicacaoExecute
    end
    object ActionDivisao: TAction
      Caption = 'Divis'#227'o'
      OnExecute = ActionDivisaoExecute
    end
  end
end
