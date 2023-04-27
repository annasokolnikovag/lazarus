unit unitstr;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Grids;

type

  { TForm1 }

  TForm1 = class(TForm)
    Buttonsr: TButton;
    Label1: TLabel;
    LabelSR: TLabel;
    StringGrid1: TStringGrid;
    procedure ButtonsrClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.ButtonsrClick(Sender: TObject);
var
a : array[1..5] of integer; // массив
summ: integer; // сумма элементов
sr: real; // среднее арифметическое
i: integer; // индекс

begin
  // ввод массива
for i:= 1 to 5 do
if Length(StringGrid1.Cells[i-1,0]) <> 0
then a[i] := StrToInt(StringGrid1.Cells[i-1,0])
else a[i] := 0;
 // обработка массива
summ := 0;
for i :=1 to 5 do
summ := summ + a[i];
sr := summ / 5;
 // вывод результата
LabelSR.Caption :='Сумма элементов: ' + IntToStr(summ) + #13+ 'Среднее арифметическое: ' + FloatToStr(sr);
end;

end.

