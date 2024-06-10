//------------------------------------------------------------------------------------------------------------
//********* Sobre ************
//Autor: Gisele de Melo
//Esse código foi desenvolvido com o intuito de aprendizado para o blog codedelphi.com, portanto não me
//responsabilizo pelo uso do mesmo.
//
//********* About ************
//Author: Gisele de Melo
//This code was developed for learning purposes for the codedelphi.com blog, therefore I am not responsible for
//its use.
//------------------------------------------------------------------------------------------------------------
unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    lblPalavraOculta: TLabel;
    edtLetra: TEdit;
    btnEnviar: TButton;
    lblLetrasErradas: TLabel;
    lblTentativasRestantes: TLabel;
    btnNovoJogo: TButton;
    procedure btnNovoJogoClick(Sender: TObject);
    procedure btnEnviarClick(Sender: TObject);
  private
    { Private declarations }
    PalavraSecreta: string;
    LetrasErradas: string;
    TentativasRestantes: Integer;
    PalavraOculta: string;

    procedure AtualizarInterface;
    procedure VerificarLetra(Letra: Char);

  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

{ TForm1 }

procedure TForm1.AtualizarInterface;
begin
  //Atualiza os dados da palavra oculta, letras erradas e tentativas restantes
  lblPalavraOculta.Caption := PalavraOculta;
  lblLetrasErradas.Caption := 'Letras erradas: ' + LetrasErradas;
  lblTentativasRestantes.Caption := 'Tentativas restantes: ' + IntToStr(TentativasRestantes);
end;

procedure TForm1.btnEnviarClick(Sender: TObject);
var
  Letra: Char;
begin
  //Envia a letra digitada
  if Length(edtLetra.Text) = 1 then
  begin
    Letra := UpCase(edtLetra.Text[1]);
    VerificarLetra(Letra);
    edtLetra.Clear;
    edtLetra.SetFocus;
  end
  else
  begin
    ShowMessage('Por favor, insira uma letra.');
  end;
end;

procedure TForm1.btnNovoJogoClick(Sender: TObject);
begin
  PalavraSecreta := 'DELPHI'; // Defina a palavra secreta
  LetrasErradas := '';
  TentativasRestantes := 6; // Defina o número de tentativas permitidas
  PalavraOculta := StringOfChar('_', Length(PalavraSecreta));//Transforma o tamanho da palavra secreta em underline para exibir na tela
  AtualizarInterface;
end;

procedure TForm1.VerificarLetra(Letra: Char);
var
  i: Integer;
  Acertou: Boolean;
begin
  //verifica se a letra enviada estava certa ou errada
  Acertou := False;
  for i := 1 to Length(PalavraSecreta) do
  begin
    if PalavraSecreta[i] = Letra then
    begin
      PalavraOculta[i] := Letra;
      Acertou := True;
    end;
  end;

  //atualiza o número de tentativas caso tenha errado
  if not Acertou then
  begin
    LetrasErradas := LetrasErradas + Letra;
    Dec(TentativasRestantes);
  end;

  AtualizarInterface;

end;

end.
