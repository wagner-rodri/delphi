unit Primeiro_Formulario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TCad_User = class(TForm)
    Label1: TLabel;
    btn_salvar: TButton;
    btn_icone_salvar: TSpeedButton;
    btn_deletar: TButton;
    btn_editar: TButton;
    txt_nome: TEdit;
    txt_nome2: TEdit;
    txt_nome3: TEdit;
    lb_valor: TLabel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
  private
    var nome:string;
    var sobrenome, endereco:string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_User: TCad_User;

implementation

{$R *.dfm}

procedure TCad_User.btn_deletarClick(Sender: TObject);
begin
  nome := 'Deu Certo!';
  sobrenome := 'Parabéns!';
  endereco := 'Rua B';
  txt_nome.Text := nome;
  txt_nome2.Text := sobrenome;
  txt_nome3.Text := endereco;
end;

procedure TCad_User.btn_editarClick(Sender: TObject);
begin
  nome := 'Deu Certo!';
  sobrenome := 'Parabéns!';
  endereco := 'Rua B';
  lb_valor.Caption := nome + ' ' + sobrenome + ' ' + endereco;
end;

procedure TCad_User.btn_salvarClick(Sender: TObject);
begin
  nome := 'Wagner';
  sobrenome := 'Rodrigues';
  endereco := 'Rua A';
  txt_nome.Text := nome;
  txt_nome2.Text := sobrenome;
  txt_nome3.Text := endereco;
end;

end.
