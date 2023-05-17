unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button0: TButton;
    ButClear: TButton;
    ButCor: TButton;
    ButStep: TButton;
    But1x: TButton;
    Buttonclear: TButton;
    ButtonRavno: TButton;
    ButtonPoint: TButton;
    ButtonPlus: TButton;
    ButtonMinus: TButton;
    ButtonMultiplic: TButton;
    ButtonDivision: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    EditA: TEdit;
    procedure But1xClick(Sender: TObject);
    procedure ButClearClick(Sender: TObject);
    procedure ButClick(Sender: TObject);
    procedure ButCorClick(Sender: TObject);
    procedure ButStepClick(Sender: TObject);
    procedure ButtonRavnoClick(Sender: TObject);
    procedure znakClick(Sender: TObject);
    procedure ButtonclearClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  a, b, c: real;
  znak:string;
implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.znakClick(Sender: TObject);
begin
    a:= StrToFloat(EditA.Text);
    EditA.Clear;
    znak:= (Sender as TButton).Caption;
end;

procedure TForm1.ButClick(Sender: TObject);
begin
    EditA.Text:= EditA.Text +(Sender as TButton).Caption;
end;

procedure TForm1.ButtonRavnoClick(Sender: TObject);
begin
   b:= StrToFloat(EditA.Text);
   EditA.Clear;
   case znak of
   '+' : c:=a+b;
   '-' : c:=a-b;
   '*' : c:=a*b;
   '/' : c:=a/b;
   end;

   EditA.Text:=FloatToStr(c);
end;

procedure TForm1.ButCorClick(Sender: TObject);
begin
  a:= StrToFloat(EditA.Text);
   a:= sqrt(a);
    EditA.Text:= FloatToStr(a);
    a:=0;
end;

procedure TForm1.ButStepClick(Sender: TObject);
begin
    a:= StrToFloat(EditA.Text);
   a:= sqr(a);
    EditA.Text:= FloatToStr(a);
    a:=0;
end;

procedure TForm1.ButClearClick(Sender: TObject);
begin
  EditA.Clear;
  a:=0;
  b:=0;
  c:=0;
end;

procedure TForm1.But1xClick(Sender: TObject);
begin
    a:= StrToFloat(EditA.Text);
   a:= 1/(a);
    EditA.Text:= FloatToStr(a);
    a:=0;
end;

procedure TForm1.ButtonclearClick(Sender: TObject);
var str:string;
begin
  str:= EditA.Text;
  if str <> '' then
  Delete(str, length(str),1);
  EditA.Text:=str;
end;



end.

