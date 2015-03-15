unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Math;

type
  TForm9 = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
 Ustr[SelPanel].KorrMn:=Floor(10000*StrToFloat(Edit1.Text));
 Ustr[SelPanel].KorrSm:=StrToInt(Edit2.Text);
 PByt:=Addr(Ustr[SelPanel].KorrMn);
 BufTemp[0]:=PByt^; Inc(PByt);
 BufTemp[1]:=PByt^; Inc(PByt);
 BufTemp[2]:=PByt^; Inc(PByt);
 BufTemp[3]:=PByt^;
 Form1.WriteBufKom($04, Ustr[SelPanel].Adr, $04);
 DublStat[SelPanel]:=$0002 or DublStat[SelPanel];
 Form9.Close;
end;

procedure TForm9.FormShow(Sender: TObject);
begin
 Edit1.Text:=FloatToStrF(0.0001*Ustr[SelPanel].KorrMn,ffGeneral,6,4);
 Edit2.Text:=IntToStr(Ustr[SelPanel].KorrSm);
end;

end.
