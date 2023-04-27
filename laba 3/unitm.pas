unit unitm;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    BVivod: TButton;
    Label1: TLabel;
    Memo1: TMemo;
    procedure BVivodClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BVivodClick(Sender: TObject);
 const
 SIZE=5; //размермассива
var
a:array[1..SIZE]of string[30];
n: integer; // количество строк
 i:integer; // индекс элемента массива
st:string;
begin
n:=Memo1.Lines.Count;

if n = 0 then
begin
ShowMessage('Исходные данные не введены!');
Exit; // выход из процедуры обработки события
end;

if n>SIZE then
begin
ShowMessage('Количество введенных строк превышает размер массива');
 n:=SIZE; // будем вводить только первые SIZE строк
end;
for i:=1 to n do
a[i]:=Form1.Memo1.Lines[i-1];
// вывод массива
if n> 0 then
begin
st:='Введенный массив:'+#13;
for i:=1 to n do
st:=st+IntToStr(i)+' '+ a[i]+#13;
ShowMessage(st);
end;
end;

end.

