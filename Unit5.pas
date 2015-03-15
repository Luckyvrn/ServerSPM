unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit1, Unit3;

{$R *.dfm}

procedure TForm5.FormShow(Sender: TObject);
begin
 Edit1.Text:='Cтол '+IntToStr(SelPanel);
end;

procedure TForm5.Button1Click(Sender: TObject);
var            
 S : String;
begin
 S:=Edit1.Text;
 Ustr[SelPanel].Name:=S;
 Form1.RenamePanel();
 DublStat[SelPanel]:=$0001 or DublStat[SelPanel];
 Form5.Close;
end;

end.
