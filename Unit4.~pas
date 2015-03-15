unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, ExtCtrls, OpenGL, Math;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    PaintBox1: TPaintBox;
    Timer1: TTimer;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormPaint(Sender: TObject);
    procedure SetDCPF(DC:THandle);
    procedure glBuildFont;
    procedure glPrint(X, Y: Integer; Size: Byte; Text: AnsiString);
    procedure Timer1Timer(Sender: TObject);
    procedure PaintStep(XX : Byte; YY : Byte; Rejim : Byte);
    procedure PaintPress(XX : Byte; YY : Byte);
    procedure PaintClear(YY : Byte);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
 Form4: TForm4;

 pdcDIBEdit : HDC;          //--- Контекст устройства в памяти
 hbmpDIBEdit : HBITMAP;     //--- Битмап для памяти
 BMInfoEdit: tagBITMAPINFO; //--- Структура с информацией о графическом изображении
 pDIBEdit : Pointer;        //--- Указатель на память содержащую битмеп
 hrcEdit : HGLRC;
 CharList : GLuint;         //--- Список символов

 WinX, WinY, CE, CF : Word; //--- Размеры окна вывода рисунка
 TextSize : Byte;   //--- Размер шрифта в окне рисования
 GridSize : Byte;   //--- Размер сетки для отрисовки элементов таблицы
 ShftD : Byte;      //--- Смещение текстового поля от левого края
 BufImage : ^Byte;  //--- Указатель на облать памяти хранения рисунка
 PosMark : Byte;
 CTim : Byte;


implementation

uses Unit1;

{$R *.dfm}

procedure TForm4.FormCreate(Sender: TObject);
begin
 //------------------ Инициализируем необходимые переменные
 TextSize:=24; // Задаём размеры шрифта
 GridSize:=32; // Задаём размеры сетки
 WinX:= 401; //15*GridSize; // Задаём размеры окна вывода
 WinY:= 729; //14*GridSize; // Задаём размеры окна вывода
 ShftD:=4;     // Смещение текстового поля от левого края
 PaintBox1.Width:=WinX;
 PaintBox1.Height:=WinY;
 BufImage:=AllocMem(1048576); // Выделяем память для формирования изображения окна
 //---------------- Завершение Инициализации переменных

 // Создаем новый DC в памяти
 pdcDIBEdit:= CreateCompatibleDC(0);

 // Формируем требуемую информацию о битмепе
 BMInfoEdit.bmiHeader.biSize := sizeof(tagBITMAPINFOHEADER);
 BMInfoEdit.bmiHeader.biWidth := WinX;
 BMInfoEdit.bmiHeader.biHeight := WinY;
 BMInfoEdit.bmiHeader.biPlanes := 1;
 BMInfoEdit.bmiHeader.biBitCount := 24;
 BMInfoEdit.bmiHeader.biCompression := BI_RGB;

// Создаем DIB-секцию памяти
 hbmpDIBEdit:= CreateDIBSection(
   pdcDIBEdit,           // контекст устройства
   BmInfoEdit,              // информация о битмапе
   DIB_RGB_COLORS,   // параметры цвета
   pDIBEdit,         // местоположение буфера (память выделяет система)
   0,                // не привязываемся к отображаемым в память файлам
   0);

// Назначаем вывод битмапа в память DIB секции
 SelectObject(pdcDIBEdit, hbmpDIBEdit);

 // Инициализируем контекст устройства для вывода в память с использованием OpenGL
 SetDCPF(pdcDIBEdit);
 hrcEdit:=wglCreateContext(pdcDIBEdit);
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
 glViewport(0,0,WinX,WinY);
 glMatrixMode(GL_PROJECTION);
 glLoadIdentity;
 glOrtho(0, WinX, WinY, 0, -1, 1); // Устанавливаем тип проеции - Ортогональный
 glMatrixMode(GL_MODELVIEW);            // Настройка видовой матрицы
 glLoadIdentity();                        // Устанавливаем ее единичной
 glClearColor ($F0/255, $F0/255, $F0/255, 1);
 glClear(GL_COLOR_BUFFER_BIT);
 glBuildFont; // Создаём шрифт
 wglMakeCurrent(0,0);

 Label1.Visible:=False; Label2.Visible:=False; Label3.Visible:=False; Label4.Visible:=False;
 Label5.Visible:=False; Label6.Visible:=False; Label7.Visible:=False; Label8.Visible:=False;
 Label9.Visible:=False; Label10.Visible:=False; Label11.Visible:=False; Label12.Visible:=False;
 Label13.Visible:=False; Label14.Visible:=False; Label15.Visible:=False; Label16.Visible:=False;
 Label17.Visible:=False; Label18.Visible:=False; Label19.Visible:=False; Label20.Visible:=False;
 Label21.Visible:=False; Label22.Visible:=False; Label23.Visible:=False;
 Label24.Visible:=False; Label25.Visible:=False; Label26.Visible:=False; Label27.Visible:=False;
 Label28.Visible:=False; Label29.Visible:=False; Label30.Visible:=False; Label31.Visible:=False;
 Label32.Visible:=False; Label33.Visible:=False; Label34.Visible:=False; Label35.Visible:=False;
 Label36.Visible:=False; Label37.Visible:=False; Label38.Visible:=False; Label39.Visible:=False;
 Label40.Visible:=False; Label41.Visible:=False; Label42.Visible:=False; Label43.Visible:=False;
 Label44.Visible:=False; Label45.Visible:=False; Label46.Visible:=False;

end;

procedure TForm4.FormPaint(Sender: TObject);
begin
 BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm4.SetDCPF(DC:THandle);
var
 nPixelFormat:Integer;
 pfd:TPixelFormatDescriptor;
begin
 FillChar(pfd,SizeOf(pfd),0);
 with pfd do
  begin
   nSize:=sizeof(pfd);
   nVersion:=1;
   dwFlags:=PFD_DRAW_TO_BITMAP or PFD_GENERIC_ACCELERATED or PFD_SUPPORT_OPENGL;
   cColorBits:=24;
   cDepthBits:=32;
   iLayerType:=PFD_MAIN_PLANE
  end;
 nPixelFormat:=ChoosePixelFormat(DC,@pfd);
 SetPixelFormat(DC,nPixelFormat,@pfd);
end;

procedure TForm4.glBuildFont;
var
 Font: hFont;
begin
// font := CreateFont(1:Высота фонта, 2: Ширина фонта, 3: Угол отношения,
//                      4: Угол наклона, 5: Ширина шрифта, 6: Курсив,
//                      7: Подчеркивание, 8: Перечеркивание, 9: Идентификатор набора символов
//                      10: Точность вывода, 11: Точность отсечения, 12: Качество вывода,
//                      13: Семейство и шаг, 14: Имя шрифта);
//   wglUseFontOutlines( 1: Выбрать текущий контекст устройства (DC), 2: Стартовый символ,
//                       3: Количество создаваемых списков отображения, 4: Стартовое значение списка отображения,
//                       5: Отклонение от настоящего контура 6: Толщина шрифта по оси Z,
//                       7: Использовать полигоны, а не линии, 8: Буфер адреса для данных списка отображения
//маленький
 CharList := glGenLists(256);
 Font := CreateFontA(TextSize, 0, 0, 0, FW_BOLD, 0, 0, 0, RUSSIAN_CHARSET, OUT_TT_PRECIS,
   CLIP_DEFAULT_PRECIS, ANTIALIASED_QUALITY, FF_DONTCARE or DEFAULT_PITCH, 'Times New Roman');
 SelectObject(pdcDIBEdit, Font);   // Выбрать шрифт, созданный нами
 wglUseFontBitmaps(pdcDIBEdit, 0,256, CharList);
 DeleteObject(font);
//средний
 CharList := glGenLists(256);
 font := CreateFont(2*TextSize, 0, 0, 0, FW_NORMAL, 0, 0, 0, RUSSIAN_CHARSET, OUT_TT_PRECIS,
   CLIP_DEFAULT_PRECIS, ANTIALIASED_QUALITY, FF_DONTCARE or DEFAULT_PITCH, 'Times New Roman');
 SelectObject(pdcDIBEdit, font);  // Выбрать шрифт, созданный нами
 wglUseFontBitmaps(pdcDIBEdit, 0, 256, CharList);
 DeleteObject(font);
//большой
 CharList := glGenLists(256);
 font := CreateFont(4*TextSize, 0, 0, 0, FW_HEAVY, 0, 0, 0, DEFAULT_CHARSET, OUT_TT_PRECIS,
   CLIP_DEFAULT_PRECIS, ANTIALIASED_QUALITY, FF_DONTCARE or DEFAULT_PITCH, 'Times New Roman');
 SelectObject(pdcDIBEdit, font); // Выбрать шрифт, созданный нами
 wglUseFontBitmaps(pdcDIBEdit, 0, 256, CharList);
 DeleteObject(font);
end;

//-->  Вывод строки на экран
procedure TForm4.glPrint(X, Y: Integer; Size: Byte; Text: AnsiString);
begin
// Расчитывается позиция на экране. Требуется только для растрового
// вывода. То есть при векторном выводе X и Y gLPrint игнорируются,
// поэтому перед выводом надо будет воспользоваться glTranslatef
 glRasterPos2i(X, Y);
 glPushAttrib(GL_LIST_BIT); // Протолкнуть биты списка отображения
 if Size=1 then glListBase(1);  // Задать базу символа
 if Size=2 then glListBase(257);  // Задать базу символа
 if Size=3 then glListBase(513);  // Задать базу символа
 glCallLists(length(Text), GL_UNSIGNED_BYTE, PChar(Text));
 glPopAttrib();   // Возврат битов списка отображения
end;

procedure TForm4.PaintClear(YY : Byte);
begin
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
 glColor3ub($F0,$F0,$F0); //--- Серый
 glBegin(GL_POLYGON);
  glVertex2i(0,0+32*(YY-1));
  glVertex2i(401,0+32*(YY-1));
  glVertex2i(401,25+32*(YY-1));
  glVertex2i(0,25+32*(YY-1));
 glEnd();
 wglMakeCurrent(0,0);
 BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm4.PaintStep(XX : Byte; YY : Byte; Rejim : Byte);
begin
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
 if Rejim=1 then glColor3ub($E0,$E0,$E0); //--- Серый
 if Rejim=2 then glColor3ub($D0,$E0,$D0); //--- Зелёный
 if Rejim=3 then glColor3ub($F0,$A0,$A0); //--- Красный
 glBegin(GL_POLYGON);
  glVertex2i(0+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,24+32*(YY-1));
  glVertex2i(0+40*XX,24+32*(YY-1));
 glEnd();
 if Rejim=1 then glColor3ub($FF,$FF,$FF); //--- Белый
 if Rejim=2 then glColor3ub($80,$80,$80); //--- Серый
 if Rejim=3 then glColor3ub($80,$80,$80); //--- Серый
 glBegin(GL_LINE_LOOP);
  glVertex2i(0+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,24+32*(YY-1));
  glVertex2i(0+40*XX,24+32*(YY-1));
 glEnd();
 glPrint(16+40*XX,18+32*(YY-1), 1, IntToStr(XX+1));
 wglMakeCurrent(0,0);
 BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm4.PaintPress(XX : Byte; YY : Byte);
begin
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
 glColor3ub($E0,$E0,$E0);
 glBegin(GL_LINES);
  glVertex2i(0+40*XX,Ustr[YY].PGL+32*(YY-1));
  glVertex2i(40+40*XX,Ustr[YY].PGL+32*(YY-1));
 glEnd();
 Ustr[YY].PGL:=Ustr[YY].PGL+1;
 glColor3ub($F0,$A0,$A0);
 glBegin(GL_LINES);
  glVertex2i(0+40*XX,Ustr[YY].PGL+32*(YY-1));
  glVertex2i(40+40*XX,Ustr[YY].PGL+32*(YY-1));
 glEnd();
 if Ustr[YY].PGL>=Ustr[YY].PGF then
  begin
   Ustr[YY].PGL:=0; if Ustr[YY].PGF>=1 then Ustr[YY].PGF:=Ustr[YY].PGF-1;
   if Ustr[YY].PGF=0 then
    begin
     Ustr[YY].PGF:=23;
     glColor3ub($E0,$E0,$E0); //--- Серый
     glBegin(GL_POLYGON);
      glVertex2i(0+40*XX,0+32*(YY-1));
      glVertex2i(40+40*XX,0+32*(YY-1));
      glVertex2i(40+40*XX,Ustr[YY].PGF+32*(YY-1));
      glVertex2i(0+40*XX,Ustr[YY].PGF+32*(YY-1));
     glEnd();
    end;
  end;
 glColor3ub($80,$80,$80); //--- Серый
 glBegin(GL_LINE_LOOP);
  glVertex2i(0+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,0+32*(YY-1));
  glVertex2i(40+40*XX,24+32*(YY-1));
  glVertex2i(0+40*XX,24+32*(YY-1));
 glEnd();
 glPrint(16+40*XX,18+32*(YY-1), 1, IntToStr(XX+1));
 wglMakeCurrent(0,0);
 BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm4.Timer1Timer(Sender: TObject);
var
 CA, Min : Word;
 Tim : LongWord;
 XPF, Sek : Byte;
 SS : String;
begin
 CA:=1;
 while(CA<=23)do
  begin
   if Ustr[CA].StartSPM=1 then PaintPress(Ustr[CA].NumStep-1, CA);
   CA:=CA+1;
  end;
 CTim:=CTim+1;
 if CTim>=5 then
  begin
   CTim:=0;
   DCur:=Now;
   CA:=1;
   while(CA<=23)do
    begin
     if Ustr[CA].StartSPM=1 then
      begin
       XPF:=Floor(100*Ustr[CA].TimeStep/(58*Ustr[CA].TTT[Ustr[CA].NumStep-1]+1));
       Tim:=Floor(86400*(DCur-Ustr[CA].TimeStart));
       Min:=Tim div 60;
       if Min<=9 then SS:='0'+IntToStr(Min) else SS:=IntToStr(Min);
       SS:=SS+':';
       Sek:=Tim-60*Min;
       if Sek<=9 then SS:=SS+'0'+IntToStr(Sek) else SS:=SS+IntToStr(Sek);
       if CA=1 then Label24.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=2 then Label25.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=3 then Label26.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=4 then Label27.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=5 then Label28.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=6 then Label29.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=7 then Label30.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=8 then Label31.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=9 then Label32.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=10 then Label33.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=11 then Label34.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=12 then Label35.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=13 then Label36.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=14 then Label37.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=15 then Label38.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=16 then Label39.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=17 then Label40.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=18 then Label41.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=19 then Label42.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=20 then Label43.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=21 then Label44.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=22 then Label45.Caption:=SS+' '+IntToStr(XPF)+'%';
       if CA=23 then Label46.Caption:=SS+' '+IntToStr(XPF)+'%';
      end;
     CA:=CA+1;
    end;
  end;
end;

procedure TForm4.FormShow(Sender: TObject);
begin
// wglMakeCurrent(pdcDIBEdit,hrcEdit);
//   PaintStep(2, 5, 2);
// wglMakeCurrent(0,0);
// BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

end.
