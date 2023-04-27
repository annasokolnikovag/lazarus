unit unitfunt;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Editfunt: TEdit;
    Label1: TLabel;
    Labelfunt: TLabel;
    Label3: TLabel;
    LCountry: TLabel;
    LBCountry: TListBox;
    procedure Button1Click(Sender: TObject);

  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
   var
funt:real; { вес в фунтах }
   kg:real; { вес в килограммах }
k:real; { коэффициент пересчета }

begin
case LBCountry.ItemIndex of
0: k:=0.4059; { Россия }
 1: k:=0.453592;{ Англия }
 2: k:=0.56001; { Австрия }
3..5,7:k:=0.5; { Германия, Дания, Исландия, Нидерланды }
6: k:=0.31762; { Ирландия }
end;
funt:=StrToFloat(Editfunt.Text);
kg:=k*funt;
Labelfunt.caption:=Editfunt.Text + ' фунт - '+ FloatToStrF(kg,ffFixed,6,3)+ ' кг.';
end;



end.

