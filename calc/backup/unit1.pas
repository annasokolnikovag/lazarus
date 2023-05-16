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
    Label1: TLabel;
    LabelAnswer: TLabel;
    procedure ButClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}


{ TForm1 }

procedure TForm1.ButClick(Sender: TObject);
begin
    EditA.Text:= EditA.Text +(Sender as TButton).Caption;

end;

end.

