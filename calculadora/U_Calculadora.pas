unit U_Calculadora;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs,
  FMX.Controls.Presentation, FMX.StdCtrls, FMX.Layouts;

type
  TForm1 = class(TForm)
    Layout1: TLayout;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

end.
