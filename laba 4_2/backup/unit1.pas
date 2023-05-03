unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    ComboBox3: TComboBox;
    EditName: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}
const
DBName= 'C:\Users\student\Documents\sok\laba 4_2\Medals.txt';
var
f:TextFile;

{TForm1}
procedure TForm1.FormActivate(Sender: TObject);
begin
AssignFile(f, DBName);
 {$I-}
Append(f);
{ сделать недоступными поля ввода в случае, когда файл БД не найден}
If IOResult<>0 then
begin
EditName.Enabled:=False;
 ComboBox1.Enabled:=False;
 ComboBox2.Enabled:=False;
ComboBox3.Enabled:=False;
ShowMessage('Ошибка! Файл БД не найден ' + DBName);
end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
Append(f);
if (Length(EditName.Text)=0) then
ShowMessage('поле СПОРТСМЕН должно быть заполнено!')
else WriteLn(f, EditName.Text, ' ', ComboBox1.Text, '' , ComboBox2.Text, ' ' ,ComboBox3.Text);
{очистить поля }
EditName.Text:=' ';
ComboBox1.Text:=' ';
 ComboBox2.Text:=' ';
 ComboBox3.Text:=' ';

CloseFile(f);
end;
end.

