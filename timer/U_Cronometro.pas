unit U_Cronometro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.MPlayer, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    t_timer: TTimer;
    lb_dois_pontos: TLabel;
    lb_minutos: TLabel;
    MediaPlayer1: TMediaPlayer;
    btn_play: TSpeedButton;
    lb_segundos: TLabel;
    btn_abrir: TButton;
    OpenDialog1: TOpenDialog;
    procedure t_timerTimer(Sender: TObject);
    procedure btn_playClick(Sender: TObject);
    procedure btn_abrirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.btn_abrirClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    begin
      MediaPlayer1.FileName := OpenDialog1.FileName;
    end;

end;

procedure TForm1.btn_playClick(Sender: TObject);
begin
 t_timer.Enabled := true;
end;

procedure TForm1.t_timerTimer(Sender: TObject);
  var seg, min, cont, cont_min: Integer;
begin
  seg := strToInt(lb_segundos.Caption);
  min := strToInt(lb_minutos.Caption);
  cont := seg + 1;

  lb_segundos.Caption := intToStr(cont);

  if lb_segundos.Caption = '60' then
    begin
      lb_segundos.Caption := '0';
      lb_minutos.Caption := intToStr(strToInt(lb_minutos.Caption) + 1);
    end;

  if lb_minutos.Caption = '1' then
    begin
      t_timer.Enabled := false;
      MediaPlayer1.Open;
      MediaPlayer1.Play;
    end;

end;

end.
