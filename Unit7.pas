unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
 {$I-}
 BaseFolder:=CurrentDir+'\'+Edit1.Text;
 MkDir(BaseFolder);
 if IOResult <> 0 then MessageBox(Handle, 'Невозможно создать папку.'+#13+#10+'Папка уже существует.', 'Предупреждение', MB_ICONWARNING);
 {$I+}
 Form7.Close;
 Form2.ShellListView1.Refresh;
end;

end.
 