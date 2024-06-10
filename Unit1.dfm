object Form1: TForm1
  Left = 0
  Top = 0
  BorderStyle = bsSizeToolWin
  Caption = 'Jogo da Forca Simples'
  ClientHeight = 173
  ClientWidth = 234
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object lblPalavraOculta: TLabel
    Left = 16
    Top = 8
    Width = 76
    Height = 15
    Caption = 'Palavra Oculta'
  end
  object lblLetrasErradas: TLabel
    Left = 16
    Top = 75
    Width = 75
    Height = 15
    Caption = 'Letras erradas:'
  end
  object lblTentativasRestantes: TLabel
    Left = 16
    Top = 107
    Width = 105
    Height = 15
    Caption = 'Tentativas restantes:'
  end
  object edtLetra: TEdit
    Left = 16
    Top = 37
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object btnEnviar: TButton
    Left = 143
    Top = 36
    Width = 75
    Height = 25
    Caption = 'Enviar'
    TabOrder = 1
    OnClick = btnEnviarClick
  end
  object btnNovoJogo: TButton
    Left = 17
    Top = 136
    Width = 75
    Height = 25
    Caption = 'Novo Jogo'
    TabOrder = 2
    OnClick = btnNovoJogoClick
  end
end
