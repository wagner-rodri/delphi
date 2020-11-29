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
    Label2: TLabel;
    Label3: TLabel;
    btn_calcular: TButton;
    txt_vlr_1: TEdit;
    txt_vlr_2: TEdit;
    txt_vlr_total: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure btn_salvarClick(Sender: TObject);
    procedure btn_deletarClick(Sender: TObject);
    procedure btn_editarClick(Sender: TObject);
    procedure btn_icone_salvarClick(Sender: TObject);
    procedure btn_calcularClick(Sender: TObject);
  private
    var nome:string;
    var sobrenome, endereco:string;
    var valor:integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_User: TCad_User;

implementation

{$R *.dfm}

procedure TCad_User.btn_calcularClick(Sender: TObject);
var vlr1, vlr2, total:double;
begin
  vlr1 := StrToFloat(txt_vlr_1.Text);
  vlr2 := StrToFloat(txt_vlr_2.Text);

  total := vlr1 + vlr2;
  txt_vlr_total.Text := FloatToStr(total);

end;

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

procedure TCad_User.btn_icone_salvarClick(Sender: TObject);
begin
  valor := 5;
  lb_valor.Caption := IntToStr(valor);
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
