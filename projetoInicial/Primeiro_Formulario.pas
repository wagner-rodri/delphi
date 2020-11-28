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
    txt_edit: TEdit;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Cad_User: TCad_User;

implementation

{$R *.dfm}

end.
