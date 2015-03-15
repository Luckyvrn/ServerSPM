unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, TeEngine, Series, ExtCtrls, TeeProcs, Chart;

type
  TForm3 = class(TForm)
    Chart1: TChart;
    Series1: TLineSeries;
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm3.FormShow(Sender: TObject);
begin
// Edit1.Text:='Cтол '+IntToStr(SelPanel);
end;

end.
