unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts, FMX.Edit;

type
  TForm1 = class(TForm)
    caixa_botoes: TLayout;
    btn_igual: TButton;
    btn_1: TButton;
    btn_ponto: TButton;
    btn_2: TButton;
    btn_multi: TButton;
    btn_0: TButton;
    btn_7: TButton;
    btn_8: TButton;
    btn_9: TButton;
    btn_6: TButton;
    btn_5: TButton;
    btn_somar: TButton;
    btn_sub: TButton;
    btn_3: TButton;
    btn_div: TButton;
    btn_4: TButton;
    caixa_topo: TLayout;
    lb_operador: TLabel;
    txt_num_1: TEdit;
    txt_num_2: TEdit;
    procedure btn_subClick(Sender: TObject);
    procedure btn_somarClick(Sender: TObject);
    procedure btn_divClick(Sender: TObject);
    procedure btn_multiClick(Sender: TObject);
    procedure btn_igualClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.btn_divClick(Sender: TObject);
begin
  lb_operador.Text := '/';
  btn_somar.Enabled := true;
  btn_sub.Enabled := true;
  btn_multi.Enabled := true;
  btn_div.Enabled := false;
end;

procedure TForm1.btn_igualClick(Sender: TObject);
  var n1, n2 : double;
  begin
    n1 := StrToFloat(txt_num_1.Text);
    n2 := StrToFloat(txt_num_2.Text);

    // Efetuando a soma

    if (lb_operador.Text = '+') Then
      begin
        ShowMessage (FloatToStr(n1 + n2));
      end;

    if (lb_operador.Text = '-') Then
      begin
        ShowMessage (FloatToStr(n1 - n2));
      end;

    if (lb_operador.Text = 'x') Then
      begin
        ShowMessage (FloatToStr(n1 * n2));
      end;

    if (lb_operador.Text = '/') Then
      begin
        ShowMessage (FloatToStr(n1 / n2));
      end;
  end;

procedure TForm1.btn_multiClick(Sender: TObject);
  begin
    lb_operador.Text := 'x';
    btn_somar.Enabled := true;
    btn_sub.Enabled := true;
    btn_multi.Enabled := false;
    btn_div.Enabled := true;
  end;

procedure TForm1.btn_somarClick(Sender: TObject);
  begin
    lb_operador.Text := '+';
    btn_somar.Enabled := false;
    btn_sub.Enabled := true;
    btn_multi.Enabled := true;
    btn_div.Enabled := true;
  end;

procedure TForm1.btn_subClick(Sender: TObject);
  begin
    lb_operador.Text := '-';
    btn_somar.Enabled := true;
    btn_sub.Enabled := false;
    btn_multi.Enabled := true;
    btn_div.Enabled := true;
  end;

end.
