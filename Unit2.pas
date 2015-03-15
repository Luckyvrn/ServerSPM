unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, ShellCtrls, Grids, DirOutln, StdCtrls, Menus,
  Buttons,
  CommCtrl, ShlObj, ActiveX, ImgList;


type
  TForm2 = class(TForm)
    ShellListView1: TShellListView;
    Edit1: TEdit;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Button1: TButton;
    procedure ShellListView1DblClick(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  CurrentDir, WorkFolder : String; //--- Наименование пути к рабочим папкам

implementation

uses Unit1, Unit7, Unit8;

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
 if TipDir=1 then
  begin
   Button1.Caption:='Выбрать папку как рабочую';
   if BaseFolder='' then
    begin
     CurrentDir:=ShellListView1.RootFolder.PathName;
    end else
    begin
     CurrentDir:=BaseFolder;
     ShellListView1.Root:=CurrentDir;
    end;
  end;
 if TipDir>=2 then
  begin
   Button1.Caption:='Выбрать папку для хранения отчётных данных';
   if Ustr[NumPanel].WorkDir='' then
    begin
     if (BaseFolder<>'')and(DirectoryExists(BaseFolder)=True) then
       ShellListView1.Root:=BaseFolder;
     CurrentDir:=ShellListView1.RootFolder.PathName;
    end else
    begin
     if (Ustr[NumPanel].WorkDir<>'')and(DirectoryExists(Ustr[NumPanel].WorkDir)=True)
      then ShellListView1.Root:=Ustr[NumPanel].WorkDir
       else  ShellListView1.Root:=BaseFolder;
     CurrentDir:=ShellListView1.RootFolder.PathName;
//     CurrentDir:=Ustr[NumPanel].WorkDir;
//     ShellListView1.Root:=CurrentDir;
    end;
  end;
 Edit1.Text:=CurrentDir;
end;

procedure TForm2.ShellListView1DblClick(Sender: TObject);
begin
 CurrentDir:=ShellListView1.RootFolder.PathName;
 Edit1.Text:=CurrentDir;
end;

procedure TForm2.N1Click(Sender: TObject);
begin
 if TipDir=1 then Form7.Show;
 if TipDir>=2 then Form8.Show;
end;

procedure TForm2.BitBtn1Click(Sender: TObject);
begin
 if CurrentDir<>'Компьютер' then ShellListView1.Back;
 CurrentDir:=ShellListView1.RootFolder.PathName;
 Edit1.Text:=CurrentDir;
end;

procedure TForm2.BitBtn2Click(Sender: TObject);
begin
 if TipDir=1 then Form7.Show;
 if TipDir>=2 then Form8.Show;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
 if TipDir=1 then
  begin
   if ShellListView1.SelCount>=1 then BaseFolder:=ShellListView1.SelectedFolder.PathName
    else BaseFolder:=ShellListView1.RootFolder.PathName;
  end;
 if (TipDir=2)or(TipDir=3) then
  begin
   if ShellListView1.SelCount>=1 then WorkFolder:=ShellListView1.SelectedFolder.PathName
    else WorkFolder:=ShellListView1.RootFolder.PathName;
   if TipDir=2 then Ustr[SelPanel].WorkDir:=WorkFolder;
   if TipDir=3 then
    begin
     Ustr[NumPanel].EnWork:=1;
     Ustr[NumPanel].WorkDir:=WorkFolder;
     if (DirectoryExists(WorkFolder+'\Dat')=False) then
      begin
       {$I-}
       MkDir(WorkFolder+'\Dat');
       {$I+}
      end;
     Ustr[NumPanel].Rejm:=2;
     Form1.ChangeObj(NumPanel);
//     Form1.Button3.Caption:='Загрузить алгоритм управления в устройство';
    end;
  end;
 Form1.Label10.Caption:=WorkFolder;
 Form1.StatusBar1.Panels.Items[2].Text:='Рабочая папка: '+BaseFolder;
 Form2.Close;
end;

end.
