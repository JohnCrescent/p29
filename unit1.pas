unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Image1: TImage;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var i,a,b,x,y:integer;
begin
  Randomize;
  for i:=1 to 1000 do
  begin
    image1.canvas.pen.color:=RANDOM(clwhite);
    image1.canvas.brush.color:=RANDOM(clwhite);
    a:=RANDOM(image1.width);   //veľkosť strany a-maximalne šírka image
    b:=RAndom(image1.height);  //veľkosť strany b-maximalne výška image
    x:=RANDOM(image1.width-a);
    y:=RANDOM(image1.height-b);
    //x,y sú súradnice ľavého horného vrchola
    image1.canvas.rectangle(x,y,x+a,y+b);
  end;
end;

end.

