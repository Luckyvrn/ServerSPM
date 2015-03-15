unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit2;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
var
 SDir : String;
begin
 {$I-}
 SDir:=CurrentDir+'\'+Edit1.Text+'_'+Edit2.Text+'_'+Edit3.Text;
 WorkFolder:=SDir;
 MkDir(WorkFolder);
 if IOResult <> 0 then MessageBox(Handle, 'Невозможно создать папку.'+#13+#10+'Папка уже существует.', 'Предупреждение', MB_ICONWARNING);
 MkDir(SDir+'\Dat');
 {$I+}
 Form8.Close;
 Form2.ShellListView1.Refresh;
end;

end.
 