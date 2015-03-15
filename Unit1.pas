unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, WinSock, ExtCtrls, ComCtrls, Menus, DateUtils, Math,
  Grids, TeEngine, Series, TeeProcs, Chart, OpenGL;

const
 MaxBufLen  = 65507;
 APLRegLen  = 128;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    MainMenu1: TMainMenu;
    PopupMenu1: TPopupMenu;

    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    N20: TMenuItem;

    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;

    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;

    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;

    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    Panel11: TPanel;
    Panel12: TPanel;
    Panel13: TPanel;
    Panel14: TPanel;
    Panel15: TPanel;
    Panel16: TPanel;
    Panel17: TPanel;
    Panel18: TPanel;
    Panel19: TPanel;
    Panel20: TPanel;
    Panel21: TPanel;
    Panel22: TPanel;
    Panel23: TPanel;
    Panel24: TPanel;
    Panel25: TPanel;
    Panel26: TPanel;
    Panel27: TPanel;
    Panel28: TPanel;
    Panel29: TPanel;
    Panel30: TPanel;
    Panel31: TPanel;
    Panel32: TPanel;
    Panel33: TPanel;
    Panel34: TPanel;
    Panel35: TPanel;
    Panel36: TPanel;
    Panel37: TPanel;
    Panel38: TPanel;
    Panel39: TPanel;
    Panel40: TPanel;
    Panel41: TPanel;
    Panel42: TPanel;
    Panel43: TPanel;
    Panel44: TPanel;
    Panel45: TPanel;
    Panel46: TPanel;
    Panel47: TPanel;
    Panel48: TPanel;

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

    PaintBox1: TPaintBox;
    PaintBox2: TPaintBox;

    StringGrid1: TStringGrid;
    ScrollBar1: TScrollBar;
    Chart1: TChart;
    Series1: TLineSeries;
    Edit1: TEdit;
    CheckBox1: TCheckBox;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    ComboBox1: TComboBox;
    StatusBar1: TStatusBar;
    PageControl1: TPageControl;
    Memo1: TMemo;
    Label31: TLabel;

    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);

    procedure SetDCPF(DC:THandle);
    procedure glBuildFont;
    procedure glPrint(X, Y: Integer; Size: Byte; Text: AnsiString);
    procedure PaintTable();
    procedure PaintTableUpr();
    procedure PaintTableStt();

    procedure Panel1Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure Panel9Click(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel11Click(Sender: TObject);
    procedure Panel12Click(Sender: TObject);
    procedure Panel13Click(Sender: TObject);
    procedure Panel14Click(Sender: TObject);
    procedure Panel15Click(Sender: TObject);
    procedure Panel16Click(Sender: TObject);
    procedure Panel17Click(Sender: TObject);
    procedure Panel18Click(Sender: TObject);
    procedure Panel19Click(Sender: TObject);
    procedure Panel20Click(Sender: TObject);
    procedure Panel21Click(Sender: TObject);
    procedure Panel22Click(Sender: TObject);
    procedure Panel23Click(Sender: TObject);
    procedure Panel47Click(Sender: TObject);
    procedure Panel48Click(Sender: TObject);

    procedure Panel1ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel2ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel3ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel4ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel5ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel6ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel7ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel8ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel9ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel10ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel11ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel12ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel13ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel14ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel15ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel16ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel17ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel18ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel19ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel20ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel21ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel22ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);
    procedure Panel23ContextPopup(Sender: TObject; MousePos: TPoint;
      var Handled: Boolean);

    procedure Timer1Timer(Sender: TObject);

    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);

    procedure N8Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N10Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure N20Click(Sender: TObject);

    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);

    procedure ComboBox1Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure PaintBox1Click(Sender: TObject);
    procedure PaintBox2Click(Sender: TObject);
    procedure FormPaint(Sender: TObject);

    procedure Edit1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);

    procedure ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);

    function NET_Recv(): integer;
    procedure NET_Free();
    function NET_Init: Byte;
    function NET_InitSocket(Port: Word): integer;
    function NET_Send(IP : LongInt): integer;

    procedure WriteBufKom(KodPkt : Byte; AdrDest : LongInt; LenBuf : Byte);
    procedure LoadRezDat(IndxUstr : Byte);
    procedure LoadConfig();
    procedure LoadAlg();
    procedure SaveRez();
    procedure SaveOtchet();
    procedure SaveConfig();
    procedure RepaintPanel(NumPanel : Byte);
    procedure ChangeObj(NumPanel : Byte);
    procedure ViewEditAlg();
    procedure ScanFile();
    procedure UstrAlarm();
    procedure OutTable();
    procedure OutGrafik();
    procedure RqReg();
    procedure FileLine();
    procedure SkanDatTime();
    procedure AlarmConnect(Indx : Byte);
    procedure EventUstr();
    procedure DublOut(NumUstr : Byte; NumPrm : Byte);
    procedure RenamePanel();


  private
    { Private declarations }
  public
    { Public declarations }
  end;

type
 TBufTemp = array [0..65535] of Byte;
 TByteArray = array [0..65535] of Byte;
 PByteArray = ^TByteArray;

 TAPLpacket = record
  trys : Byte;
  UID  : WORD;
  Time : DWORD;
  Size : WORD;
  Port : WORD;
  IP   : string;
  Data : PByteArray;
 end;

 PAPLpacket = ^TAPLpacket;

 TAPLreg = record
  UID  : WORD;
  Port : WORD;
  IP   : string;
 end;

 TDatPrd = record
  Flag    : Byte;
  KodPkt  : Byte;
  LenBuf  : Byte;
  NumPvt  : Byte;
  AdrDest : LongInt;
  AdrBuf  : PByte;
 end;

 TUstr = record
  Adr   : LongInt;       //--- IP адрес устройства
  Name  : String;        //--- Имя устройства
  WorkDir : String;      //--- Путь в дирректорий хранящий файл отчётных результатов испытаний
  TimeStart : TDateTime; //--- Время начала испытания
  STimeStart : String;   //--- Время начала испытания
  TimeStep : LongWord;   //--- Время работы очередного шага в секундах
  Rejm  : Byte;          //--- Текущий режим работы устройства
  NumStep : Byte;        //--- Номер выполняемой ступени
  AdrPrm : PByte;        //--- Адрес буфера хранения отчётных результатов испытаний
  FDat : File of Byte;   //--- Указатель на файловую переменную для хранения измерений
  FBlank : File of Byte; //--- Указатель на файловую переменную для хранения отчёта
  FixStep : Word;        //--- Указатель номера временного интервала ожидания записи в файл отчёта
  FixDat : Word;         //--- Флаг разрешения записи очередных данных в файл отчёта
  RezStep : Word;        //--- Указатель номера временного интервала ожидания записи в файл результатов измерений
  RezDat : Word;         //--- Флаг разрешения записи очередных данных в файл результатов измерений
  CDat : Word;           //--- Счётчик количества записей хранимых в отчёте
  KorrMn : Word;         //--- Калибровочное значение множителя
  KorrSm : Word;         //--- Калибровочное значение смещения нуля
  PPP : array[0..10] of Word;  //--- Параметры давления для очередной ступени
  TTT : array[0..10] of Word;  //--- Параметры времени удержания давления для очередной ступени
  MaxStep : Byte;        //--- Общее количество заданных ступеней
  D4060 : Byte;          //--- Флаг указывающий тип используемого клапана
  EditUpr : Byte;        //--- Флаг указывающий что отображается окно редактирования параметров
  PGL : Byte;            //--- Позиция графической линии
  PGF : Byte;            //--- Оставшееся количество графических линий на заполнение
  StartSPM : Byte;       //--- Флаг сигнализирующий, что устройство Запущено / Остановлено
  TimeOut : Byte;        //--- Счётчик 50 миллисекундных интервалов для анализа подключенности устройства
  Alarm : Byte;          //--- Флаг указывающий режим отображения цвета панели
  EnWrite : Byte;        //--- Флаг разрешающий запись результатов испытаний в файл
  EnWork  : Byte;        //--- Флаг разрешающий начать испытания
 end;

 TUstrINI = record
  Adr   : LongInt;
  Name  : String;
  WorkDir : String;
  KorrMn : Word;
  KorrSm : Word;
  D4060 : Byte;
  PPP : array[0..10] of Word;
  TTT : array[0..10] of Word;
 end;

 TFileList = record
  FNam  : String;
  FTimL : LongWord;
  FTimH : LongWord;
 end;

//------------------------------------------------------------------------------
//--- Тип TUstr, поле .Rejm может принимать следующие значения
//--- 0 : Устройство Не подключено
//--- 1 : Устройство Зарегистрировано
//--- 2 : Рабочая папка определена
//--- 3 : Устройство Загружено
//--- 4 : Получено состояние устройства
//--- 5 : Устройство Проверено
//--- 6 : Устройство Запущено
//--- 7 : Устройство Остановлено
//------------------------------------------------------------------------------

 TKommp = record
  B3 : Boolean;
  B4 : Boolean;
  P47 : Boolean;
  P48 : Boolean;
  L20 : Boolean;
  L21 : Boolean;
  L22 : Boolean;
  L30 : Boolean;
  SG1 : Boolean;
  SB1 : Boolean;
  CHRT1 : Boolean;
 end;


var
 Form1: TForm1;

 pdcDIBEdit : HDC;          //--- Контекст устройства в памяти
 hbmpDIBEdit : HBITMAP;     //--- Битмап для памяти
 BMInfoEdit: tagBITMAPINFO; //--- Структура с информацией о графическом изображении
 pDIBEdit : Pointer;        //--- Указатель на память содержащую битмеп
 hrcEdit : HGLRC;
 CharList : GLuint;         //--- Список символов

 WinX, WinY : Word; //--- Размеры окна вывода рисунка
 TextSize : Byte;   //--- Размер шрифта в окне рисования
 GridSize : Byte;   //--- Размер сетки для отрисовки элементов таблицы
 ShftD : Byte;      //--- Смещение текстового поля от левого края
 BufImage : ^Byte;  //--- Указатель на облать памяти хранения рисунка
 PosMark : Byte;

 PAByt, PAByte, PADat, PAWrd, PALong, PASmi : ^LongWord;  //--- Указатель на переменную хранящую адрес другого указателя
 PLong : ^LongInt;   //--- Указатель на переменную
 PByt, PDat : ^Byte; //--- Указатель на переменную
 PWrd : ^Word;       //--- Указатель на переменную
 PSmi : ^SmallInt;   //--- Указатель на переменную
 BufTemp, BufPrm: ^TBufTemp; //--- Указатель на структуру
 ABufTemp, AdrPrm : PByte;

 NET_Ready   : Byte;        //--- Флаг показывающий Инициализированна ли сеть
 NET_Buf     : PByteArray;  //--- Буфер на передачу
 NET_RecvBuf : PByteArray;  //--- Буфер на приём
 NET_BufLen  : Integer;     //--- Текущая длинна буфера
 NET_Socket  : Integer = -1;
 NET_APLs    : array of PAPLpacket;

 NumPanel : Byte; //--- Номер панели выделенной левой кнопкой мыши
 SelPanel : Byte; //--- Номер панели выделенной правой кнопкой мыши
 LenRecv : Integer; //--- Длина принятого пакета
 FixDat : Byte;  //--- Флаг разрешения записи очередных данных в файл отчёта
 FixStep : Byte; //--- Указатель номера временного интервала ожидания записи в файл отчёта
 MinSPM : Word;  //--- Величина интервала времени в минутах от начала новой ступени испытаний
 SekSPM : Byte;  //--- Величина интервала времени в сеундах от начала новой ступени испытаний
 TimeSPM : LongWord; //--- Величина интервала времени в секундах
 StartPkt : Byte; //--- Флаг указавающий что обнаружено поле начало информационного пакета
 EnPkt : Byte;    //--- Флаг подтверждающий соотретствие структуры информационного пакета
 KodPkt : Byte;   //--- Значение кода информационного пакета
 NumPkt, CP : Byte;   //--- Значение
 NumPvt : Byte;   //--- Значение
 CRS, XB0 : Byte;      //--- Значение контрольной суммы информационных полей пакета
 StartSPM : Byte;
 Vbrk : Word;
 EnSysLog : Byte; //--- Флаг разрешающий вывод информации служебного обмена на экран
 CUstr, IndxU: Byte;
 Adr1, Adr2, Adr3, Adr4 : Byte;
 Year, Month, Days, Hour, Min, Sek, MSec : Word;
 DeltaSPM : SmallInt;
 EventEditUstr : Byte; //---
 EnBaseFolder : Byte;  //---
 SelUstr : Byte; //---
 CMess, FMess, CNorm : Byte; //---
 NumStep : Byte; //---
 LenDir : LongInt;
 CntALG : Byte; //---
// EditUpr : Byte;
 Lin1, Lin2, Lin3 : SmallInt;
 TabShow : Byte;
 NUstr : Byte;
 EnPosKor : Byte;
 FindINI : Byte;
 IndxUstr, NumAlg, XBB : Byte;
 LAdr, AdrVtor : LongInt;
 MyAdr : LongInt;
 EnVtor : Byte;
 Port : Word;
 CPS : Byte;
 ZagrStk, VbrkStk : Byte;
// Rejim : Byte;
 ValidKom, ValidNum, ValidPvt, CntPak : Byte;
 CPrm : Byte;
 LenPkt, BufKom : Byte;
 PosDat : Word;
 PosOut, BackRejm : Byte;
 EventStat : Byte;
 AdrServ: LongInt;
 ADCSPM : Word;
 Mask : Word;
 SttSPM : Byte;
 LenBuf : Byte;
 PCurX, PCurY, EnUstr : Byte;
 WaitStart, EditPrm : Byte;
 FLin1, FLin2 : Byte;
 TipDir : Byte; //--- Флаг режима при назначении рабочей директории
 XDbl : Double;
 PADbl : ^LongWord;
 PDbl : ^Double;
 XUstr : TUstr;
 DNow, DCur : TDateTime;

 SGod, SDay, SMsc, SChs, SMin, SSek, SDat, STim : String; //---
 BaseFolder : String; //--- Наименование пути к рабочим папкам
 MyName, SMyAdr, SText : String; //---
 AlgFile, FLine : String;

 Buf   : array[0..1024] of Char;
 AdrIP : array[0..3] of Byte;
 DatPrd : array [0..255] of TDatPrd;
 Ustr : array [0..23] of TUstr;
 SttUstr : array [0..23] of TUstr;
 UstrINI : array [0..23] of TUstrINI;
 StatPanel : array [0..23] of Byte;
 DublStat : array [0..23] of Word;
 Sens, SensT : array [0..255] of Byte;
 APLreg : array [0..APLreglen - 1] of TAPLreg;
 MFile : array[0..9999] of TFileList;

 SttObj : array[0..7] of TKommp =
((B3:True;  B4:False; P47:False; P48:False; L20:True;  L21:True;  L22:True;  L30:False; SG1:False; SB1:False; CHRT1 : False),
 (B3:True;  B4:False; P47:False; P48:False; L20:True;  L21:True;  L22:True;  L30:False; SG1:False; SB1:False; CHRT1 : False),
 (B3:True;  B4:False; P47:False; P48:False; L20:True;  L21:True;  L22:True;  L30:False; SG1:False; SB1:False; CHRT1 : False),
 (B3:False; B4:True;  P47:False; P48:False; L20:False; L21:False; L22:False; L30:False; SG1:True;  SB1:True;  CHRT1 : False),
 (B3:False; B4:True;  P47:True;  P48:False; L20:False; L21:False; L22:False; L30:True;  SG1:True;  SB1:True;  CHRT1 : True),
 (B3:False; B4:True;  P47:True;  P48:False; L20:False; L21:False; L22:False; L30:True;  SG1:True;  SB1:True;  CHRT1 : True),
 (B3:False; B4:False; P47:False; P48:True;  L20:False; L21:False; L22:False; L30:True;  SG1:True;  SB1:True;  CHRT1 : True),
 (B3:True;  B4:False; P47:False; P48:False; L20:True;  L21:True;  L22:False; L30:True;  SG1:True;  SB1:True;  CHRT1 : True));

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6, Unit7, Unit9;

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
 Flag, XB : Byte;
 CA : Word;
 AdrBuf : PByte;
begin
 //------------------ Инициализируем необходимые переменные
 TextSize:=24; // Задаём размеры шрифта
 GridSize:=32; // Задаём размеры сетки
 WinX:= 15*GridSize; // Задаём размеры окна вывода
 WinY:= 14*GridSize; // Задаём размеры окна вывода
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
   pdcDIBEdit,       // контекст устройства
   BmInfoEdit,       // информация о битмапе
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

 //------------------ Инициализация сетевого модуля
 Flag:=NET_Init();
 if Flag=0  then
  begin
   MessageBox(Handle, 'Невозможно инициализировать сетевой протокол', 'Ошибка', MB_ICONHAND);
   Halt;
  end;
 NET_InitSocket(21666); // Инициализируем сокет на 21666 порту

 //------------------ Выделяем память для буфера приёма, буфера адреса, матрицы отчётов
 GetMem(BufTemp,256);
 GetMem(BufPrm,256);

 CA:=0;
 while(CA<=255)do
  begin
   GetMem(AdrBuf,256);
   DatPrd[CA].AdrBuf:=AdrBuf;
   CA:=CA+1;
  end;

 CA:=1;
 while(CA<=23)do
  begin
   AdrPrm:=AllocMem(65536);
   Ustr[CA].AdrPrm:=AdrPrm;
   CA:=CA+1;
  end;

 //------------------ Определяем текущее время включения
 SkanDatTime();

 //------------------ Инициализируем необходимые переменные
 EventEditUstr:=0;
 SelUstr:=0;
 PAByt:=Addr(PByt);
 PADat:=Addr(PDat);
 PASmi:=Addr(PSmi);
 PAWrd:=Addr(PWrd);
 PADbl:=Addr(PDbl);
end;

procedure TForm1.FormShow(Sender: TObject);
var
 CA : Byte;
begin
 Panel1.Visible:=False; Panel2.Visible:=False; Panel3.Visible:=False; Panel4.Visible:=False;
 Panel5.Visible:=False; Panel6.Visible:=False; Panel7.Visible:=False; Panel8.Visible:=False;
 Panel9.Visible:=False; Panel10.Visible:=False; Panel11.Visible:=False; Panel12.Visible:=False;
 Panel13.Visible:=False; Panel14.Visible:=False; Panel15.Visible:=False; Panel16.Visible:=False;
 Panel17.Visible:=False; Panel18.Visible:=False; Panel19.Visible:=False; Panel20.Visible:=False;
 Panel21.Visible:=False; Panel22.Visible:=False; Panel23.Visible:=False; Panel24.Visible:=False;
 Panel25.Visible:=False; Panel26.Visible:=False; Panel27.Visible:=False; Panel28.Visible:=False;
 Panel29.Visible:=False; Panel30.Visible:=False; Panel31.Visible:=False; Panel32.Visible:=False;
 Panel33.Visible:=False; Panel34.Visible:=False; Panel35.Visible:=False; Panel36.Visible:=False;
 Panel37.Visible:=False; Panel38.Visible:=False; Panel39.Visible:=False; Panel40.Visible:=False;
 Panel41.Visible:=False; Panel42.Visible:=False; Panel43.Visible:=False; Panel44.Visible:=False;
 Panel45.Visible:=False; Panel46.Visible:=False;
 Panel47.Visible:=False; Panel48.Visible:=False;
 CUstr:=1;
 CA:=1;
 while(CA<=20)do
  begin
   StatPanel[CA]:=1;
   CA:=CA+1;
  end;
 Edit1.Visible:=False; Edit1.Width:=80;

 Button1.Visible:=False;
 Button2.Visible:=False;
 Button3.Visible:=False;
 Button4.Visible:=False; Label30.Visible:=False;

 Button1.Top:=632; Button1.Left:=352; Button1.Width:=112; Button1.Height:=25;
 Button2.Top:=632; Button2.Left:=16;  Button2.Width:=112; Button2.Height:=25;
 Button3.Top:=24; Button3.Left:=144;  Button3.Width:=369; Button3.Height:=41;
 Button3.Caption:='Определить папку для хранения отчётных файлов';
 GroupBox4.Top:=584; GroupBox4.Left:=182;

 Panel47.Color:=$E0F0E0;
 Panel47.Top:=24;  Panel47.Left:=144; Panel47.Width:=369; Panel47.Height:=41;
 Panel48.Color:=$E0E0F0;
 Panel48.Top:=24;  Panel48.Left:=144; Panel48.Width:=369; Panel48.Height:=41;
 Label14.Visible:=True;
 Label14.Top:=36; Label14.Left:=168;
 Label14.Caption:='Включённых устройств не обнаружено';
 ComBoBox1.Visible:=False;
 ComBoBox1.Width:=448;
 ComBoBox1.Top:=24; ComBoBox1.Left:=16;
 PaintBox1.Visible:=False;
 PaintBox1.Width:=0; PaintBox1.Height:=0;
 PaintBox2.Visible:=False;
 PaintBox2.Width:=0; PaintBox2.Height:=0;
 PaintBox2.Top:=68; PaintBox2.Left:=8;
// PaintBox2.Width:=WinX; PaintBox2.Height:=WinY;
 StatusBar1.Panels.Items[0].Width:=80;
 StatusBar1.Panels.Items[1].Width:=80;
 StatusBar1.Panels.Items[2].Width:=400;
 StringGrid1.Cells[0,0]:='    Nст';
 StringGrid1.Cells[1,0]:='     Tст';
 StringGrid1.Cells[2,0]:='     Pгр';
 StringGrid1.Cells[3,0]:='    ИЧ1';
 StringGrid1.Cells[4,0]:='    ИЧ2';
 StringGrid1.Cells[5,0]:='    LinS';
 StringGrid1.Cells[6,0]:='   Delta';

 ComboBox1.Items.Add('Параметры из конфигурационного файла');
 ScanFile();
 ComboBox1.Text:='Обнаружено сформированных алгоритмов испытаний: '+IntToStr(CntALG);

 Chart1.Visible:=False;

 Label15.Caption:='- - -'; Label16.Caption:='- - -'; Label17.Caption:='- - -'; Label18.Caption:='- - -';
 Label23.Caption:='- - -'; Label24.Caption:='- - -'; Label25.Caption:='- - -'; Label26.Caption:='- - -';
 Label27.Caption:='- - -'; Label29.Caption:='- - -'; Label31.Caption:='S кольца : - - -';

 Label1.Visible:=True; Label2.Visible:=True; Label3.Visible:=True; Label4.Visible:=True;
 Label5.Visible:=True; Label6.Visible:=True; Label7.Visible:=True; Label8.Visible:=True;
 Label9.Visible:=True; Label10.Visible:=True; Label11.Visible:=True;
 Label12.Visible:=False; Label13.Visible:=False;
 Label15.Visible:=True; Label16.Visible:=True; Label17.Visible:=True; Label18.Visible:=True;
 Label23.Visible:=True; Label24.Visible:=True; Label25.Visible:=True; Label26.Visible:=True;
 Label27.Visible:=True; Label28.Visible:=True; Label29.Visible:=True;
 Label31.Visible:=True;
 Label12.Caption:='Будет произведена загрузка установленных команд';
 Label13.Caption:='в устройства отмеченные зелёным цветом.';

 Label20.Visible:=True;
 Label20.Top:=160;  Label20.Left:=160; Label20.Width:=300;
 Label21.Visible:=True;
 Label21.Top:=160;  Label21.Left:=160; Label21.Width:=300;
 Label21.Visible:=True;
 Label22.Top:=160;  Label22.Left:=160; Label22.Width:=300;
 Label20.Caption:='Параметры испытаний не получены';
 Label21.Caption:='Параметры испытаний не получены';
 Label22.Caption:='Параметры испытаний не получены';

 StringGrid1.Visible:=False;
 ScrollBar1.Visible:=False;  ScrollBar1.Max:=1;
 GroupBox4.Visible:=False;
 Chart1.Visible:=False;
 Memo1.Lines.Add('Запуск программы сервера :   '+SDay+'.'+SMsc+'.'+SGod+'   '+SChs+':'+SMin+':'+SSek);
 Memo1.Lines.Add('Определено имя сервера :   '+MyName+'   IP Адрес :   '+SMyAdr);
 Memo1.Lines.Add('');

 EnSysLog:=0; CheckBox1.Checked:=False;
 NumPanel:=1;
// NumPanel:=0;
// RepaintPanel(NumPanel);
 BaseFolder:='';
 LoadConfig();
 if BaseFolder='' then StatusBar1.Panels.Items[2].Text:='Рабочая папка: Не определена'
  else StatusBar1.Panels.Items[2].Text:='Рабочая папка: '+BaseFolder;
 Timer1.Enabled:=True;
 CUstr:=1;
 BufTemp[0]:=$41;
 WriteBufKom($01, $00, $01);
// RqReg();  //--- Запрос устройствам для регистрации на сервере
 PageControl1.ActivePageIndex:=0;
end;

procedure TForm1.FormPaint(Sender: TObject);
var
 SMess : String;
begin
 if CMess>=1 then
  begin
   SMess:='В конфигурационном файле обнаружено несоответствие имён : '+IntToStr(CMess)+#13+#10;
   if ($1 and FMess)=$1 then SMess:=SMess+'Встречались нераспознанные имена.'+#13+#10;
   if ($2 and FMess)=$2 then SMess:=SMess+'Встречались повторяющиеся имена.'+#13+#10;
   SMess:=SMess+'Всего загружено записей : '+IntToStr(CNorm);
   Memo1.Lines.Add(SMess);
   Memo1.Lines.Add('');
   CMess:=0;
   MessageBox(Handle, PChar(SMess), 'Предупреждение', MB_ICONHAND);
  end;
 BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
 BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
 CA, CB : Word;
 Exit, Indx : Byte;
begin
 Timer1.Enabled:=False;
 CA:=1;
 while(CA<=IndxU)do
  begin
   CB:=1; Exit:=0;
   while((CB<=CUstr)and(Exit=0))do
    begin
     if UstrINI[CA].Adr=Ustr[CB].Adr then Exit:=1;
     CB:=CB+1;
    end;
   if Exit=0 then
    begin
     Ustr[CUstr].Adr:=UstrINI[CA].Adr;
     Ustr[CUstr].Name:=UstrINI[CA].Name;
     Ustr[CUstr].WorkDir:=UstrINI[CA].WorkDir;
     Ustr[CUstr].KorrMn:=UstrINI[CA].KorrMn;
     Ustr[CUstr].KorrSm:=UstrINI[CA].KorrSm;
     Ustr[CUstr].D4060:=UstrINI[CA].D4060;
     CB:=0;
     while(CB<=9)do
      begin
       Ustr[CUstr].PPP[CB]:=UstrINI[CA].PPP[CB];
       Ustr[CUstr].TTT[CB]:=UstrINI[CA].TTT[CB];
       CB:=CB+1;
      end;
     CUstr:=CUstr+1;
    end;
   CA:=CA+1;
  end;
 SaveConfig();

 CA:=1;
 while(CA<=23)do
  begin
   if Ustr[CA].Rejm=6 then
    begin
     Ustr[CA].EnWork:=0;
     if Ustr[CA].EnWrite=1 then
      begin
       CloseFile(Ustr[CA].FDat);
       CloseFile(Ustr[CA].FBlank);
      end;
    end;
   CA:=CA+1;
  end;

 NET_Free(); // Высвобождение ресурсов

 CA:=0;
 while(CA<=255)do
  begin
   FreeMem(DatPrd[CA].AdrBuf);
   CA:=CA+1;
  end;
 CA:=1;
 while(CA<=23)do
  begin
   FreeMem(Ustr[CA].AdrPrm);
   CA:=CA+1;
  end;
end;

procedure TForm1.SetDCPF(DC:THandle);
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

procedure TForm1.glBuildFont;
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
procedure TForm1.glPrint(X, Y: Integer; Size: Byte; Text: AnsiString);
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

procedure TForm1.PaintTable();
var
 CA : Word;
begin
 glColor3ub($E0,$E0,$E0); //--- Серый
 glBegin(GL_POLYGON);
 glVertex2i(8+0*GridSize,4*GridSize); glVertex2i(8+4*GridSize,4*GridSize);  glVertex2i(8+4*GridSize,WinY);  glVertex2i(8+0*GridSize,WinY);
 glEnd();
 glColor3ub($F0,$E0,$E0); //--- Розовый
 glBegin(GL_POLYGON);
 glVertex2i(8+4*GridSize,4*GridSize); glVertex2i(8+9*GridSize,4*GridSize);  glVertex2i(8+9*GridSize,WinY);  glVertex2i(8+4*GridSize,WinY);
 glEnd();
 glColor3ub($F0,$F0,$E0); //--- Жёлтый
 glBegin(GL_POLYGON);
 glVertex2i(8+9*GridSize,4*GridSize); glVertex2i(8+14*GridSize,4*GridSize);  glVertex2i(8+14*GridSize,WinY);  glVertex2i(8+9*GridSize,WinY);
 glEnd();
 if PosMark>=1 then
  begin
   glColor3ub($A6,$CA,$F0); //--- Голубой
   glBegin(GL_POLYGON);
   glVertex2i(8+0*GridSize,PosMark*GridSize); glVertex2i(8+14*GridSize,PosMark*GridSize);  glVertex2i(8+14*GridSize,(PosMark+1)*GridSize);  glVertex2i(8+0*GridSize,(PosMark+1)*GridSize);
   glEnd();
  end;
 glColor3ub($C0,$C0,$C0);
 glBegin(GL_LINES);
  glVertex2i(8,2*GridSize); glVertex2i(8+14*GridSize,2*GridSize);
  CA:=4;
  while(CA<=14)do
   begin
    glVertex2i(8,CA*GridSize);
    glVertex2i(8+14*GridSize,CA*GridSize);
    CA:=CA+1;
   end;
 glEnd();

 glColor3ub($80,$80,$80);

 glBegin(GL_LINES);
  glVertex2i(8,2*GridSize); glVertex2i(8+14*GridSize,2*GridSize);
 glEnd();

 glBegin(GL_LINE_LOOP);
  glVertex2i(8,0);
  glVertex2i(8+14*GridSize,0);
  glVertex2i(8+14*GridSize,WinY);
  glVertex2i(8,WinY);
 glEnd();

 glBegin(GL_LINES);
  glVertex2i(8+4*GridSize,2*GridSize); glVertex2i(8+4*GridSize,WinY);
  glVertex2i(8+9*GridSize,2*GridSize); glVertex2i(8+9*GridSize,WinY);
 glEnd();

 glPrint(8+1*GridSize, 20+2*GridSize, 1, 'Номер');      glPrint(16+1*GridSize, 16+3*GridSize, 1, 'шага');
 glPrint(8+5*GridSize, 20+2*GridSize, 1, 'Значение'); glPrint(8+5*GridSize, 16+3*GridSize, 1, 'давления');
 glPrint(44+9*GridSize, 20+2*GridSize, 1, 'Время');   glPrint(12+9*GridSize, 16+3*GridSize, 1, 'стабилизации');

 glPrint(8+3*GridSize, 20+0*GridSize, 1, 'Алгоритм испытаний');
 glPrint(14+3*GridSize, 16+1*GridSize, 1, '- - - без имени - - -');

end;

procedure TForm1.PaintTableUpr();
var
 CA : Word;
 LenS : Byte;
 S : String;
begin
// Рисуем таблицу
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
  PaintTable();
  CA:=4;
  while(CA<=14)do
   begin
    glPrint(4+1*GridSize, 18+CA*GridSize, 1, 'Шаг '+IntToStr(CA-3));
    S:=FloatToStrF(0.001*Ustr[NumPanel].PPP[CA-4],ffGeneral,6,3);
    LenS:=Length(S);
    if (LenS<=2) then ShftD:=14;
    if (LenS=3) then ShftD:=10;
    if (LenS=4) then ShftD:=6;
    if (LenS=5) then ShftD:=2;
    glPrint(ShftD+6*GridSize, 18+CA*GridSize, 1, S);
    S:=IntToStr(Ustr[NumPanel].TTT[CA-4]);
    LenS:=Length(S);
    if (LenS<=1) then ShftD:=20;
    if (LenS=2) then ShftD:=16;
    if (LenS=3) then ShftD:=12;
    glPrint(ShftD+11*GridSize, 18+CA*GridSize, 1, S);
    CA:=CA+1;
   end;
 wglMakeCurrent(0,0);
end;

procedure TForm1.PaintTableStt();
var
 CA : Word;
 LenS : Byte;
 S : String;
begin
// Рисуем исходную таблицу отображения
 wglMakeCurrent(pdcDIBEdit,hrcEdit);
  PaintTable();
  CA:=4; NUstr:=0;
  while(CA<=14)do
   begin
    glPrint(4+1*GridSize, 18+CA*GridSize, 1, 'Шаг '+IntToStr(CA-3));
    S:=FloatToStrF(0.001*SttUstr[NumPanel].PPP[CA-4],ffGeneral,6,3);
    LenS:=Length(S);
    if (LenS<=2) then ShftD:=14;
    if (LenS=3) then ShftD:=10;
    if (LenS=4) then ShftD:=6;
    if (LenS=5) then ShftD:=2;
    glPrint(ShftD+6*GridSize, 18+CA*GridSize, 1, S);
    S:=IntToStr(SttUstr[NumPanel].TTT[CA-4]);
    LenS:=Length(S);
    if (LenS<=1) then ShftD:=20;
    if (LenS=2) then ShftD:=16;
    if (LenS=3) then ShftD:=12;
    glPrint(ShftD+11*GridSize, 18+CA*GridSize, 1, S);
    CA:=CA+1;
   end;
 wglMakeCurrent(0,0);
end;


procedure TForm1.ScanFile();
var
 CA : Word;
 Exit : Byte;
 SS, XS, SExt : String;
 PFile : WIN32_FIND_DATA;
 Hand : Hwnd;
 RqFile : Boolean;
begin
 LenDir:=1;
 Hand:=FindFirstFile('*.*',PFile);
 RqFile:=True;
 while(RqFile)do
  begin
   RqFile:=FindNextFile(Hand,PFile);
   if RqFile then
    begin
     CA:=0; Exit:=0; SS:='';
     while(Exit=0)do
      begin
       XS:=PFile.cFileName[CA];
       if XS<>#0  then SS:=SS+XS else Exit:=1;
       CA:=CA+1;
      end;
     if SS='config.ini' then FindINI:=1;
     SExt:=ExtractFileExt(SS);
     if SExt='.alg' then
      begin
       CntALG:=CntALG+1;
       ComboBox1.Items.Add(SS);
      end;
    end;
  end;
// FindClose('*.*');
end;

procedure TForm1.LoadRezDat(IndxUstr : Byte);
var
 CA, CB, LenS, IndxMax : Word;
 Exit, Flag : Byte;
 SS, XS, SExt, SFile : String;
 XD, MaxTL, MaxTH, FSize : LongWord;
 PFile : WIN32_FIND_DATA;
 Hand : Hwnd;
 RqFile : Boolean;
 XPC : Char;
 XPChar : PChar;
 XI : Integer;
// TSys : TSystemTime;
 XC : Word;
 LenFile : LongWord;
 S, SLine : String;
 XB, XB1, FileFlag : Byte;
 SkanD, DtktS, DtktD, NZap, NPos, NFld, ZSkb : Byte;
 DtktN, EnSkan, CStep, EventD : Byte;
 DLin1, DLin2, DLin3, Znak : SmallInt;
 DltSPM : SmallInt;
 ADCSPM : Word;
 MinSPM : Word;
 SekSPM, Field, Faza : Byte;
 MDat : array[0..10] of Byte;
begin
 LenDir:=0;
 SFile:='Otchet_'+Ustr[IndxUstr].Name;
 LenS:=Length(SFile);
 SS:=Ustr[IndxUstr].WorkDir+'\*.*';
 XPChar:=Addr(SS[1]);
 Hand:=FindFirstFile(XPChar,PFile);
// FileTimeToSystemTime(PFile.ftLastWriteTime, TSys);
 RqFile:=True;
 while(RqFile)do
  begin
   RqFile:=FindNextFile(Hand,Pfile);
   if RqFile then
    begin
     CA:=0; Exit:=0; SS:='';
     while(Exit=0)do
      begin
       XS:=PFile.cFileName[CA];
       if XS<>#0  then SS:=SS+XS else Exit:=1;
       CA:=CA+1;
      end;
     SExt:=ExtractFileExt(SS);
     CB:=1; Flag:=1;
     while(CB<=LenS)do
      begin
       if SS[CB]<>SFile[CB] then Flag:=0;
       CB:=CB+1;
      end;
     if Flag=1 then
      begin
       MFile[LenDir].FNam:=SS;
       MFile[LenDir].FTimL:=PFile.ftLastWriteTime.dwLowDateTime;
       MFile[LenDir].FTimH:=PFile.ftLastWriteTime.dwHighDateTime;
       LenDir:=LenDir+1;
      end;
    end;
  end;
 CA:=0; MaxTL:=0; MaxTH:=0; IndxMax:=0;
 while(CA<LenDir)do
  begin
   if (MFile[CA].FTimH>MaxTH) then
    begin
     MaxTH:=MFile[CA].FTimH;
     MaxTL:=MFile[CA].FTimL;
     IndxMax:=CA;
    end else
    begin
     if (MFile[CA].FTimH=MaxTH)and(MFile[CA].FTimL>=MaxTL) then
      begin
       MaxTH:=MFile[CA].FTimH;
       MaxTL:=MFile[CA].FTimL;
       IndxMax:=CA;
      end;
    end;
   CA:=CA+1;
  end;
 if LenDir=0 then
  begin
   SS:='Otchet_'+Ustr[IndxUstr].Name+'_'+SDat+'_'+STim+'.txt';
   if DirectoryExists(BaseFolder) then
    begin
     if DirectoryExists(Ustr[IndxUstr].WorkDir) then
      begin
       AssignFile(Ustr[IndxUstr].FBlank,Ustr[IndxUstr].WorkDir+'\'+SS);
       ReWrite(Ustr[IndxUstr].FBlank);
       if DirectoryExists(Ustr[IndxUstr].WorkDir+'\Dat')=False then
        begin
         SS:=Ustr[IndxUstr].WorkDir+'\Dat';
         ForceDirectories(SS);
        end;
       AssignFile(Ustr[IndxUstr].FBlank,Ustr[IndxUstr].WorkDir+'\Dat\'+Ustr[IndxUstr].Name+'_'+SDat+'_'+STim+'.dat');
       ReWrite(Ustr[IndxUstr].FBlank);
       Ustr[IndxUstr].EnWrite:=1; Ustr[IndxUstr].EnWork:=1;
      end else
      begin
       Ustr[IndxUstr].WorkDir:=BaseFolder+'\'+Ustr[NumPanel].Name+'_'+SDat;
       ForceDirectories(Ustr[IndxUstr].WorkDir);
       AssignFile(Ustr[IndxUstr].FBlank,Ustr[IndxUstr].WorkDir+'\'+SS);
       ReWrite(Ustr[IndxUstr].FBlank);
       SS:=Ustr[IndxUstr].WorkDir+'\Dat';
       ForceDirectories(SS);
       AssignFile(Ustr[IndxUstr].FBlank,Ustr[IndxUstr].WorkDir+'\Dat\'+Ustr[IndxUstr].Name+'_'+SDat+'_'+STim+'.dat');
       ReWrite(Ustr[IndxUstr].FBlank);
       Ustr[IndxUstr].EnWrite:=1; Ustr[IndxUstr].EnWork:=1;
      end;
    end else
    begin
     if EnBaseFolder=0 then EnBaseFolder:=1;
    end;
  end else
  begin
   SS:=Ustr[IndxUstr].WorkDir+'\'+MFile[IndxMax].FNam;
   {$I-}
   AssignFile(Ustr[IndxUstr].FBlank,SS);
   Reset(Ustr[IndxUstr].FBlank);
   AssignFile(Ustr[IndxUstr].FDat,Ustr[IndxUstr].WorkDir+'\Dat\'+Ustr[IndxUstr].Name+'_'+SDat+'_'+STim+'.dat');
   ReWrite(Ustr[IndxUstr].FDat);
   LenFile:=FileSize(Ustr[IndxUstr].FBlank);
   {$I-}
   if IOResult>=1 then LenFile:=0
    else begin Ustr[IndxUstr].EnWrite:=1; Ustr[IndxUstr].EnWork:=1; end;
   Ustr[IndxUstr].CDat:=0;
   PByt:=Addr(Ustr[IndxUstr].AdrPrm^);
   CA:=0; XB1:=0; Exit:=0;
   while(CA<LenFile)and(Exit=0)do
    begin
     Read(Ustr[IndxUstr].FBlank,XB);
     MDat[CA]:=XB;
     if (XB=$0A)and(XB1=$0D) then
      begin
       Exit:=1;
       PDbl:=Addr(MDat[0]);
       DNow:=PDbl^;
       Ustr[IndxUstr].TimeStart:=DNow;
       DecodeDateTime(DNow,Year,Month,Days,Hour,Min,Sek,MSec);
       if Hour<=9 then SChs:='0'+IntToStr(Hour) else SChs:=IntToStr(Hour);
       if Min<=9 then SMin:='0'+IntToStr(Min) else SMin:=IntToStr(Min);
       if Sek<=9 then SSek:='0'+IntToStr(Sek) else SSek:=IntToStr(Sek);
       STim:=SChs+SMin+SSek;
       XB:=Year-100*Floor(Year/100);
       if XB<=9 then SGod:='0'+IntToStr(XB) else SGod:=IntToStr(XB);
       if Month<=9 then SMsc:='0'+IntToStr(Month) else SMsc:=IntToStr(Month);
       if Days<=9 then SDay:='0'+IntToStr(Days) else SDay:=IntToStr(Days);
       SDat:=SGod+SMsc+SDay;
       Ustr[IndxUstr].STimeStart:=SDay+'.'+SMsc+'.20'+SGod+'  '+SChs+':'+SMin+':'+SSek;
      end;
     XB1:=XB;
     if CA>=9 then Exit:=1;
     CA:=CA+1;
    end;
   XB1:=0; Exit:=0;
   while(CA<LenFile)and(Exit=0)do
    begin
     Read(Ustr[IndxUstr].FBlank,XB);
     if (XB=$0A)and(XB1=$0D) then Exit:=1;
     XB1:=XB;
     CA:=CA+1;
    end;
   Field:=0; Faza:=0; SS:=''; Znak:=1; XB1:=0;
   while(CA<LenFile)do
    begin
     Read(Ustr[IndxUstr].FBlank,XB);
     if (Faza=5)and(XB=$2E) then XB:=$2C;
     if (XB=$20) then
      begin
       if (Field=1)and(Faza=3) then
        begin
         PASmi^:=PAByt^+13; PSmi^:=StrToInt(SS); //--- Номер ступени
        end;
       if (Field=1)and(Faza=4) then
        begin
         PADat^:=PAByt^+12; PDat^:=StrToInt(SS); //--- Секунды на ступени
        end;
       if (Field=1)and(Faza=5) then
        begin
         PASmi^:=PAByt^+8; //PSmi^:=Floor(1000*StrToFloat(SS));  //--- Давление
         if Ustr[IndxUstr].D4060=1 then PSmi^:=Trunc(1000*(StrToFloat(SS)/0.700875)); //--- Для клапана d40 Lucky
         if Ustr[IndxUstr].D4060=2 then PSmi^:=Trunc(1000*(StrToFloat(SS)/0.467250)); //--- Для клапана d60 Lucky
        end;
       if (Field=1)and(Faza=6) then
        begin
         PASmi^:=PAByt^+0; PSmi^:=StrToInt(SS);  //--- Линейка 1
        end;
       if (Field=1)and(Faza=7) then
        begin
         PASmi^:=PAByt^+2; PSmi^:=StrToInt(SS);  //--- Линейка 2
        end;
       if (Field=1)and(Faza=8) then
        begin
         PASmi^:=PAByt^+4; PSmi^:=StrToInt(SS);  //--- Линейка 3
        end;
       if (Field=1)and(Faza=9) then
        begin
         if SS='' then
          begin
           PASmi^:=PAByt^+6; PSmi^:=$FFF;  //--- Дельта
          end;
        end;
       Field:=0;
       SS:='';
      end;
     if (XB>=$21)and(Field=0) then
      begin
       Field:=1; Faza:=Faza+1;
      end;
     if (Faza=4)and(XB=$3A) then
      begin
       PASmi^:=PAByt^+10; PSmi^:=StrToInt(SS);  //--- Минуты на ступени
       SS:=''; XB:=$30;
      end;
     if (Faza=9)and(XB=$0D) then
      begin
       if SS='' then
        begin
         PASmi^:=PAByt^+6; PSmi^:=$FFF;  //--- Дельта
        end else
        begin
         PASmi^:=PAByt^+6; PSmi^:=Znak*StrToInt(SS);  //--- Дельта
        end;
      end;
     if (Field=1) then SS:=SS+Chr(XB);
     if (Faza=9)and(XB=$2D) then
      begin
       SS:=''; Znak:=-1;
      end;
     if (XB=$0A)and(XB1=$0D) then
      begin
       PAByt^:=PAByt^+16;
       Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1;
       Field:=0; Faza:=0; SS:=''; Znak:=1;
      end;
     XB1:=XB;
     CA:=CA+1;
    end;
   ScrollBar1.Max:=Ustr[IndxUstr].CDat;
   DublStat[IndxUstr]:=$181 or DublStat[IndxUstr];
  end;
end;

procedure TForm1.LoadConfig();
var
 FInp : File of Byte;
 CA, CB, XC : Word;
 LenFile : LongWord;
 S, SLine : String;
 XB, XB1 : Byte;
 SkanD, DtktS, DtktD, NZap, NPos, NFld, ZSkb : Byte;
 DtktN, EnSkan, CStep, EventD : Byte;
begin
 CMess:=0;
 if FindINI=1 then
  begin
   Memo1.Lines.Add('Обнаружен конфигурационный файл...');
   AssignFile(FInp,'config.ini');
   Reset(FInp);
   LenFile:=FileSize(FInp);

   NZap:=0; NPos:=0; NFld:=0; IndxU:=1;
   DtktS:=0; DtktN:=0; DtktD:=0; SkanD:=0; ZSkb:=0;
   XC:=0; XB1:=0; CStep:=0; CNorm:=0;
   FMess:=0; EnSkan:=0;
   S:=''; SLine:='';
   CA:=0;
   while(CA<LenFile)do
    begin
     Read(FInp,XB);

     if (XB>=$21) then DtktS:=1;
     if (XB=$5B)or(XB=$5D)or(XB=$3A) then  //--- Если скобка левая, правая, двуеточие
      begin
       DtktS:=0;
       if (NZap=3)and(NPos=1) then DtktS:=1;
      end;
     if (DtktS=1)and(XB>=$20) then S:=S+Chr(XB);
     if (XB>=$20) then SLine:=SLine+Chr(XB);

     EventD:=0;
     if (XB>=$30)and(XB<=$39)and(SkanD=1) then
      begin
       XC:=10*XC+(XB-$30);
       DtktD:=1; EventD:=1;
      end;

     if (DtktD=1)and(SkanD=1)and(EventD=0) then
      begin
       if (NZap=2) then
        begin
         if (NPos=1) then AdrIP[0]:=XC;
         if (NPos=2) then AdrIP[1]:=XC;
         if (NPos=3) then AdrIP[2]:=XC;
         if (NPos=4) then
          begin
           AdrIP[3]:=XC;
           PLong:=Addr(AdrIP[0]);
           UstrINI[IndxU].Adr:=PLong^;
          end;
         DtktD:=0; SkanD:=0; XC:=0;
        end;
      end;

     if XB=$5B then  //--- Скобка левая
      begin
       NFld:=0; CStep:=0;
       if ZSkb=0 then ZSkb:=ZSkb+1;
       if NZap<=2 then NZap:=NZap+1;
      end;

     if XB=$5D then  //--- Скобка правая
      begin
       if ZSkb=1 then ZSkb:=ZSkb+1;
      end;

     if XB=$3A then  //--- Двуеточие
      begin
       if (NZap=2)and(NPos=4) then S:='';
       if (NZap=3)and(NPos=0) then begin S:=''; SLine:=''; end;
       if (NZap=3)and(NPos=2) then
        UstrINI[IndxU].PPP[CStep]:=XC;
       SkanD:=1; XC:=0; DtktD:=0; DtktS:=0;
       if (NZap=3)and(NPos=1) then DtktS:=1;
       if (NZap=3)and(EnSkan=0) then SkanD:=0;
       NPos:=NPos+1;
      end;

     if (XB=$2C)or(XB=$2E) then  //--- Запятая или Точка
      begin
       SkanD:=1;
       NPos:=NPos+1;
      end;

     if (XB=$0A)and(XB1=$0D) then
      begin
       if (NFld>=1) then
        begin
         if (NZap=1) then NFld:=NFld+1;
         if (NZap=3) then NFld:=NFld+1;
        end;
       if (ZSkb=2) then NFld:=1;

       if (NZap=1)and(NFld=2) then
        begin
         BaseFolder:=SLine;
         if DirectoryExists(BaseFolder)=False then BaseFolder:='';
        end;
       if (NZap=2)and(NPos>=5) then
        begin
         UstrINI[IndxU].Name:=S;
         IndxU:=IndxU+1;
        end;
       if (NZap=3) then
        begin
         if (NFld=2) then
          begin
           UstrINI[IndxU].WorkDir:=S;
           if DirectoryExists(S)=False then UstrINI[IndxU].WorkDir:='';
          end;
         if (NFld=3) then UstrINI[IndxU].KorrMn:=XC;
         if (NFld=4) then UstrINI[IndxU].KorrSm:=XC;
         if (NFld=5) then
          begin
           if S='d40' then UstrINI[IndxU].D4060:=1;
           if S='d60' then UstrINI[IndxU].D4060:=2;
          end;
         if (NFld>=6) then
          begin
           NFld:=6;
           if (NPos=3) then
            begin
             UstrINI[IndxU].TTT[CStep]:=XC;
             DublStat[IndxU]:=$037 or DublStat[IndxU];
            end;
           CStep:=CStep+1;
          end;
         if ZSkb=2 then
          begin
           CB:=0; DtktN:=0;
           while(CB<=23)do
            begin
             if S=UstrINI[CB].Name then begin DtktN:=DtktN+1; IndxU:=CB; end;
             CB:=CB+1;
            end;
           EnSkan:=0;
           if DtktN=0 then begin CMess:=CMess+1; FMess:=1 or FMess; end;
           if DtktN=1 then begin EnSkan:=1; CNorm:=CNorm+1; end;
           if DtktN>=2 then begin CMess:=CMess+1; FMess:=2 or FMess; end;
          end;
        end;
       ZSkb:=0; SkanD:=0; DtktD:=0; DtktS:=0; NPos:=0; S:=''; SLine:=''; DtktN:=0;
      end;

     XB1:=XB;
     CA:=CA+1;
    end;
   CloseFile(FInp);
   if CMess=0 then
    begin
     Memo1.Lines.Add('Всего загружено записей : '+IntToStr(CNorm));
    end;
   Memo1.Lines.Add('');
  end;
end;

procedure TForm1.SaveConfig();
var
 FOut : File of Byte;
 CA, CB, CC, LenS : Word;
 Buf : Pointer;
 S, SX : String;
 XB, Exit : Byte;
begin
 S:='config.ini';
 AssignFile(FOut,S);
 ReWrite(FOut);

 S:='[Рабочая папка]'+#13#10;
 S:=S+Basefolder+#13#10;
 S:=S+#13#10;

 S:=S+'[Соответствие имён]'+#13#10;
 CB:=1;
 while(CB<CUstr)do
  begin
   SX:='Стенд '+IntToStr(CB);
   S:=S+SX;
   CA:=Length(SX);
   while(CA<=8)do
    begin
     S:=S+' ';
     CA:=CA+1;
    end;
   S:=S+': ';
   PAByte:=Addr(Ustr[CB].Adr);
   Adr1:=PByteArray(PAByte)[0];
   Adr2:=PByteArray(PAByte)[1];
   Adr3:=PByteArray(PAByte)[2];
   Adr4:=PByteArray(PAByte)[3];
   SX:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);
   CA:=Length(SX);
   S:=S+SX;
   while(CA<=14)do
    begin
     S:=S+' ';
     CA:=CA+1;
    end;
   S:=S+': '+Ustr[CB].Name+#13+#10;
   CB:=CB+1;
  end;
 S:=S+#13+#10;

 CB:=1;
 while(CB<CUstr)do
  begin
   S:=S+'['+Ustr[CB].Name+']'+#13#10;
   S:=S+'Отчётная папка : '+Ustr[CB].WorkDir+#13#10;
   S:=S+'Калибровка множитель : 0,'+IntToStr(Ustr[CB].KorrMn)+#13#10;
   S:=S+'Калибровка смещение : '+IntToStr(Ustr[CB].KorrSm)+#13#10;
   S:=S+'S кольца: ';
   if Ustr[CB].D4060=1 then S:=S+'d40'+#13#10;
   if Ustr[CB].D4060=2 then S:=S+'d60'+#13#10;
   CC:=0; Exit:=0;
   while(Exit=0)do
    begin
     if Ustr[CB].TTT[CC]>=1 then
      begin
       SX:=IntToStr(CC);
       S:=S+SX;
       CA:=Length(SX);
       while(CA<=2)do
        begin
         S:=S+' ';
         CA:=CA+1;
        end;
       S:=S+': ';
       SX:=FloatToStrF(0.001*Ustr[CB].PPP[CC],ffFixed,6,3);
       CA:=Length(SX);
       S:=S+SX;
       while(CA<=6)do
        begin
         S:=S+' ';
         CA:=CA+1;
        end;
       S:=S+': ';
       S:=S+IntToStr(Ustr[CB].TTT[CC])+#13+#10;
       CC:=CC+1;
      end else
      begin
       Exit:=1;
      end;
    end;
   S:=S+#13+#10;
   CB:=CB+1;
  end;

 Buf:=Addr(S[1]);
 LenS:=Length(S);
 CA:=0;
 while(CA<LenS)do
  begin
   XB:=PByteArray(Buf)[CA];
   Write(FOut, XB);
   CA:=CA+1;
  end;

 CloseFile(FOut);
end;

procedure TForm1.FileLine();
var
 CA : Word;
 SX : String;
 XLin1, XLin2, XLin3, DltSPM : SmallInt;
 XADC, MnSPM : Word;
 SkSPM, NStep : Byte;
begin
 PByt:=Addr(Ustr[IndxUstr].AdrPrm^);
 PAByt^:=PAByt^+16*Ustr[IndxUstr].CDat;
 PASmi^:=PAByt^+0; XLin1:=PSmi^;
 PASmi^:=PAByt^+2; XLin2:=PSmi^;
 PASmi^:=PAByt^+4; XLin3:=PSmi^;
 PASmi^:=PAByt^+6; DltSPM:=PSmi^;
 PAWrd^:=PAByt^+8; // XADC:=PWrd^;
 if Ustr[IndxUstr].D4060=1 then XADC:=Trunc(0.700875*PWrd^); //--- Для клапана d40
 if Ustr[IndxUstr].D4060=2 then XADC:=Trunc(0.467250*PWrd^); //--- Для клапана d60
 PAWrd^:=PAByt^+10; MnSPM:=PWrd^;
 PADat^:=PAByt^+12; SkSPM:=PDat^;
 PADat^:=PAByt^+13; NStep:=PDat^;

 FLine:=SDay+'.'+SMsc+'.20'+SGod+' '+SChs+':'+SMin+':'+SSek+'   ';

 SX:=IntToStr(NStep);
 FLine:=FLine+SX;
 CA:=Length(SX);
 while(CA<=3)do
  begin
   FLine:=FLine+' ';
   CA:=CA+1;
  end;

 SX:='';
 if MnSPM<=9 then SX:='0';
 SX:=SX+IntToStr(MnSPM)+':';
 if SkSPM<=9 then SX:=SX+'0';
 SX:=SX+IntToStr(SkSPM);
 CA:=Length(SX);
 FLine:=FLine+SX;
 while(CA<=8)do
  begin
   FLine:=FLine+' ';
   CA:=CA+1;
  end;
 SX:=FloatToStrF(0.001*XADC,ffGeneral,6,3);
 CA:=Length(SX);
 FLine:=FLine+SX;
 while(CA<=8)do
  begin
   FLine:=FLine+' ';
   CA:=CA+1;
  end;
 SX:=IntToStr(XLin1);
 CA:=Length(SX);
 FLine:=FLine+SX;
 while(CA<=8)do
  begin
   FLine:=FLine+' ';
    CA:=CA+1;
  end;
 SX:=IntToStr(XLin2);
 CA:=Length(SX);
 FLine:=FLine+SX;
 while(CA<=8)do
  begin
   FLine:=FLine+' ';
   CA:=CA+1;
  end;
 SX:=IntToStr(XLin3);
 CA:=Length(SX);
 FLine:=FLine+SX;
 while(CA<=8)do
  begin
   FLine:=FLine+' ';
   CA:=CA+1;
  end;
 if DltSPM=$FFF then SX:='- - -'
 else SX:=IntToStr(DltSPM);
 FLine:=FLine+SX+#13+#10;
end;

procedure TForm1.SaveOtchet();
var
 CA, LenS : Word;
 Buf : Pointer;
 XB : Byte;
begin
 Ustr[IndxUstr].FixDat:=1;
 Ustr[IndxUstr].FixStep:=Ustr[IndxUstr].FixStep+1;
 if Ustr[IndxUstr].EnWrite=1 then
  begin
   FileLine();
   Buf:=Addr(FLine[1]);
   LenS:=Length(FLine);
   CA:=0;
   while(CA<LenS)do
    begin
     XB:=PByteArray(Buf)[CA];
     Write(Ustr[IndxUstr].FBlank, XB);   //Lucky
     CA:=CA+1;
    end;
  end;
end;

procedure TForm1.SaveRez();
var
 CA, LenS : Word;
 Buf : Pointer;
 S, SX : String;
 XB : Byte;
begin
 Ustr[IndxUstr].RezDat:=1;
 Ustr[IndxUstr].RezStep:=Ustr[IndxUstr].RezStep+1;
 if Ustr[IndxUstr].EnWrite=1 then
  begin
   FileLine();
   Buf:=Addr(FLine[1]);
   LenS:=Length(FLine);
   CA:=0;
   while(CA<LenS)do
    begin
     XB:=PByteArray(Buf)[CA];
     Write(Ustr[IndxUstr].FDat, XB);   //  Lucky
     CA:=CA+1;
    end;
  end;
end;

procedure TForm1.TabSheet1Show(Sender: TObject);
begin
 TabShow:=1;
 RepaintPanel(NumPanel);
end;

procedure TForm1.TabSheet2Show(Sender: TObject);
begin
 TabShow:=2;
 if IndxUstr=NumPanel then
  begin
   if (Ustr[IndxUstr].Rejm=6) then OutTable();
  end;
 RepaintPanel(NumPanel);
end;

procedure TForm1.TabSheet3Show(Sender: TObject);
begin
 TabShow:=3;
 if IndxUstr=NumPanel then
  begin
   if (Ustr[IndxUstr].Rejm=6) then OutGrafik();
  end;
 RepaintPanel(NumPanel);
end;

procedure TForm1.TabSheet4Show(Sender: TObject);
begin
 TabShow:=4;
// if (Ustr[NumPanel].Rejm>=2) then
//  begin
//   PosMark:=0;
//   BufTemp[0]:=$42;
//   WriteBufKom($01, Ustr[NumPanel].Adr, $01);
//   Label22.Visible:=False;
//  end;
 RepaintPanel(NumPanel);
end;

procedure TForm1.TabSheet5Show(Sender: TObject);
begin
 TabShow:=5;
 RepaintPanel(NumPanel);
end;

procedure TForm1.N8Click(Sender: TObject);
begin
 Form5.Show;
end;

procedure TForm1.N9Click(Sender: TObject);
var
 En : Byte;
 S : String;
 Buf : Pointer;
begin
// S:='                                                ВНИМАНИЕ !!!'+#13+#10+
//    '                                           Опасное действие.'+#13+#10+
//    'При выполнении данной команды произойдёт сброс всех настроек'+#13+#10+
//    '                          и всех установленных ранее режимов'+#13+#10+
//    '                              Продолжить выполнение команды?';
// Buf:=Addr(S[1]);
// En:=MessageBox(Handle, Buf, 'Предупреждение', MB_YESNO);
// if En=6 then RqReg();
 BufTemp[0]:=$41;
 WriteBufKom($01, $00, $01);
end;

procedure TForm1.RqReg();
var
 CA : Byte;
begin
 CUstr:=1;
 CA:=0;
 while(CA<23)do
  begin
   Ustr[CA].Adr:=0;
   Ustr[CA].Name:='';
   Ustr[CA].Rejm:=0;
   Ustr[CA].NumStep:=0;
   Ustr[CA].STimeStart:='';
   Ustr[CA].FixStep:=0;
   Ustr[CA].FixDat:=0;
   CA:=CA+1;
  end;
 BufTemp[0]:=$41;
 WriteBufKom($01, $00, $01);
end;

procedure TForm1.N10Click(Sender: TObject);
begin
 Form3.Top:=Form1.Top+32;
 Form3.Left:=Form1.Left+12;
 Form3.Show;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
 Form4.Show;
end;

procedure TForm1.N18Click(Sender: TObject);
begin
 TipDir:=1;
 Form2.Show;
end;

procedure TForm1.N19Click(Sender: TObject);
begin
 TipDir:=2;
 Form2.Show;
end;

procedure TForm1.N20Click(Sender: TObject);
begin
 Form9.Show;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
 Edit1.Visible:=False;
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
 NumAlg:=ComboBox1.ItemIndex;
 AlgFile:=ComboBox1.Items.Strings[ComboBox1.ItemIndex];
 LoadAlg();
 PosMark:=0;
 PaintTableUpr();
 BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm1.LoadAlg();
var
 FInp : File of Byte;
 XB, XB1, Indx : Byte;
 CA : Word;
 LenFile : LongWord;
 XC : Word;
 SkanD, DtktD, Find, Exit : Byte;
 CStep, FileCheck, EventD : Byte;
 S : String;
begin
 CMess:=0; FileCheck:=0;
 if NumAlg=0 then
  begin
   CA:=1; Exit:=0; Indx:=0;
   while((CA<IndxU)and(Exit=0))do
    begin
     if Ustr[NumPanel].Name=UstrINI[CA].Name then
      begin Indx:=CA; Exit:=1; end;
     CA:=CA+1;
    end;
   if Indx>=1 then
    begin
     CA:=0;
     while(CA<=10)do
      begin
       Ustr[NumPanel].PPP[CA]:=UstrINI[Indx].PPP[CA];
       Ustr[NumPanel].TTT[CA]:=UstrINI[Indx].TTT[CA];
       CA:=CA+1;
      end;
    end;
  end;
 if NumAlg>=1 then
  begin
   AssignFile(FInp,AlgFile);
   {$I-}
   Reset(FInp);
   {$I+}
   if IOResult=0 then FileCheck:=1
    else MessageDlg('Файл не найден...', mtInformation,[mbOk], 0);
   if FileCheck=1 then
    begin
     CA:=0;
     while(CA<10)do
      begin
       Ustr[NumPanel].PPP[CA]:=0;
       Ustr[NumPanel].TTT[CA]:=0;
       CA:=CA+1;
      end;
     LenFile:=FileSize(FInp);
     SkanD:=0; DtktD:=0;
     XC:=0; XB1:=0; Find:=0;
     FMess:=0; CStep:=0; CNorm:=0;
     CA:=0;
     while(CA<LenFile)do
      begin
       Read(FInp,XB);
       EventD:=0;
       if (XB>=$30)and(XB<=$39)and(SkanD=1) then
        begin
         XC:=10*XC+(XB-$30);
         DtktD:=1; EventD:=1;
        end;
       if (SkanD=1)and(DtktD=1)and(EventD=0) then
        begin
         if (Find=2) then begin Ustr[NumPanel].PPP[CStep]:=XC; DtktD:=0; SkanD:=0; XC:=0; end;
         if (Find=3) then begin Ustr[NumPanel].TTT[CStep]:=XC; DtktD:=0; SkanD:=0; XC:=0; end;
        end;
       if XB=$3A then  //--- Двуеточие
        begin
         SkanD:=1; XC:=0; DtktD:=0; S:='';
         if Find=1 then SkanD:=0;
         Find:=Find+1;
        end;
       if (XB=$2E)or(XB=$2C) then  //--- Точка или Запятая
        begin
         SkanD:=1;
         Find:=Find+1;
        end;
       if (XB=$0A)and(XB1=$0D) then
        begin
         CStep:=CStep+1;
         SkanD:=0; DtktD:=0; Find:=0;
        end;
       XB1:=XB;
       CA:=CA+1;
      end;
     if XC>=1 then Ustr[NumPanel].TTT[CStep]:=XC;
     Ustr[NumPanel].MaxStep:=CStep;
     CloseFile(FInp);
    end;
  end;
end;


//-----------------------------------------------------------------------------


procedure TForm1.NET_Free();
begin
 if NET_Ready=1 then
  begin
   if NET_Socket > 0 then CloseSocket(NET_Socket);
   NET_Socket := -1;
   FreeMem(NET_Buf);
   FreeMem(NET_RecvBuf);
   NET_Buf    := nil;
   NET_RecvBuf := nil;
   NET_APLs   := nil;
   WSACleanup;
   NET_Ready := 0;
  end;
end;

function TForm1.NET_Init: Byte;
 var
  winsock_data    : WSADATA;
  error, i        : integer;
  h: PHostEnt;
  c: array[0..128] of Char;
begin
 Result := 0;
 NET_Free();
 NET_Ready := 0;
 error := WSAStartup($0101, winsock_data);
 if error <> 0 then Exit;
 NET_Ready := 1;
 for i := 0 to Length(NET_APLs) - 1 do
  if NET_APLs[i] <> nil then
   begin
    FreeMem(NET_APLs[i]^.Data);
    Dispose(NET_APLs[i]);
   end;

 NET_Socket := -1;
 NET_APLs   := nil;

 if NET_Buf = nil then GetMem(NET_Buf, MaxBufLen);
 if NET_RecvBuf = nil then GetMem(NET_RecvBuf, MaxBufLen);

 GetHostName(@c, 128);
 h := GetHostByName(@c);
 MyName:=h^.h_Name; //--- хост(имя) компьютера
 StatusBar1.Panels.Items[0].Text:=MyName;
 MyAdr := PInAddr(h^.h_addr_list^)^.s_addr;
 PAByte:=Addr(MyAdr);
 Adr1:=PByteArray(PAByte)[0];
 Adr2:=PByteArray(PAByte)[1];
 Adr3:=PByteArray(PAByte)[2];
 Adr4:=PByteArray(PAByte)[3];
 SMyAdr:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);
 StatusBar1.Panels.Items[1].Text := SMyAdr;
 Result := 1;
end;

function TForm1.NET_InitSocket(Port: WORD): integer;
var
 sock    : integer;
 flag    : integer;
 i       : integer;
 address : sockaddr_in;
begin
 Result:= 0;
 i:= 1;
 flag:= 1;
 if NET_Socket > 0 then CloseSocket(NET_Socket);
//--- Создаем UDP socket
 sock := socket(PF_INET, SOCK_DGRAM, IPPROTO_UDP);
 if sock = -1 then Exit;
//--- Устанавливаем параметр nonblocking для socket, что означает, что если на
//--- входе нет данных, то метод чтения не будет ждать их появления
 if ioctlsocket(sock, FIONBIO, flag) = -1 then Exit;
//--- Настраиваем socket так, чтобы была возможность посылать и принимать broadcast
//--- сообщения, то есть, сообщения, направленные всем сетевым клиентам в текущей локальной сети
 setsockopt(sock, SOL_SOCKET, SO_BROADCAST, PChar(@i), SizeOf(i));
 address.sin_addr.S_addr := INADDR_ANY;
 address.sin_port        := htons(Port);
 address.sin_family      := AF_INET;
//--- Прикрепляем socket к порту
 if bind(sock, address, sizeof(address)) = -1 then
  begin
   CloseSocket(sock);
   Exit;
  end;
 Result := sock;
 NET_Socket := sock;
end;


//-----------------------------------------------------------------------------


function TForm1.NET_Send(IP : LongInt): integer;
var
 address   : sockaddr_in;
 CA : Word;
 S : String;
begin
 Result := 0;
 if (NET_Ready=0)or(NET_Socket <= 0) then Exit;
 if EnSysLog=1 then
  begin
   PAByte:=Addr(IP);
   Adr1:=PByteArray(PAByte)[0];
   Adr2:=PByteArray(PAByte)[1];
   Adr3:=PByteArray(PAByte)[2];
   Adr4:=PByteArray(PAByte)[3];
   S:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);
   Memo1.Lines.Add('Время: '+SChs+':'+SMin+':'+SSek);
   Memo1.Lines.Add('По адресу :  '+S+'  отправлен пакет длинной :  '+IntToStr(NET_BufLen));
   Memo1.Lines.Add('Отправлен пакет следующего содержания :');
   CA:=0; S:='';
   while(CA<NET_BufLen)do
    begin
     S:=S+' 0x'+IntToHex(NET_Buf[CA],2);
     CA:=CA+1;
    end;
   Memo1.Lines.Add(S);
   Memo1.Lines.Add('');
  end;
 address.sin_family:= AF_INET;
 address.sin_port:= htons(21666);
 if IP=0 then address.sin_addr.S_addr:= INADDR_BROADCAST
  else address.sin_addr.S_addr := IP;
 FillChar(address.sin_zero, SizeOf(address.sin_zero), 0);
 Result := SendTo(NET_Socket, NET_Buf[0], NET_BufLen, 0, address, SizeOf(address));
end;


//-----------------------------------------------------------------------------


function TForm1.NET_Recv() : Integer;
var
 From  : sockaddr_in;
 i     : integer;
begin
 i:=SizeOf(from);
 Result:=recvfrom(NET_Socket, NET_RecvBuf[0], 65535, 0, From, i);
 if Result<=0 then
  begin
   Result:=-1;
   Exit;
  end;
 if Result>0 then
  begin
   PALong:=Addr(From.sin_addr.S_addr);
   LAdr:=PALong^;
   Port := ntohs(From.sin_port);
  end;
end;


//-----------------------------------------------------------------------------


procedure TForm1.WriteBufKom(KodPkt : Byte; AdrDest : LongInt; LenBuf : Byte);
var
 Exit : Byte;
 CA : Word;
begin
 Exit:=0; CA:=0;
 while(Exit=0)do
  begin
   if DatPrd[ZagrStk].Flag=0 then Exit:=1;
   if CA=255 then Exit:=2;
   if Exit=0 then
    begin
     DatPrd[ZagrStk].NumPvt:=DatPrd[ZagrStk].NumPvt+1;
     ZagrStk:=ZagrStk+1;
    end;
  end;
 if Exit=1 then
  begin
   DatPrd[ZagrStk].Flag:=1;
   DatPrd[ZagrStk].KodPkt:=KodPkt;
   DatPrd[ZagrStk].AdrDest:=AdrDest;
   DatPrd[ZagrStk].LenBuf:=LenBuf;
   ABufTemp:=DatPrd[ZagrStk].AdrBuf;
   CA:=0;
   while(CA<LenBuf)do
    begin
     ABufTemp^:=BufTemp[CA]; Inc(ABufTemp);
     CA:=CA+1;
    end;
   ZagrStk:=ZagrStk+1;
  end;
 if Exit=2 then
  begin
   MessageBox(Handle, 'Ошибка интерфейса связи с устройствами'+#13+#10+'проверьте соединение...', 'Ошибка', MB_ICONHAND);
  end;
end;


//-----------------------------------------------------------------------------

procedure TForm1.SkanDatTime();
var
 XB : Byte;
begin
 DNow:=Now;
 DecodeDateTime(DNow,Year,Month,Days,Hour,Min,Sek,MSec);
 if Hour<=9 then SChs:='0'+IntToStr(Hour) else SChs:=IntToStr(Hour);
 if Min<=9 then SMin:='0'+IntToStr(Min) else SMin:=IntToStr(Min);
 if Sek<=9 then SSek:='0'+IntToStr(Sek) else SSek:=IntToStr(Sek);
 STim:=SChs+SMin+SSek;
 XB:=Year-100*Floor(Year/100);
 if XB<=9 then SGod:='0'+IntToStr(XB) else SGod:=IntToStr(XB);
 if Month<=9 then SMsc:='0'+IntToStr(Month) else SMsc:=IntToStr(Month);
 if Days<=9 then SDay:='0'+IntToStr(Days) else SDay:=IntToStr(Days);
 SDat:=SGod+SMsc+SDay;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
 XB, XC, CRC, Exit : Byte;
 S, SAdr : string;
 CA, CB, CC, CKom, XI : Integer;
begin

 CPS:=CPS+1;
 if (CPS>=10) then
  begin
   CPS:=0;
   SkanDatTime();
   CA:=1;
   while(CA<=23)do
    begin
     Ustr[CA].TimeOut:=Ustr[CA].TimeOut+1;
     if Ustr[CA].TimeOut>=8 then
      begin
       if ($2 and Ustr[CA].TimeOut)=$2 then Ustr[CA].Alarm:=1
        else Ustr[CA].Alarm:=0;
       AlarmConnect(CA);
      end;
     if (Ustr[CA].TimeOut>=20)and((Ustr[CA].Rejm>=1)) then
      begin
       Ustr[CA].Alarm:=2;
       Ustr[CA].Rejm:=0;
       DublStat[CA]:=$040 or DublStat[CA];
       AlarmConnect(CA);
       RepaintPanel(CA);
      end;
     if Ustr[CA].TimeOut>=253 then Ustr[CA].TimeOut:=253;
     CA:=CA+1;
    end;
  end;

 LenRecv:=NET_Recv();

 if (LenRecv>=1) then
  begin
   PAByte:=Addr(LAdr);
   Adr1:=PByteArray(PAByte)[0];
   Adr2:=PByteArray(PAByte)[1];
   Adr3:=PByteArray(PAByte)[2];
   Adr4:=PByteArray(PAByte)[3];
   SAdr:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);

   if EnSysLog=1 then
    begin
     Memo1.Lines.Add('Время: '+SChs+':'+SMin+':'+SSek);
     Memo1.Lines.Add('От устройства: '+SAdr+'   Получено (байт): '+IntToStr(LenRecv));
     CA:=0; S:='';
     while(CA<LenRecv)do
      begin
       XC:=NET_RecvBuf[CA];
       S:=S+' 0x'+IntToHex(XC,2);
       CA:=CA+1;
      end;
     Memo1.Lines.Add('Содержимое полученного пакета : ');
     Memo1.Lines.Add(S);
     Memo1.Lines.Add('');
    end;
  end;

 CA:=0;
 while(CA<LenRecv)do
  begin
   XC:=NET_RecvBuf[CA];
   if (StartPkt=2)and(Vbrk=1) then begin KodPkt:=XC; CRS:=0; S:=''; CPrm:=0; end;
   if (StartPkt=2)and(Vbrk=2) then begin NumPkt:=XC; end;
   if (StartPkt=2)and(Vbrk=3) then begin NumPvt:=XC; end;
   if (StartPkt=2)and(Vbrk=4) then begin LenPkt:=XC; end;
   if (XC=$6A)and(StartPkt=1) then StartPkt:=StartPkt+1;
   if (StartPkt=1) then StartPkt:=0;
   if (XC=$93)and(StartPkt=0) then StartPkt:=StartPkt+1;

   if (KodPkt=$81)and(Vbrk>=1) then
    begin
     if Vbrk=1 then EnPkt:=1;
     if Vbrk=5 then ValidKom:=XC;
     if Vbrk=6 then ValidNum:=XC;
     if Vbrk=7 then ValidPvt:=XC;
     if Vbrk=8 then
      begin
       if CRS=XC then
        begin
         if EnSysLog=1 then Memo1.Lines.Add('Пришло подтверждение приёма команды... ( '+IntToStr(ValidKom)+' )'+#13+#10);
         DatPrd[ValidNum].Flag:=0;
         DatPrd[ValidNum].NumPvt:=0;
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;
    end;

   if (KodPkt=$82)and(Vbrk>=1) then
    begin
     if Vbrk=1 then EnPkt:=1;
     if Vbrk=5 then BufKom:=XC;
     if Vbrk=6 then
      begin
       if CRS=XC then
        begin
         PAByte:=Addr(MyAdr);
         BufTemp[0]:=PByteArray(PAByte)[0];
         BufTemp[1]:=PByteArray(PAByte)[1];
         BufTemp[2]:=PByteArray(PAByte)[2];
         BufTemp[3]:=PByteArray(PAByte)[3];
         WriteBufKom($02, LAdr, $04);
         CB:=1; Exit:=0; IndxUstr:=0;
         while((CB<CUstr)and(Exit=0))do
          begin
           if LAdr=Ustr[CB].Adr then
            begin IndxUstr:=CB; Exit:=1; end;
           CB:=CB+1;
          end;
         Ustr[IndxUstr].TimeOut:=0;
         Ustr[IndxUstr].Alarm:=0;
         if IndxUstr=0 then
          begin
           Ustr[CUstr].Adr:=LAdr; Ustr[CUstr].Name:=SAdr;
           Ustr[CUstr].Rejm:=1;
           DublStat[CUstr]:=$041 or DublStat[CUstr];
           CB:=1; Exit:=0; IndxUstr:=0;
           while((CB<=IndxU)and(Exit=0))do
            begin
             if LAdr=UstrINI[CB].Adr then
              begin IndxUstr:=CB; Exit:=1; end;
             CB:=CB+1;
            end;
           if IndxUstr>=1 then
            begin
             Ustr[CUstr].Name:=UstrINI[IndxUstr].Name;
             Ustr[CUstr].WorkDir:=UstrINI[IndxUstr].WorkDir;
             Ustr[CUstr].KorrMn:=UstrINI[IndxUstr].KorrMn;
             Ustr[CUstr].KorrSm:=UstrINI[IndxUstr].KorrSm;
             Ustr[CUstr].D4060:=UstrINI[IndxUstr].D4060;
             CB:=0; CC:=0;
             while(CB<=10)do
              begin
               Ustr[CUstr].PPP[CB]:=UstrINI[IndxUstr].PPP[CB];
               Ustr[CUstr].TTT[CB]:=UstrINI[IndxUstr].TTT[CB];
               if Ustr[CUstr].TTT[CB]>=1 then CC:=CC+1;
               CB:=CB+1;
              end;
             Ustr[CUstr].MaxStep:=CC;
//            CB:=0;
//            while(CB<Ustr[CUstr].MaxStep)do
//             begin
//              Form4.PaintStep(CB,IndxUstr,1);
//              CB:=CB+1;
//             end;
             PByt:=Addr(Ustr[CUstr].KorrMn);
             BufTemp[0]:=PByt^; Inc(PByt);
             BufTemp[1]:=PByt^; Inc(PByt);
             BufTemp[2]:=PByt^; Inc(PByt);
             BufTemp[3]:=PByt^;
             WriteBufKom($04, LAdr, $04);
             DublStat[CUstr]:=$0037 or DublStat[CUstr];
            end;
           if CUstr<=22 then CUstr:=CUstr+1;
           if CUstr=2 then Label14.Visible:=False;
          end else
          begin
           Ustr[IndxUstr].Rejm:=1;
           PByt:=Addr(Ustr[IndxUstr].KorrMn);
           BufTemp[0]:=PByt^; Inc(PByt);
           BufTemp[1]:=PByt^; Inc(PByt);
           BufTemp[2]:=PByt^; Inc(PByt);
           BufTemp[3]:=PByt^;
           WriteBufKom($04, Ustr[IndxUstr].Adr, $04);
          end;
         BufTemp[0]:=$42;
         WriteBufKom($01, LAdr, $01);
         RenamePanel();
         EventUstr();
         Memo1.Lines.Add('Время: '+SChs+':'+SMin+':'+SSek);
         Memo1.Lines.Add('Пришёл запрос на регистрацию устройства: '+SAdr);
         Memo1.Lines.Add('');
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;
    end;

   if (KodPkt=$83)and(Vbrk>=1) then
    begin
     if Vbrk=1 then EnPkt:=1;
     if Vbrk>=LenPkt+6 then
      begin
       if CRS=XC then
        begin
         CC:=0; CKom:=0;
         while(CC<LenPkt)do
          begin
           PWrd:=Addr(BufPrm[CC]);
           CC:=CC+2;
           if Ustr[NumPanel].D4060=1 then SttUstr[NumPanel].PPP[CKom]:=Trunc(0.700875*PWrd^); //--- Для клапана d40
           if Ustr[NumPanel].D4060=2 then SttUstr[NumPanel].PPP[CKom]:=Trunc(0.467250*PWrd^); //--- Для клапана d60
//           SttUstr[NumPanel].PPP[CKom]:=Floor(1*PWrd^);
           PWrd:=Addr(BufPrm[CC]);
           CC:=CC+2;
           SttUstr[NumPanel].TTT[CKom]:=PWrd^;
           CKom:=CKom+1;
          end;
         while(CKom<=10)do
          begin
           SttUstr[NumPanel].PPP[CKom]:=0;
           SttUstr[NumPanel].TTT[CKom]:=0;
           CKom:=CKom+1;
          end;
         if (Ustr[NumPanel].Rejm=2) then
          begin
           Ustr[NumPanel].Rejm:=3;
           DublStat[NumPanel]:=$040 or DublStat[NumPanel];
          end;
//         PaintBox1.Width:=WinX; PaintBox1.Height:=WinY;
         PaintTableStt();
         BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;
     if (Vbrk>=5)and(EnPkt=1) then
      begin
       BufPrm[CPrm]:=XC; CPrm:=CPrm+1;
      end;
    end;

   if (KodPkt=$85)and(Vbrk>=1) then
    begin
     if Vbrk=1 then EnPkt:=1;
     if Vbrk>=LenPkt+5 then
      begin
       if CRS=XC then
        begin
         CB:=1; Exit:=0; IndxUstr:=0;
         while((CB<=23)and(Exit=0))do
          begin
           if LAdr=Ustr[CB].Adr then
            begin IndxUstr:=CB; Exit:=1; end;
           CB:=CB+1;
          end;
         Ustr[IndxUstr].TimeOut:=0;
         Ustr[IndxUstr].Alarm:=0;
         if IndxUstr>=1 then
          begin
           FLin1:=BufPrm[0];
           PSmi:=Addr(BufPrm[2]); Lin1:=PSmi^;
           if BufPrm[1]=1 then Lin1:=-1*Lin1;
           FLin2:=BufPrm[4];
           PSmi:=Addr(BufPrm[6]); Lin2:=PSmi^;
           if BufPrm[5]=1 then Lin2:=-1*Lin2;
           PSmi:=Addr(BufPrm[8]); Lin3:=PSmi^;
           PSmi:=Addr(BufPrm[10]); DeltaSPM:=PSmi^;
           PWrd:=Addr(BufPrm[12]);
           if Ustr[IndxUstr].D4060=1 then ADCSPM:=Trunc(0.700875*PWrd^); //--- Для клапана d40 NumPanel
           if Ustr[IndxUstr].D4060=2 then ADCSPM:=Trunc(0.467250*PWrd^); //--- Для клапана d60 NumPanel
//           ADCSPM:=PWrd^;
           PWrd:=Addr(BufPrm[14]); MinSPM:=PWrd^;
           SekSPM:=BufPrm[16];
           TimeSPM:=60*MinSPM+SekSPM;
           Ustr[IndxUstr].TimeStep:=TimeSPM;
           if (NumPanel>=1)and(($60 and SttSPM)=$60) then OutTable();
           if BufPrm[17]>Ustr[IndxUstr].NumStep then
            begin
             Ustr[IndxUstr].FixStep:=0;
             Ustr[IndxUstr].FixDat:=0;
             Ustr[IndxUstr].RezStep:=0;
             Ustr[IndxUstr].RezDat:=0;
             Ustr[IndxUstr].PGL:=0;
             Ustr[IndxUstr].PGF:=0;
             SaveOtchet();
             if Ustr[IndxUstr].NumStep>=1 then Form4.PaintStep(Ustr[IndxUstr].NumStep-1,IndxUstr,2);
             Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1;
             DublStat[IndxUstr]:=$180 or DublStat[IndxUstr];
             ScrollBar1.Max:=Ustr[IndxUstr].CDat;
             Ustr[IndxUstr].FixStep:=0;   // Lucky
            end;
           Ustr[IndxUstr].NumStep:=BufPrm[17];
           NumStep:=BufPrm[17];
           SttSPM:=BufPrm[18];
           PByt:=Addr(Ustr[IndxUstr].AdrPrm^);    //---Положить в пямять данные из  массива приёма
           PAByt^:=PAByt^+16*Ustr[IndxUstr].CDat;
           PASmi^:=PAByt^+0; PSmi^:=Lin1;
           PASmi^:=PAByt^+2; PSmi^:=Lin2;
           PASmi^:=PAByt^+4; PSmi^:=Lin3;
           CB:=10;  PAByt^:=PAByt^+6;
           while(CB<=18)do
            begin
             PByt^:=BufPrm[CB]; Inc(PByt);
             CB:=CB+1;
            end;                                  //--- Положили, но не сместили индекс номера записи
           DublStat[IndxUstr]:=$200 or DublStat[IndxUstr];
           if (($40 and SttSPM)=$40)and(Ustr[IndxUstr].StartSPM=0) then
            begin
             Ustr[IndxUstr].StartSPM:=1;
             Ustr[IndxUstr].TimeStart:=DNow;
             DublStat[IndxUstr]:=$008 or DublStat[IndxUstr];
             Ustr[IndxUstr].STimeStart:=SDay+'.'+SMsc+'.20'+SGod+'  '+SChs+':'+SMin+':'+SSek;
             Ustr[IndxUstr].PGL:=0;
             Ustr[IndxUstr].PGF:=0;
             CB:=0;
             while(CB<Ustr[IndxUstr].MaxStep)do
              begin
               Form4.PaintStep(CB,IndxUstr,1);
               CB:=CB+1;
              end;
             CB:=0;
             while(CB<(Ustr[IndxUstr].NumStep-1))do
              begin
               Form4.PaintStep(CB, IndxUstr, 2);
               CB:=CB+1;
              end;
            end;
           if (($40 and SttSPM)=$00)and(Ustr[IndxUstr].StartSPM=1) then
            begin
             Ustr[IndxUstr].StartSPM:=0;
             if Ustr[IndxUstr].NumStep>=1 then
              begin
               if Ustr[IndxUstr].Rejm=7 then Form4.PaintStep(Ustr[IndxUstr].NumStep-1, IndxUstr, 3);
               if Ustr[IndxUstr].Rejm=6 then Form4.PaintStep(Ustr[IndxUstr].NumStep-1, IndxUstr, 2);
              end;
             Ustr[IndxUstr].Rejm:=7;
             DublStat[IndxUstr]:=$040 or DublStat[IndxUstr];
             SaveRez();
             SaveOtchet();
             Ustr[IndxUstr].EnWork:=0;
             if Ustr[IndxUstr].EnWrite=1 then
              begin
               CloseFile(Ustr[IndxUstr].FDat);
               CloseFile(Ustr[IndxUstr].FBlank);
               Ustr[IndxUstr].EnWrite:=0;
              end;
             UstrAlarm();
             RepaintPanel(IndxUstr);
            end;
           if Ustr[IndxUstr].Rejm=1 then
            begin
             if ($40 and SttSPM)=$40 then
              begin
               if TimeSPM>=1    then begin Ustr[IndxUstr].FixStep:=1; Ustr[IndxUstr].RezStep:=1; end;
               if TimeSPM>=15   then begin Ustr[IndxUstr].FixStep:=2; Ustr[IndxUstr].RezStep:=2; end;
               if TimeSPM>=30   then begin Ustr[IndxUstr].FixStep:=3; Ustr[IndxUstr].RezStep:=3; end;
               if TimeSPM>=60   then begin Ustr[IndxUstr].FixStep:=4; Ustr[IndxUstr].RezStep:=4; end;
               if TimeSPM>=120  then begin Ustr[IndxUstr].FixStep:=5; Ustr[IndxUstr].RezStep:=5; end;
               if TimeSPM>=300  then begin Ustr[IndxUstr].FixStep:=6; Ustr[IndxUstr].RezStep:=6; end;
               if TimeSPM>=600  then begin Ustr[IndxUstr].FixStep:=7; Ustr[IndxUstr].RezStep:=(TimeSPM div 600)+6; end;
               if TimeSPM>=1200 then begin Ustr[IndxUstr].FixStep:=8; end;
               if TimeSPM>=1800 then begin Ustr[IndxUstr].FixStep:=9; end;
               if TimeSPM>=3600 then begin Ustr[IndxUstr].FixStep:=(TimeSPM div 3600)+9; end;
               Ustr[IndxUstr].Rejm:=6;
               DublStat[IndxUstr]:=$040 or DublStat[IndxUstr];
               ChangeObj(IndxUstr);
               LoadRezDat(IndxUstr);
               UstrAlarm();
               OutGrafik();
              end;
            end;
//           if (Ustr[IndxUstr].Rejm=7)and(($40 and SttSPM)=$00) then
//            begin
//             Ustr[IndxUstr].Rejm:=1;
//             RepaintPanel(IndxUstr);
//            end;
           if IndxUstr=NumPanel then EventStat:=1;
           if (Ustr[IndxUstr].Rejm=6) then
            begin
             if (Ustr[IndxUstr].FixStep=0) then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=1)and(TimeSPM>=15)   then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=2)and(TimeSPM>=30)   then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=3)and(TimeSPM>=60)   then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=4)and(TimeSPM>=120)  then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=5)and(TimeSPM>=300)  then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=6)and(TimeSPM>=600)  then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=7)and(TimeSPM>=1200) then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=8)and(TimeSPM>=1800) then Ustr[IndxUstr].FixDat:=0;
             if (Ustr[IndxUstr].FixStep=9)and(TimeSPM>=3600) then Ustr[IndxUstr].FixDat:=0;
             if  (Ustr[IndxUstr].FixStep>9) then
              begin
              XI:=Ustr[IndxUstr].FixStep;
              if (Ustr[IndxUstr].FixStep=XI)and(TimeSPM>=(XI-8)*3600) then Ustr[IndxUstr].FixDat:=0;
             end;
//             XI:=(TimeSPM div 3600)-Ustr[IndxUstr].FixStep;
//             if XI>=1 then Ustr[IndxUstr].FixDat:=0;
//            if TimeSPM>=(60*Ustr[NumPanel].TTT[Ustr[NumPanel].NumStep-1]-1) then Ustr[IndxUstr].FixDat:=0;


             if (Ustr[IndxUstr].RezStep=0) then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=1)and(TimeSPM>=15)   then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=2)and(TimeSPM>=30)   then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=3)and(TimeSPM>=60)   then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=4)and(TimeSPM>=120)  then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=5)and(TimeSPM>=300)  then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep=6)and(TimeSPM>=600)  then Ustr[IndxUstr].RezDat:=0;
             if (Ustr[IndxUstr].RezStep>6)  then
              begin
              XI:=Ustr[IndxUstr].RezStep;
              if (Ustr[IndxUstr].RezStep=XI) and (TimeSPM>=(XI-5)*600) then Ustr[IndxUstr].RezDat:=0;
              end;
//             XI:=(TimeSPM div 600)-Ustr[IndxUstr].RezStep;
//             if (XI)>=1 then Ustr[IndxUstr].RezDat:=0;

             if (Ustr[IndxUstr].FixDat=1)and(Ustr[IndxUstr].RezDat=0) then
              begin
              SaveRez();
//              Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1;
              end;

             if (Ustr[IndxUstr].FixDat=0)and(($60 and SttSPM)=$60) then
              begin
//               SaveOtchet();
//               Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1;

               if (Ustr[IndxUstr].RezDat=0) then  SaveRez();
               if TimeSPM>=1 then SaveOtchet();                // Lucky
               if TimeSPM<1 then
                begin
                 Ustr[IndxUstr].FixStep:=0     // Lucky отсчет запись в таблицу с 1 сек
                end else
                begin
                 Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1; // Lucky
                 DublStat[IndxUstr]:=$180 or DublStat[IndxUstr];
                 ScrollBar1.Max:=Ustr[IndxUstr].CDat;
                end;
               if IndxUstr=NumPanel then
                begin
                 if (PageControl1.ActivePageIndex=1) then OutTable();
                 if (PageControl1.ActivePageIndex=2) then OutGrafik();
                end;
              end;
//             if (Ustr[IndxUstr].RezDat=0) then
//             begin
//              Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat-1;
//             SaveRez();
//              Ustr[IndxUstr].CDat:=Ustr[IndxUstr].CDat+1;
//             end;
            end;
          end;
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;

     if (Vbrk>=5)and(EnPkt=1) then
      begin
       BufPrm[CPrm]:=XC; CPrm:=CPrm+1;
      end;

    end;

   if (KodPkt=$86)and(Vbrk>=1) then
    begin
     if Vbrk=1 then EnPkt:=1;
     if Vbrk>=LenPkt+5 then
      begin
       if CRS=XC then
        begin
         PLong:=Addr(BufPrm[0]);
         AdrVtor:=PLong^;
         EnVtor:=1;
         CA:=1;
         while(CA<CUstr)do
          begin
           DublStat[CA]:=$7FF;
           CA:=CA+1;
          end;
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;
     if (Vbrk>=5)and(EnPkt=1) then
      begin
       BufPrm[CPrm]:=XC; CPrm:=CPrm+1;
      end;
    end;

   if (KodPkt=$05)and(Vbrk>=1) then
    begin
     if Vbrk=1 then begin EnPkt:=1; SText:='Входящее сообщение (<--) : '; end;
     if Vbrk>=LenPkt+5 then
      begin
       if CRS=XC then
        begin
         Form1.Show;
//         PageControl1.ActivePageIndex:=5;
//         Memo2.Lines.Add(SText);
        end;
       StartPkt:=0; Vbrk:=0; EnPkt:=0;
      end;
     if (Vbrk>=5)and(EnPkt=1) then
      begin
       if XC>=$20 then SText:=SText+Chr(XC);
       CPrm:=CPrm+1;
      end;
    end;

   if Vbrk>=1 then CRS:=CRS+XC;
   if (StartPkt=2)and(Vbrk=1)and(EnPkt=0) then
    begin StartPkt:=0; Vbrk:=0; end;
   if StartPkt>=2 then VBrk:=VBrk+1;
   CA:=CA+1;
  end;

// CA:=0; Exit:=0;
// while(Exit=0)do
//  begin
//   if DatPrd[VbrkStk].Flag=1 then Exit:=1;
//   if (CA>=256) then Exit:=2;
//   if Exit=0 then VbrkStk:=VbrkStk+1;
//   CA:=CA+1;
//  end;

 if DatPrd[VbrkStk].Flag=1 then
// if Exit=1 then
  begin
   NET_Buf[0]:=$93;
   NET_Buf[1]:=$6A;
   NET_Buf[2]:=DatPrd[VbrkStk].KodPkt;
   NET_Buf[3]:=VbrkStk;
   NET_Buf[4]:=DatPrd[VbrkStk].NumPvt;
   LenBuf:=DatPrd[VbrkStk].LenBuf;
   NET_Buf[5]:=LenBuf;
   ABufTemp:=DatPrd[VbrkStk].AdrBuf;
   CA:=0;
   while(CA<LenBuf)do
    begin
     NET_Buf[CA+6]:=ABufTemp^; Inc(ABufTemp);
     CA:=CA+1;
    end;
   CA:=2; CRC:=0;
   while(CA<=LenBuf+5)do
    begin
     CRC:=CRC+NET_Buf[CA];
     CA:=CA+1;
    end;
   NET_Buf[CA]:=CRC;
   NET_BufLen:=CA+1;
   NET_Send(DatPrd[VbrkStk].AdrDest);
//   if DatPrd[VbrkStk].KodPkt=$81 then DatPrd[VbrkStk].Flag:=0;
   DatPrd[VbrkStk].Flag:=0;
   DatPrd[VbrkStk].NumPvt:=0;
   VbrkStk:=VbrkStk+1;
  end;

 if EventStat=1 then
  begin
   EventStat:=0;
   Label23.Caption:=Ustr[NumPanel].Name;
   Label10.Caption:=Ustr[NumPanel].WorkDir;
   if Ustr[NumPanel].Rejm=6 then Label24.Caption:=Ustr[NumPanel].STimeStart else Label24.Caption:='- - -';
   if ($40 and SttSPM)=$40 then Label25.Caption:=IntToStr(Ustr[NumPanel].NumStep) else Label25.Caption:='- - -';
   if ($70 and SttSPM)=$70 then Label29.Caption:=IntToStr(DeltaSPM) else Label29.Caption:='- - -';
   Label15.Caption:=FloatToStrF(0.001*ADCSPM,ffGeneral,6,3)+' МПа';
   if ($60 and SttSPM)=$60 then Label16.Caption:=IntToStr(MinSPM)+' мин. '+IntToStr(SekSPM)+' сек.' else Label16.Caption:='- - -';
   if FLin1=0 then begin S:=IntToStr(Lin1); S:=S+' (мкм)'; end;
   if FLin1=1 then begin S:=FloatToStr(5/10000.00000*Lin1); S:=S+' (inch)'; end;
   if ($1 and SttSPM)=$1 then Label17.Caption:=S else Label17.Caption:='- - -';
   if FLin2=0 then begin S:=IntToStr(Lin2); S:=S+' (мкм)'; end;
   if FLin2=1 then begin S:=FloatToStr(5/10000.00000*Lin2); S:=S+' (inch)'; end;
   if ($2 and SttSPM)=$2 then Label18.Caption:=S else Label18.Caption:='- - -';
   S:=FloatToStr(Lin3); S:=S+' (мкм)';
   if ($3 and SttSPM)>=1 then Label27.Caption:=S else Label27.Caption:='- - -';
   S:='Давление '+FloatToStrF(0.001*Ustr[NumPanel].PPP[Ustr[NumPanel].NumStep-1],ffGeneral,6,3)+
      ' МПа, Интервал времени удержания режима: '+IntTostr(Ustr[NumPanel].TTT[Ustr[NumPanel].NumStep-1])+' мин. ';
   if ($40 and SttSPM)=$40 then Label26.Caption:=S else Label26.Caption:='- - -';
   if Ustr[NumPanel].D4060=0 then Label31.Caption:='S кольца : - - -';
   if Ustr[NumPanel].D4060=1 then Label31.Caption:='S кольца : d40';
   if Ustr[NumPanel].D4060=2 then Label31.Caption:='S кольца : d60';
  end;

 if EnBaseFolder=1 then
  begin
   EnBaseFolder:=2;
   MessageBox(Handle,'Рабочая папка не определена.', 'Предупреждение', MB_ICONWARNING);//MB_ICONHAND);
  end;

 if EnVtor=1 then
  begin
   CA:=1; Exit:=0;
   while(CA<=23)and(Exit=0)do
    begin
     if DublStat[CA]>=1 then Exit:=1;
     if Exit=0 then CA:=CA+1;
    end;
   if Exit=1 then
    begin
     CB:=0; Exit:=0; Mask:=1;
     while(CB<=13)and(Exit=0)do
      begin
       if (Mask and DublStat[CA])=Mask then Exit:=1;
       if Exit=0 then begin CB:=CB+1; Mask:=Mask shl 1; end;
      end;
    end;
   if Exit=1 then
    begin
     DublOut(CA,CB);
    end;
  end;

 StatusBar1.Panels.Items[3].Text := 'ZagrStk = '+IntToStr(ZagrStk)+'   VbrkStk = '+IntToStr(VbrkStk);
end;

procedure TForm1.DublOut(NumUstr : Byte; NumPrm : Byte);
var
 LenS, Flag : Byte;
 CA : Word;
 Buf : Pointer;
 S: String;
begin

 BufTemp[0]:=NumUstr;
 BufTemp[1]:=NumPrm;
 Flag:=1;

 if (NumPrm=0)and(Flag=1) then
  begin
   Flag:=0;
   S:=Ustr[NumUstr].Name;
   LenS:=Length(S);
   Buf:=Addr(S[1]);
   CA:=0;
   while(CA<LenS)do
    begin
     BufTemp[CA+2]:=PByteArray(Buf)[CA];
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, LenS+2);
   DublStat[NumUstr]:=$FFFE and DublStat[NumUstr];
  end;

 if (NumPrm=1)and(Flag=1) then
  begin
   Flag:=0;
   Buf:=Addr(Ustr[NumUstr].KorrMn);
   CA:=0;
   while(CA<=3)do
    begin
     BufTemp[CA+2]:=PByteArray(Buf)[CA];
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, 6);
   DublStat[NumUstr]:=$FFFD and DublStat[NumUstr];
  end;

 if (NumPrm=2)and(Flag=1) then
  begin
   Flag:=0;
   BufTemp[2]:=Ustr[NumUstr].D4060;
   WriteBufKom($06, AdrVtor, 3);
   DublStat[NumUstr]:=$FFFB and DublStat[NumUstr];
  end;

 if (NumPrm=3)and(Flag=1) then
  begin
   Flag:=0;
   Buf:=Addr(Ustr[NumUstr].TimeStart);
   CA:=0;
   while(CA<=7)do
    begin
     BufTemp[CA+2]:=PByteArray(Buf)[CA];
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, 10);
   DublStat[NumUstr]:=$FFF7 and DublStat[NumUstr];
  end;

 if (NumPrm=4)and(Flag=1) then
  begin
   Flag:=0;
   BufTemp[2]:=Ustr[NumUstr].MaxStep;
   WriteBufKom($06, AdrVtor, 3);
   DublStat[NumUstr]:=$FFEF and DublStat[NumUstr];
  end;

 if (NumPrm=5)and(Flag=1) then
  begin
   Flag:=0;
   Buf:=Addr(Ustr[NumUstr].PPP[0]);
   CA:=0;
   while(CA<44)do
    begin
     BufTemp[CA+2]:=PByteArray(Buf)[CA];
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, 46);
   DublStat[NumUstr]:=$FFDF and DublStat[NumUstr];
  end;

 if (NumPrm=6)and(Flag=1) then
  begin
   Flag:=0;
   BufTemp[2]:=Ustr[NumUstr].Rejm;
   WriteBufKom($06, AdrVtor, 3);
   DublStat[NumUstr]:=$FFBF and DublStat[NumUstr];
  end;

 if (NumPrm=7)and(Flag=1) then
  begin
   Flag:=0;
   Buf:=Addr(Ustr[NumUstr].CDat);
   BufTemp[2]:=PByteArray(Buf)[0];
   BufTemp[3]:=PByteArray(Buf)[1];
   WriteBufKom($06, AdrVtor, 4);
   DublStat[NumUstr]:=$FF7F and DublStat[NumUstr];
  end;

 if (NumPrm=8)and(Flag=1) then
  begin
   Flag:=0;
   PByt:=Addr(Ustr[NumUstr].AdrPrm^);
   CA:=0;
   while(CA<16*Ustr[NumUstr].CDat)do
    begin
     BufTemp[CA+2]:=PByt^; Inc(PByt);
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, CA+2);
   DublStat[NumUstr]:=$FEFF and DublStat[NumUstr];
  end;

 if (NumPrm=9)and(Flag=1) then
  begin
   Flag:=0;
   PByt:=Addr(Ustr[NumUstr].AdrPrm^);
   PAByt^:=PAByt^+16*Ustr[NumUstr].CDat;
   CA:=0;
   while(CA<=15)do
    begin
     BufTemp[CA+2]:=PByt^; Inc(PByt);
     CA:=CA+1;
    end;
   WriteBufKom($06, AdrVtor, 18);
   DublStat[NumUstr]:=$FDFF and DublStat[NumUstr];
  end;

end;

procedure TForm1.RenamePanel();
var
 S, SA, SB : String;
 CA, CB, CC, MaxPos, LSA, LSB, NMin, Flag, Exit : Byte;
begin
//--- Сортировка имён по возрастанию
   CA:=1;
   while(CA<=23)do
    begin
     SA:=Ustr[CA].Name;
     LSA:=Length(SA); NMin:=CA;
     CB:=CA+1; Flag:=0;
     while(CB<MaxPos)do
      begin
       SB:=Ustr[CA].Name;
       LSB:=Length(SB);
       CC:=1; Exit:=0;
       while(Exit=0)do
        begin
         if (SB[CC]<SA[CC])or(CC>LSB) then
          begin
           SA:=SB; NMin:=CB; LSA:=LSB; Exit:=1; Flag:=1;
          end else
          begin
           if (SB[CC]<>SA[CC]) then Exit:=1;
          end;
         CC:=CC+1;
         if CC>LSA then Exit:=1;
        end;
       CB:=CB+1;
      end;
     if Flag=1 then
      begin
       XUstr:=Ustr[CA];
       Ustr[CA]:=Ustr[NMin];
       Ustr[NMin]:=XUstr;
      end;
     CA:=CA+1;
    end;
   CA:=1;
   while(CA<CUstr)do
    begin
     PAByte:=Addr(Ustr[CA].Adr);
     Adr1:=PByteArray(PAByte)[0];
     Adr2:=PByteArray(PAByte)[1];
     Adr3:=PByteArray(PAByte)[2];
     Adr4:=PByteArray(PAByte)[3];
     S:=Ustr[CA].Name;
     if Ustr[CA].Name='' then S:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);
     if (CA=1)and(CA=SelPanel) then  begin Panel1.Visible:=True;  Panel1.Caption:=S; end;
     if (CA=2)and(CA=SelPanel) then  begin Panel2.Visible:=True;  Panel2.Caption:=S; end;
     if (CA=3)and(CA=SelPanel) then  begin Panel3.Visible:=True;  Panel3.Caption:=S; end;
     if (CA=4)and(CA=SelPanel) then  begin Panel4.Visible:=True;  Panel4.Caption:=S; end;
     if (CA=5)and(CA=SelPanel) then  begin Panel5.Visible:=True;  Panel5.Caption:=S; end;
     if (CA=6)and(CA=SelPanel) then  begin Panel6.Visible:=True;  Panel6.Caption:=S; end;
     if (CA=7)and(CA=SelPanel) then  begin Panel7.Visible:=True;  Panel7.Caption:=S; end;
     if (CA=8)and(CA=SelPanel) then  begin Panel8.Visible:=True;  Panel8.Caption:=S; end;
     if (CA=9)and(CA=SelPanel) then  begin Panel9.Visible:=True;  Panel9.Caption:=S; end;
     if (CA=10)and(CA=SelPanel) then begin Panel10.Visible:=True; Panel10.Caption:=S; end;
     if (CA=11)and(CA=SelPanel) then begin Panel11.Visible:=True; Panel11.Caption:=S; end;
     if (CA=12)and(CA=SelPanel) then begin Panel12.Visible:=True; Panel12.Caption:=S; end;
     if (CA=13)and(CA=SelPanel) then begin Panel13.Visible:=True; Panel13.Caption:=S; end;
     if (CA=14)and(CA=SelPanel) then begin Panel14.Visible:=True; Panel14.Caption:=S; end;
     if (CA=15)and(CA=SelPanel) then begin Panel15.Visible:=True; Panel15.Caption:=S; end;
     if (CA=16)and(CA=SelPanel) then begin Panel16.Visible:=True; Panel16.Caption:=S; end;
     if (CA=17)and(CA=SelPanel) then begin Panel17.Visible:=True; Panel17.Caption:=S; end;
     if (CA=18)and(CA=SelPanel) then begin Panel18.Visible:=True; Panel18.Caption:=S; end;
     if (CA=19)and(CA=SelPanel) then begin Panel19.Visible:=True; Panel19.Caption:=S; end;
     if (CA=20)and(CA=SelPanel) then begin Panel20.Visible:=True; Panel20.Caption:=S; end;
     if (CA=21)and(CA=SelPanel) then begin Panel21.Visible:=True; Panel21.Caption:=S; end;
     if (CA=22)and(CA=SelPanel) then begin Panel22.Visible:=True; Panel22.Caption:=S; end;
     if (CA=23)and(CA=SelPanel) then begin Panel23.Visible:=True; Panel23.Caption:=S; end;
     CA:=CA+1;
    end;
end;

procedure TForm1.EventUstr();
var
 CA : Byte;
 S : String;
begin
 CA:=1;
 while(CA<CUstr)do
  begin
   PAByte:=Addr(Ustr[CA].Adr);
   Adr1:=PByteArray(PAByte)[0];
   Adr2:=PByteArray(PAByte)[1];
   Adr3:=PByteArray(PAByte)[2];
   Adr4:=PByteArray(PAByte)[3];
   S:=Ustr[CA].Name;
   if Ustr[CA].Name='' then S:=IntToStr(Adr1)+'.'+IntToStr(Adr2)+'.'+IntToStr(Adr3)+'.'+IntToStr(Adr4);
   if CA=1 then
    begin
     Panel1.Visible:=True; Panel24.Visible:=True; Form4.Label1.Visible:=True; Form4.Label24.Visible:=True;
     Panel1.Caption:=S; Form4.Label1.Caption:=S; Form4.Label24.Caption:='0%';
    end;
   if CA=2 then
    begin
     Panel2.Visible:=True; Panel25.Visible:=True; Form4.Label2.Visible:=True; Form4.Label25.Visible:=True;
     Panel2.Caption:=S; Form4.Label2.Caption:=S; Form4.Label25.Caption:='0%';
    end;
   if CA=3 then
    begin
     Panel3.Visible:=True; Panel26.Visible:=True; Form4.Label3.Visible:=True; Form4.Label26.Visible:=True;
     Panel3.Caption:=S; Form4.Label3.Caption:=S; Form4.Label26.Caption:='0%';
    end;
   if CA=4 then
    begin
     Panel4.Visible:=True; Panel27.Visible:=True; Form4.Label4.Visible:=True; Form4.Label27.Visible:=True;
     Panel4.Caption:=S; Form4.Label4.Caption:=S; Form4.Label27.Caption:='0%';
    end;
   if CA=5 then
    begin
     Panel5.Visible:=True; Panel28.Visible:=True; Form4.Label5.Visible:=True; Form4.Label28.Visible:=True;
     Panel5.Caption:=S; Form4.Label5.Caption:=S; Form4.Label28.Caption:='0%';
    end;
   if CA=6 then
    begin
     Panel6.Visible:=True; Panel29.Visible:=True; Form4.Label6.Visible:=True; Form4.Label29.Visible:=True;
     Panel6.Caption:=S; Form4.Label6.Caption:=S; Form4.Label29.Caption:='0%';
    end;
   if CA=7 then
    begin
     Panel7.Visible:=True; Panel30.Visible:=True; Form4.Label7.Visible:=True; Form4.Label30.Visible:=True;
     Panel7.Caption:=S; Form4.Label7.Caption:=S; Form4.Label30.Caption:='0%';
    end;
   if CA=8 then
    begin
     Panel8.Visible:=True; Panel31.Visible:=True; Form4.Label8.Visible:=True; Form4.Label31.Visible:=True;
     Panel8.Caption:=S; Form4.Label8.Caption:=S; Form4.Label31.Caption:='0%';
    end;
   if CA=9 then
    begin
     Panel9.Visible:=True; Panel32.Visible:=True; Form4.Label9.Visible:=True; Form4.Label32.Visible:=True;
     Panel9.Caption:=S; Form4.Label9.Caption:=S; Form4.Label32.Caption:='0%';
    end;
   if CA=10 then
    begin
     Panel10.Visible:=True; Panel33.Visible:=True; Form4.Label10.Visible:=True; Form4.Label33.Visible:=True;
     Panel10.Caption:=S; Form4.Label10.Caption:=S; Form4.Label33.Caption:='0%';
    end;
   if CA=11 then
    begin
     Panel11.Visible:=True; Panel34.Visible:=True; Form4.Label11.Visible:=True; Form4.Label34.Visible:=True;
     Panel11.Caption:=S; Form4.Label11.Caption:=S; Form4.Label34.Caption:='0%';
    end;
   if CA=12 then
    begin
     Panel12.Visible:=True; Panel35.Visible:=True; Form4.Label12.Visible:=True; Form4.Label35.Visible:=True;
     Panel12.Caption:=S; Form4.Label12.Caption:=S; Form4.Label35.Caption:='0%';
    end;
   if CA=13 then
    begin
     Panel13.Visible:=True; Panel36.Visible:=True; Form4.Label13.Visible:=True; Form4.Label36.Visible:=True;
     Panel13.Caption:=S; Form4.Label13.Caption:=S; Form4.Label36.Caption:='0%';
    end;
   if CA=14 then
    begin
     Panel14.Visible:=True; Panel37.Visible:=True; Form4.Label14.Visible:=True; Form4.Label37.Visible:=True;
     Panel14.Caption:=S; Form4.Label14.Caption:=S; Form4.Label37.Caption:='0%';
    end;
   if CA=15 then
    begin
     Panel15.Visible:=True; Panel38.Visible:=True; Form4.Label15.Visible:=True; Form4.Label38.Visible:=True;
     Panel15.Caption:=S; Form4.Label15.Caption:=S; Form4.Label38.Caption:='0%';
    end;
   if CA=16 then
    begin
     Panel16.Visible:=True; Panel39.Visible:=True; Form4.Label16.Visible:=True; Form4.Label39.Visible:=True;
     Panel16.Caption:=S; Form4.Label16.Caption:=S; Form4.Label39.Caption:='0%';
    end;
   if CA=17 then
    begin
     Panel17.Visible:=True; Panel40.Visible:=True; Form4.Label17.Visible:=True; Form4.Label40.Visible:=True;
     Panel17.Caption:=S; Form4.Label17.Caption:=S; Form4.Label40.Caption:='0%';
    end;
   if CA=18 then
    begin
     Panel18.Visible:=True; Panel41.Visible:=True; Form4.Label18.Visible:=True; Form4.Label41.Visible:=True;
     Panel18.Caption:=S; Form4.Label18.Caption:=S; Form4.Label41.Caption:='0%';
    end;
   if CA=19 then
    begin
     Panel19.Visible:=True; Panel42.Visible:=True; Form4.Label19.Visible:=True; Form4.Label42.Visible:=True;
     Panel19.Caption:=S; Form4.Label19.Caption:=S; Form4.Label42.Caption:='0%';
    end;
   if CA=20 then
    begin
     Panel20.Visible:=True; Panel43.Visible:=True; Form4.Label20.Visible:=True; Form4.Label43.Visible:=True;
     Panel20.Caption:=S; Form4.Label20.Caption:=S; Form4.Label43.Caption:='0%';
    end;
   if CA=21 then
    begin
     Panel21.Visible:=True; Panel44.Visible:=True; Form4.Label21.Visible:=True; Form4.Label44.Visible:=True;
     Panel21.Caption:=S; Form4.Label21.Caption:=S; Form4.Label44.Caption:='0%';
    end;
   if CA=22 then
    begin
     Panel22.Visible:=True; Panel45.Visible:=True; Form4.Label22.Visible:=True; Form4.Label45.Visible:=True;
     Panel22.Caption:=S; Form4.Label22.Caption:=S; Form4.Label45.Caption:='0%';
    end;
   if CA=23 then
    begin
     Panel23.Visible:=True; Panel46.Visible:=True; Form4.Label23.Visible:=True; Form4.Label46.Visible:=True;
     Panel23.Caption:=S; Form4.Label23.Caption:=S; Form4.Label46.Caption:='0%';
    end;
   CA:=CA+1;
  end;
end;


procedure TForm1.OutTable();
var
 CA : Word;
 XLin1, XLin2, XLin3 : SmallInt;
 MnSPM : Word;
 DltSPM : SmallInt;
 XADC : Word;
 SkSPM, NStep, XB : Byte;
 SS : String;
begin
 PByt:=Addr(Ustr[NumPanel].AdrPrm^);
 CA:=PosDat;
 XB:=Ustr[NumPanel].CDat;
 if ((PosDat+15)>=XB)and(XB>=15)and(EnPosKor=1) then
  begin
   PosDat:=XB-14;
   CA:=PosDat;
  end;
 PAByt^:=PAByt^+16*CA;
 PosOut:=1;
 while(CA<(PosDat+16))do
  begin
   PASmi^:=PAByt^+0; XLin1:=PSmi^;
   PASmi^:=PAByt^+2; XLin2:=PSmi^;
   PASmi^:=PAByt^+4; XLin3:=PSmi^;
   PASmi^:=PAByt^+6; DltSPM:=PSmi^;
   PAWrd^:=PAByt^+8; //XADC:=PWrd^;
   if Ustr[NumPanel].D4060=1 then XADC:=Trunc(0.700875*PWrd^); //--- Для клапана d40
   if Ustr[NumPanel].D4060=2 then XADC:=Trunc(0.467250*PWrd^); //--- Для клапана d60
   PAWrd^:=PAByt^+10; MnSPM:=PWrd^;
   PADat^:=PAByt^+12; SkSPM:=PDat^;
   PADat^:=PAByt^+13; NStep:=PDat^;
   if (60*MnSPM+SkSPM)>=1 then
    begin
     if MnSPM<=9 then SS:='0'+IntToStr(MnSPM) else SS:=IntToStr(MnSPM);
     SS:=SS+':';
     if SkSPM<=9 then SS:=SS+'0'+IntToStr(SkSPM) else SS:=SS+IntToStr(SkSPM);
     StringGrid1.Cells[0,PosOut]:=IntToStr(NStep);
     StringGrid1.Cells[1,PosOut]:=SS;
     StringGrid1.Cells[2,PosOut]:=FloatToStrF(0.001*XADC,ffGeneral,6,3);
     StringGrid1.Cells[3,PosOut]:=IntToStr(XLin1);
     StringGrid1.Cells[4,PosOut]:=IntToStr(XLin2);
     StringGrid1.Cells[5,PosOut]:=IntToStr(XLin3);
     if DltSPM=$0FFF then StringGrid1.Cells[6,PosOut]:='- - -'
                      else StringGrid1.Cells[6,PosOut]:=IntToStr(DltSPM);
    end else
    begin
     StringGrid1.Cells[0,PosOut]:='- - -';
     StringGrid1.Cells[1,PosOut]:='- - -';
     StringGrid1.Cells[2,PosOut]:='- - -';
     StringGrid1.Cells[3,PosOut]:='- - -';
     StringGrid1.Cells[4,PosOut]:='- - -';
     StringGrid1.Cells[5,PosOut]:='- - -';
     StringGrid1.Cells[6,PosOut]:='- - -';
    end;
   PAByt^:=PAByt^+16;
   PosOut:=PosOut+1;
   CA:=CA+1;
  end;
 EnPosKor:=1;
end;

procedure TForm1.OutGrafik();
var
 CA : Word;
 YY : SmallInt;
 NumStep : Byte;
 Colr : LongWord;
begin
 Series1.Clear;
 Series1.LinePen.Width:=3;
 Form3.Series1.Clear;
 PByt:=Addr(Ustr[NumPanel].AdrPrm^);
 CA:=0; Colr:=$FF8080;
 while(CA<Ustr[NumPanel].CDat)do
  begin
   PADat^:=PAByt^+13; NumStep:=PDat^;
   PASmi^:=PAByt^+4; YY:=PSmi^;
   if NumStep=1 then Colr:=$FF2020;
   if NumStep=2 then Colr:=$20C020;
   if NumStep=3 then Colr:=$2020FF;
   if NumStep=4 then Colr:=$FF8080;
   if NumStep=5 then Colr:=$00C080;
   if NumStep=6 then Colr:=$8080FF;
   if NumStep=7 then Colr:=$C0C000;
   if NumStep=8 then Colr:=$40FF40;
   if NumStep=9 then Colr:=$FF4040;
   if NumStep>=10 then Colr:=$FF8040;
   Series1.AddXY(CA,YY,'',Colr);
   Form3.Series1.AddXY(CA,YY,'',Colr);
   PAByt^:=PAByt^+16;
   CA:=CA+1;
  end;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
begin
 EnSysLog:=0;
 if CheckBox1.Checked then EnSysLog:=1;
end;

procedure TForm1.Panel47Click(Sender: TObject);
var
 S : String;
 FileCheck, XB : Byte;
 BufTxt : PChar;
 CA, Temp,  LenS : Integer;
 Buf : Pointer;
begin
 if (Ustr[NumPanel].Rejm=3)or(Ustr[NumPanel].Rejm=4) then
  begin
   MessageBox(Handle, '                      Невозможно  начать  испытание.'+#13+#10+
                      ' Вы  должны  предварительно  проверить  соответствие'+#13+#10+
                      ' установленных  команд  для  выбранного  устройства.', 'Предупреждение', MB_ICONWARNING);//MB_ICONHAND);
   Label22.Visible:=False;
   BufTemp[0]:=$42;
   WriteBufKom($01, Ustr[NumPanel].Adr, $01);
   PageControl1.ActivePageIndex:=3;
  end;
 if Ustr[NumPanel].Rejm=5 then
  begin
//   EnWork:=0;
//   if BaseFolder='' then
//    begin
//     MessageBox(Handle, 'Невозможно  начать  испытание.'+#13+#10+
//                        '  Рабочая папка не определена.', 'Предупреждение', MB_ICONWARNING);//MB_ICONHAND);
//    end else
//    begin
//     if Ustr[NumPanel].WorkDir='' then
//      begin
//       WorkFolder:=BaseFolder+'\'+Ustr[NumPanel].Name+'_'+SDat;
//       S:='Папка для сохранения результатов испытаний не определена'+#13+#10+
//          '            результаты испытаний будут сохранены в папку'+#13+#10+#13+#10+WorkFolder;
//       Buf:=Addr(S[1]);
//       EnWork:=MessageBox(Handle, Buf, 'Предупреждение', MB_YESNO);
//       if EnWork=6 then
//        begin
//         {$I-}
//         MkDir(WorkFolder);
//         MkDir(WorkFolder+'\Dat');
//         {$I+}
//         Ustr[NumPanel].WorkDir:=WorkFolder;
//         EnWork:=1;
//        end;
//      end else
//      begin
//       EnWork:=1;
//      end;
 //    if Ustr[NumPanel].EnWork=0 then
 //     begin
 //      TipDir:=3;
 //      Form2.Show;
 //     end;
 //   end;

   if Ustr[NumPanel].EnWork=1 then
    begin
     {$I-}
     S:=Ustr[NumPanel].WorkDir;
     S:=S+'\'+'Dat\'+Ustr[NumPanel].Name+'_'+SDat+'_'+STim+'.dat';
     AssignFile(Ustr[NumPanel].FDat,S);
     ReWrite(Ustr[NumPanel].FDat);
     Temp:=IOResult;
     S:=Ustr[NumPanel].WorkDir;
     S:=S+'\Otchet_'+Ustr[NumPanel].Name+'_'+SDat+'_'+STim+'.txt';
     AssignFile(Ustr[NumPanel].FBlank,S);
     ReWrite(Ustr[NumPanel].FBlank);
     Temp:=IOResult;
     {$I+}
     if Temp=0 then Ustr[NumPanel].EnWrite:=1;
     if Temp=123 then
      begin
       MessageBox(Handle, 'Указанная папка не существует'+#13+#10+
                          'определите рабочую папку', 'Ошибка', MB_ICONHAND);
      end;
     if Ustr[NumPanel].EnWrite=1 then
      begin
       Ustr[NumPanel].Rejm:=6;
       Ustr[NumPanel].CDat:=0;
       Ustr[NumPanel].FixStep:=0;
       Ustr[NumPanel].FixDat:=0;
       Ustr[NumPanel].RezStep:=0;
       Ustr[NumPanel].RezDat:=0;
       PByt:=Addr(Ustr[NumPanel].AdrPrm^);
       CA:=0;
       while(CA<=65535)do
        begin
         PByt^:=0; Inc(PByt);
         CA:=CA+1;
        end;
       Button4.Visible:=False;
       BufTemp[0]:=$43;
       WriteBufKom($01, Ustr[NumPanel].Adr, $01);
       Panel47.Visible:=False;
       Panel48.Visible:=True;
       UstrAlarm();
       PAByte:=Addr(DNow);
       XB:=PByteArray(PAByte)[0]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[1]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[2]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[3]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[4]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[5]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[6]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=PByteArray(PAByte)[7]; Write(Ustr[NumPanel].FBlank, XB);
       XB:=$0D; Write(Ustr[NumPanel].FBlank, XB);
       XB:=$0A; Write(Ustr[NumPanel].FBlank, XB);
       FLine:='  дата      время    №ст   Tст     Pгр(Мпа) ИЧ1(мк)  ИЧ2(мк)  LinS(мк) Delta(мк) '+#13+#10;
       Buf:=Addr(FLine[1]);
       LenS:=Length(FLine);
       CA:=0;
       while(CA<LenS)do
        begin
         XB:=PByteArray(Buf)[CA];
         Write(Ustr[NumPanel].FBlank, XB);
         CA:=CA+1;
        end;
       DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
       PageControl1.ActivePageIndex:=0;
      end;
    end;
  end;
end;

procedure TForm1.Panel48Click(Sender: TObject);
begin
 if Ustr[NumPanel].Rejm=6 then
  begin
   Ustr[NumPanel].Rejm:=7;
   DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
//   Ustr[NumPanel].EnWork:=0;
//   if Ustr[NumPanel].EnWrite=1 then
//    begin
//     CloseFile(Ustr[NumPanel].FDat);
//     CloseFile(Ustr[NumPanel].FBlank);
//     Ustr[NumPanel].EnWrite:=0;
//    end;
//   UstrAlarm();
   BufTemp[0]:=$44;
   WriteBufKom($01, Ustr[NumPanel].Adr, $01);
//   Panel47.Visible:=True;
//   Panel48.Visible:=False;
   PageControl1.ActivePageIndex:=0;
//   RepaintPanel(NumPanel);
  end;
end;

procedure TForm1.Button1Click(Sender: TObject);
var
 CA, CB, CC, XI : Word;
 Exit : Byte;
 AdrBuf : PByte;
begin
 if Ustr[NumPanel].EditUpr=1 then
  begin
   Ustr[NumPanel].EditUpr:=0; WaitStart:=1;
   if StatPanel[NumPanel]=3 then
    begin
     Form4.PaintClear(NumPanel);
     if RadioButton1.Checked then Ustr[NumPanel].D4060:=1;
     if RadioButton2.Checked then Ustr[NumPanel].D4060:=2;
     Exit:=0; CB:=0; CC:=0;
     while(Exit=0)do
      begin
       if Ustr[NumPanel].TTT[CB]>=1 then
        begin
         if Ustr[NumPanel].D4060=1 then XI:=Trunc(Ustr[NumPanel].PPP[CB]/0.700875);  //--- Для клапана d40
         if Ustr[NumPanel].D4060=2 then XI:=Trunc(Ustr[NumPanel].PPP[CB]/0.467250);  //--- Для клапана d60
//         XI:=Floor(Ustr[NumPanel].PPP[CB]/1);
         AdrBuf:=Addr(XI);
         BufTemp[CC]:=AdrBuf^; Inc(AdrBuf); CC:=CC+1;
         BufTemp[CC]:=AdrBuf^; Inc(AdrBuf); CC:=CC+1;
         AdrBuf:=Addr(Ustr[NumPanel].TTT[CB]);
         BufTemp[CC]:=AdrBuf^; Inc(AdrBuf); CC:=CC+1;
         BufTemp[CC]:=AdrBuf^; Inc(AdrBuf); CC:=CC+1;
         Form4.PaintStep(CB,NumPanel,1);
        end else
        begin
         Exit:=1;
        end;
       if Exit=0 then CB:=CB+1;
      end;
     Ustr[NumPanel].Rejm:=4;
     WriteBufKom($03, Ustr[NumPanel].Adr, 4*CB);
     Ustr[NumPanel].MaxStep:=CB;
     DublStat[NumPanel]:=$0190 or DublStat[NumPanel];
     StatPanel[NumPanel]:=1;
     RepaintPanel(NumPanel);
    end;
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
 CA : Byte;
begin
 Ustr[NumPanel].EditUpr:=0;
 Ustr[NumPanel].Rejm:=BackRejm;
 DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
// Label12.Visible:=False;
// Label13.Visible:=False;
// Label14.Visible:=False;
// PaintBox1.Visible:=False;
// Button1.Visible:=False; Button1.Enabled:=True;
// Button2.Visible:=False;
// Button3.Visible:=True;
// Edit1.Visible:=False;
// ComboBox1.Visible:=False;
// GroupBox2.Height:=81;
// GroupBox3.Visible:=True;
// PageControl1.ActivePageIndex:=4;
 CA:=1;
 while(CA<=23)do
  begin
   StatPanel[CA]:=1;
   CA:=CA+1;
  end;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
 Flag : byte;
begin
 if Ustr[NumPanel].EnWork=0 then
  begin
   Flag:=1;
   if BaseFolder='' then
    begin
     MessageBox(Handle, 'Невозможно  определить размещение отчётной папки.'+#13+#10+
                        '                     Рабочая папка не определена.', 'Предупреждение', MB_ICONWARNING);//MB_ICONHAND);
     Flag:=0;
    end else
    begin
     if DirectoryExists(BaseFolder)=False then
      begin
       BaseFolder:='';
       MessageBox(Handle, 'Невозможно  определить размещение отчётной папки.'+#13+#10+
                          '                     Рабочая папка не определена.', 'Предупреждение', MB_ICONWARNING);//MB_ICONHAND);
       Flag:=0;
      end;
    end;
   if Flag=1 then
    begin
     TipDir:=3;
     Form2.Show;
    end;
  end else
  begin
   BackRejm:=Ustr[NumPanel].Rejm;
   Ustr[NumPanel].Rejm:=3;
   Ustr[NumPanel].EditUpr:=1;
   RepaintPanel(NumPanel);
   DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
  end;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
 if Ustr[NumPanel].Rejm=4 then
  begin
   Ustr[NumPanel].Rejm:=5;
   PageControl1.ActivePageIndex:=0;
   RepaintPanel(NumPanel);
   DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
  end else
  begin
   if Ustr[NumPanel].Rejm=5 then
    begin
     BackRejm:=Ustr[NumPanel].Rejm;
     Ustr[NumPanel].Rejm:=3;
     Ustr[NumPanel].EditUpr:=1;
     RepaintPanel(NumPanel);
     DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
    end;
  end;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
 Memo1.Clear();
end;

procedure TForm1.PaintBox1Click(Sender: TObject);
begin
 if Ustr[NumPanel].Rejm<=5 then
  begin
   BackRejm:=Ustr[NumPanel].Rejm;
   Ustr[NumPanel].Rejm:=3;
   Ustr[NumPanel].EditUpr:=1;
   RepaintPanel(NumPanel);
   DublStat[NumPanel]:=$0100 or DublStat[NumPanel];
  end;
end;

procedure TForm1.ViewEditAlg();
var
 CA : Byte;
begin
 if Ustr[NumPanel].EditUpr=0 then
  begin
   PaintBox2.Width:=0; PaintBox2.Height:=0;
   PaintBox2.Visible:=False;
   Button1.Visible:=False;
   Button2.Visible:=False;
   Label12.Visible:=False;
   Label13.Visible:=False;
   Label14.Visible:=False;
   GroupBox2.Height:=89;
   GroupBox3.Visible:=True;
   GroupBox4.Visible:=False;
   ComBoBox1.Visible:=False;
   if Ustr[NumPanel].D4060=1 then Label30.Caption:='S кольца : d40';
   if Ustr[NumPanel].D4060=2 then Label30.Caption:='S кольца : d60';
  end else
  begin
   PaintBox2.Width:=WinX; PaintBox2.Height:=WinY;
   PaintBox2.Visible:=True;
   Button1.Caption:='Да, Загрузить';
   Button1.Visible:=True;
   Button2.Visible:=True;
   Label12.Top:=522; Label12.Left:=32; Label12.Visible:=True;
   Label13.Top:=542; Label13.Left:=72; Label13.Visible:=True;
   Label14.Top:=562; Label14.Left:=72; Label14.Visible:=True;
   GroupBox2.Height:=665;
   GroupBox3.Visible:=False;
   GroupBox4.Visible:=True;
   ComBoBox1.ItemIndex:=0;
   ComboBox1.Text:='Обнаружено сформированных алгоритмов испытаний: '+IntToStr(CntALG);
   ComBoBox1.Visible:=True;
   CA:=1; EnUstr:=0;
   while(CA<=20)do
    begin
     if StatPanel[CA]=3 then EnUstr:=1;
     CA:=CA+1;
    end;
   if EnUstr=0 then
    begin
     Label14.Left:=108;
     Label14.Caption:='Ни одно из устройств не выбрано.';
     Button1.Enabled:=False;
    end else
    begin
     Label14.Left:=76;
     Label14.Caption:='Вы подтверждаете выполнение операции?';
     Button1.Enabled:=True;
    end;
   PosMark:=0;
   PaintTableUpr();
  end;
 Application.ProcessMessages;
 BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm1.Edit1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
 S : String;
begin
 if ((Key>=$30)and(Key<=$39))or((Key<=$2C)) then S:=S+Chr(Key);
 if Key=191 then begin Key:=110; S:=S+Chr(Key); Edit1.Text:=S; end;
 if Key=13 then
  begin
   S:=Edit1.Text;
   if Length(S)>=1 then
    begin
     if PCurX=0 then Ustr[NumPanel].PPP[PCurY]:=Floor(1000*StrToFloat(S));
     if PCurX=1 then Ustr[NumPanel].TTT[PCurY]:=StrToInt(S);
    end;
   Edit1.Text:='';
   Edit1.Visible:=False;
  end;
 if Key=27 then
  begin
   Edit1.Text:='';
   Edit1.Visible:=False;
  end;
 PosMark:=0;
 PaintTableUpr();
 BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
end;

procedure TForm1.PaintBox2Click(Sender: TObject);
var
 MXY : TPoint;
 XX, YY : SmallInt;
 S : String;
begin
 GetCursorPos(MXY);
 XX:=MXY.X-Form1.Left-356; if XX<0 then XX:=0;
 YY:=MXY.Y-Form1.Top-250;  if YY<0 then YY:=0;
 if EditPrm=1 then
  begin
   EditPrm:=0;
   S:=Edit1.Text;
   if Length(S)>=1 then
    begin
     if PCurX=0 then Ustr[NumPanel].PPP[PCurY]:=Floor(1000*StrToFloat(S));
     if PCurX=1 then Ustr[NumPanel].TTT[PCurY]:=StrToInt(S);
    end;
   Edit1.Text:='';
   Edit1.Visible:=False;
   PosMark:=0;
   PaintTableUpr();
   BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
  end;
 if EditPrm=0 then
  begin
   EditPrm:=1;
   Edit1.Visible:=False;
   PCurX:=Floor(XX/160);
   PCurY:=Floor(YY/32);
   PosMark:=PCurY+4;
   PaintTableUpr();
   BitBlt(PaintBox2.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
   if PCurX=0 then Edit1.Color:=$E0E0F0;
   if PCurX=1 then Edit1.Color:=$E0F0F0;
   Edit1.Top:=198+32*PCurY;
   Edit1.Left:=186+160*PCurX;
   Edit1.Visible:=True;
   Edit1.SetFocus;
  end;
end;

procedure TForm1.UstrAlarm();
begin
 if Ustr[1].Rejm=6 then Panel24.Color:=$E0F0E0 else Panel24.Color:=clBtnFace;
 if Ustr[2].Rejm=6 then Panel25.Color:=$E0F0E0 else Panel25.Color:=clBtnFace;
 if Ustr[3].Rejm=6 then Panel26.Color:=$E0F0E0 else Panel26.Color:=clBtnFace;
 if Ustr[4].Rejm=6 then Panel27.Color:=$E0F0E0 else Panel27.Color:=clBtnFace;
 if Ustr[5].Rejm=6 then Panel28.Color:=$E0F0E0 else Panel28.Color:=clBtnFace;
 if Ustr[6].Rejm=6 then Panel29.Color:=$E0F0E0 else Panel29.Color:=clBtnFace;
 if Ustr[7].Rejm=6 then Panel30.Color:=$E0F0E0 else Panel30.Color:=clBtnFace;
 if Ustr[8].Rejm=6 then Panel31.Color:=$E0F0E0 else Panel31.Color:=clBtnFace;
 if Ustr[9].Rejm=6 then Panel32.Color:=$E0F0E0 else Panel32.Color:=clBtnFace;
 if Ustr[10].Rejm=6 then Panel33.Color:=$E0F0E0 else Panel33.Color:=clBtnFace;
 if Ustr[11].Rejm=6 then Panel34.Color:=$E0F0E0 else Panel34.Color:=clBtnFace;
 if Ustr[12].Rejm=6 then Panel35.Color:=$E0F0E0 else Panel35.Color:=clBtnFace;
 if Ustr[13].Rejm=6 then Panel36.Color:=$E0F0E0 else Panel36.Color:=clBtnFace;
 if Ustr[14].Rejm=6 then Panel37.Color:=$E0F0E0 else Panel37.Color:=clBtnFace;
 if Ustr[15].Rejm=6 then Panel38.Color:=$E0F0E0 else Panel38.Color:=clBtnFace;
 if Ustr[16].Rejm=6 then Panel39.Color:=$E0F0E0 else Panel39.Color:=clBtnFace;
 if Ustr[17].Rejm=6 then Panel40.Color:=$E0F0E0 else Panel40.Color:=clBtnFace;
 if Ustr[18].Rejm=6 then Panel41.Color:=$E0F0E0 else Panel41.Color:=clBtnFace;
 if Ustr[19].Rejm=6 then Panel42.Color:=$E0F0E0 else Panel42.Color:=clBtnFace;
 if Ustr[20].Rejm=6 then Panel43.Color:=$E0F0E0 else Panel43.Color:=clBtnFace;
 if Ustr[21].Rejm=6 then Panel44.Color:=$E0F0E0 else Panel44.Color:=clBtnFace;
 if Ustr[22].Rejm=6 then Panel45.Color:=$E0F0E0 else Panel45.Color:=clBtnFace;
 if Ustr[23].Rejm=6 then Panel46.Color:=$E0F0E0 else Panel46.Color:=clBtnFace;
end;

procedure TForm1.AlarmConnect(Indx : Byte);
begin
 if (Indx=1)then
  begin
   if Ustr[1].Alarm=0 then Panel1.Color:=clBtnFace;
   if Ustr[1].Alarm=1 then Panel1.Color:=$A0A0F0;
   if Ustr[1].Alarm=2 then begin Panel1.Visible:=False; Panel24.Visible:=False end;
  end;
 if (Indx=2)then
  begin
   if Ustr[2].Alarm=0 then Panel2.Color:=clBtnFace;
   if Ustr[2].Alarm=1 then Panel2.Color:=$A0A0F0;
   if Ustr[2].Alarm=2 then begin Panel2.Visible:=False; Panel25.Visible:=False end;
  end;
 if (Indx=3)then
  begin
   if Ustr[3].Alarm=0 then Panel3.Color:=clBtnFace;
   if Ustr[3].Alarm=1 then Panel3.Color:=$A0A0F0;
   if Ustr[3].Alarm=2 then begin Panel3.Visible:=False; Panel26.Visible:=False end;
  end;
 if (Indx=4)then
  begin
   if Ustr[4].Alarm=0 then Panel4.Color:=clBtnFace;
   if Ustr[4].Alarm=1 then Panel4.Color:=$A0A0F0;
   if Ustr[4].Alarm=2 then begin Panel4.Visible:=False; Panel27.Visible:=False end;
  end;
 if (Indx=5)then
  begin
   if Ustr[5].Alarm=0 then Panel5.Color:=clBtnFace;
   if Ustr[5].Alarm=1 then Panel5.Color:=$A0A0F0;
   if Ustr[5].Alarm=2 then begin Panel5.Visible:=False; Panel28.Visible:=False end;
  end;
 if (Indx=6)then
  begin
   if Ustr[6].Alarm=0 then Panel6.Color:=clBtnFace;
   if Ustr[6].Alarm=1 then Panel6.Color:=$A0A0F0;
   if Ustr[6].Alarm=2 then begin Panel6.Visible:=False; Panel29.Visible:=False end;
  end;
 if (Indx=7)then
  begin
   if Ustr[7].Alarm=0 then Panel7.Color:=clBtnFace;
   if Ustr[7].Alarm=1 then Panel7.Color:=$A0A0F0;
   if Ustr[7].Alarm=2 then begin Panel7.Visible:=False; Panel30.Visible:=False end;
  end;
 if (Indx=8)then
  begin
   if Ustr[8].Alarm=0 then Panel8.Color:=clBtnFace;
   if Ustr[8].Alarm=1 then Panel8.Color:=$A0A0F0;
   if Ustr[8].Alarm=2 then begin Panel8.Visible:=False; Panel31.Visible:=False end;
  end;
 if (Indx=9)then
  begin
   if Ustr[9].Alarm=0 then Panel9.Color:=clBtnFace;
   if Ustr[9].Alarm=1 then Panel9.Color:=$A0A0F0;
   if Ustr[9].Alarm=2 then begin Panel9.Visible:=False; Panel32.Visible:=False end;
  end;
 if (Indx=10) then
  begin
   if Ustr[10].Alarm=0 then Panel10.Color:=clBtnFace;
   if Ustr[10].Alarm=1 then Panel10.Color:=$A0A0F0;
   if Ustr[10].Alarm=2 then begin Panel10.Visible:=False; Panel33.Visible:=False end;
  end;
 if (Indx=11)then
  begin
   if Ustr[11].Alarm=0 then Panel11.Color:=clBtnFace;
   if Ustr[11].Alarm=1 then Panel11.Color:=$A0A0F0;
   if Ustr[11].Alarm=2 then begin Panel11.Visible:=False; Panel34.Visible:=False end;
  end;
 if (Indx=12)then
  begin
   if Ustr[12].Alarm=0 then Panel12.Color:=clBtnFace;
   if Ustr[12].Alarm=1 then Panel12.Color:=$A0A0F0;
   if Ustr[12].Alarm=2 then begin Panel12.Visible:=False; Panel35.Visible:=False end;
  end;
 if (Indx=13)then
  begin
   if Ustr[13].Alarm=0 then Panel13.Color:=clBtnFace;
   if Ustr[13].Alarm=1 then Panel13.Color:=$A0A0F0;
   if Ustr[13].Alarm=2 then begin Panel13.Visible:=False; Panel36.Visible:=False end;
  end;
 if (Indx=14)then
  begin
   if Ustr[14].Alarm=0 then Panel14.Color:=clBtnFace;
   if Ustr[14].Alarm=1 then Panel14.Color:=$A0A0F0;
   if Ustr[14].Alarm=2 then begin Panel14.Visible:=False; Panel37.Visible:=False end;
  end;
 if (Indx=15)then
  begin
   if Ustr[15].Alarm=0 then Panel15.Color:=clBtnFace;
   if Ustr[15].Alarm=1 then Panel15.Color:=$A0A0F0;
   if Ustr[15].Alarm=2 then begin Panel15.Visible:=False; Panel38.Visible:=False end;
  end;
 if (Indx=16)then
  begin
   if Ustr[16].Alarm=0 then Panel16.Color:=clBtnFace;
   if Ustr[16].Alarm=1 then Panel16.Color:=$A0A0F0;
   if Ustr[16].Alarm=2 then begin Panel16.Visible:=False; Panel39.Visible:=False end;
  end;
 if (Indx=17)then
  begin
   if Ustr[17].Alarm=0 then Panel17.Color:=clBtnFace;
   if Ustr[17].Alarm=1 then Panel17.Color:=$A0A0F0;
   if Ustr[17].Alarm=2 then begin Panel17.Visible:=False; Panel40.Visible:=False end;
  end;
 if (Indx=18)then
  begin
   if Ustr[18].Alarm=0 then Panel18.Color:=clBtnFace;
   if Ustr[18].Alarm=1 then Panel18.Color:=$A0A0F0;
   if Ustr[18].Alarm=2 then begin Panel18.Visible:=False; Panel41.Visible:=False end;
  end;
 if (Indx=19)then
  begin
   if Ustr[19].Alarm=0 then Panel19.Color:=clBtnFace;
   if Ustr[19].Alarm=1 then Panel19.Color:=$A0A0F0;
   if Ustr[19].Alarm=2 then begin Panel19.Visible:=False; Panel42.Visible:=False end;
  end;
 if (Indx=20)then
  begin
   if Ustr[20].Alarm=0 then Panel20.Color:=clBtnFace;
   if Ustr[20].Alarm=1 then Panel20.Color:=$A0A0F0;
   if Ustr[20].Alarm=2 then begin Panel20.Visible:=False; Panel43.Visible:=False end;
  end;
 if (Indx=21)then
  begin
   if Ustr[21].Alarm=0 then Panel21.Color:=clBtnFace;
   if Ustr[21].Alarm=1 then Panel21.Color:=$A0A0F0;
   if Ustr[21].Alarm=2 then begin Panel21.Visible:=False; Panel44.Visible:=False end;
  end;
 if (Indx=22)then
  begin
   if Ustr[22].Alarm=0 then Panel22.Color:=clBtnFace;
   if Ustr[22].Alarm=1 then Panel22.Color:=$A0A0F0;
   if Ustr[22].Alarm=2 then begin Panel22.Visible:=False; Panel45.Visible:=False end;
  end;
 if (Indx=23)then
  begin
   if Ustr[23].Alarm=0 then Panel23.Color:=clBtnFace;
   if Ustr[23].Alarm=1 then Panel23.Color:=$A0A0F0;
   if Ustr[23].Alarm=2 then begin Panel23.Visible:=False; Panel46.Visible:=False end;
  end;
end;

//-----------------------------------------------------------------------------


procedure TForm1.RepaintPanel(NumPanel : Byte);
var
 CA : Byte;
begin
 CA:=1; EnUstr:=0;
 while(CA<=23)do
  begin
   if CA=NumPanel then
    begin
     StatPanel[CA]:=StatPanel[CA]+1;
     if Ustr[CA].EditUpr=0 then
      begin
       if StatPanel[CA]>=3 then StatPanel[CA]:=2;
      end else
      begin
       if Ustr[CA].Rejm=3 then
        begin
         if StatPanel[CA]>=4 then StatPanel[CA]:=1;
        end else
        begin
         if StatPanel[CA]>=3 then StatPanel[CA]:=2;
        end;
      end;
    end else
    begin
     StatPanel[CA]:=1;
     if Ustr[CA].EditUpr=1 then begin Ustr[CA].EditUpr:=0; Ustr[CA].Rejm:=2; end;
    end;
   CA:=CA+1;
  end;
 if StatPanel[1]=1 then Panel1.Color:=clBtnFace;
 if StatPanel[1]=2 then Panel1.Color:=clSkyBlue;
 if StatPanel[1]=3 then Panel1.Color:=clMoneyGreen;
 if StatPanel[2]=1 then Panel2.Color:=clBtnFace;
 if StatPanel[2]=2 then Panel2.Color:=clSkyBlue;
 if StatPanel[2]=3 then Panel2.Color:=clMoneyGreen;
 if StatPanel[3]=1 then Panel3.Color:=clBtnFace;
 if StatPanel[3]=2 then Panel3.Color:=clSkyBlue;
 if StatPanel[3]=3 then Panel3.Color:=clMoneyGreen;
 if StatPanel[4]=1 then Panel4.Color:=clBtnFace;
 if StatPanel[4]=2 then Panel4.Color:=clSkyBlue;
 if StatPanel[4]=3 then Panel4.Color:=clMoneyGreen;
 if StatPanel[5]=1 then Panel5.Color:=clBtnFace;
 if StatPanel[5]=2 then Panel5.Color:=clSkyBlue;
 if StatPanel[5]=3 then Panel5.Color:=clMoneyGreen;
 if StatPanel[6]=1 then Panel6.Color:=clBtnFace;
 if StatPanel[6]=2 then Panel6.Color:=clSkyBlue;
 if StatPanel[6]=3 then Panel6.Color:=clMoneyGreen;
 if StatPanel[7]=1 then Panel7.Color:=clBtnFace;
 if StatPanel[7]=2 then Panel7.Color:=clSkyBlue;
 if StatPanel[7]=3 then Panel7.Color:=clMoneyGreen;
 if StatPanel[8]=1 then Panel8.Color:=clBtnFace;
 if StatPanel[8]=2 then Panel8.Color:=clSkyBlue;
 if StatPanel[8]=3 then Panel8.Color:=clMoneyGreen;
 if StatPanel[9]=1 then Panel9.Color:=clBtnFace;
 if StatPanel[9]=2 then Panel9.Color:=clSkyBlue;
 if StatPanel[9]=3 then Panel9.Color:=clMoneyGreen;
 if StatPanel[10]=1 then Panel10.Color:=clBtnFace;
 if StatPanel[10]=2 then Panel10.Color:=clSkyBlue;
 if StatPanel[10]=3 then Panel10.Color:=clMoneyGreen;
 if StatPanel[11]=1 then Panel11.Color:=clBtnFace;
 if StatPanel[11]=2 then Panel11.Color:=clSkyBlue;
 if StatPanel[11]=3 then Panel11.Color:=clMoneyGreen;
 if StatPanel[12]=1 then Panel12.Color:=clBtnFace;
 if StatPanel[12]=2 then Panel12.Color:=clSkyBlue;
 if StatPanel[12]=3 then Panel12.Color:=clMoneyGreen;
 if StatPanel[13]=1 then Panel13.Color:=clBtnFace;
 if StatPanel[13]=2 then Panel13.Color:=clSkyBlue;
 if StatPanel[13]=3 then Panel13.Color:=clMoneyGreen;
 if StatPanel[14]=1 then Panel14.Color:=clBtnFace;
 if StatPanel[14]=2 then Panel14.Color:=clSkyBlue;
 if StatPanel[14]=3 then Panel14.Color:=clMoneyGreen;
 if StatPanel[15]=1 then Panel15.Color:=clBtnFace;
 if StatPanel[15]=2 then Panel15.Color:=clSkyBlue;
 if StatPanel[15]=3 then Panel15.Color:=clMoneyGreen;
 if StatPanel[16]=1 then Panel16.Color:=clBtnFace;
 if StatPanel[16]=2 then Panel16.Color:=clSkyBlue;
 if StatPanel[16]=3 then Panel16.Color:=clMoneyGreen;
 if StatPanel[17]=1 then Panel17.Color:=clBtnFace;
 if StatPanel[17]=2 then Panel17.Color:=clSkyBlue;
 if StatPanel[17]=3 then Panel17.Color:=clMoneyGreen;
 if StatPanel[18]=1 then Panel18.Color:=clBtnFace;
 if StatPanel[18]=2 then Panel18.Color:=clSkyBlue;
 if StatPanel[18]=3 then Panel18.Color:=clMoneyGreen;
 if StatPanel[19]=1 then Panel19.Color:=clBtnFace;
 if StatPanel[19]=2 then Panel19.Color:=clSkyBlue;
 if StatPanel[19]=3 then Panel19.Color:=clMoneyGreen;
 if StatPanel[20]=1 then Panel20.Color:=clBtnFace;
 if StatPanel[20]=2 then Panel20.Color:=clSkyBlue;
 if StatPanel[20]=3 then Panel20.Color:=clMoneyGreen;
 if StatPanel[21]=1 then Panel21.Color:=clBtnFace;
 if StatPanel[21]=2 then Panel21.Color:=clSkyBlue;
 if StatPanel[21]=3 then Panel21.Color:=clMoneyGreen;
 if StatPanel[22]=1 then Panel22.Color:=clBtnFace;
 if StatPanel[22]=2 then Panel22.Color:=clSkyBlue;
 if StatPanel[22]=3 then Panel22.Color:=clMoneyGreen;
 if StatPanel[23]=1 then Panel23.Color:=clBtnFace;
 if StatPanel[23]=2 then Panel23.Color:=clSkyBlue;
 if StatPanel[23]=3 then Panel23.Color:=clMoneyGreen;
 ChangeObj(NumPanel);
end;

procedure TForm1.ChangeObj(NumPanel : Byte);
var
 Rejim : Byte;
begin

 if (Ustr[NumPanel].CDat=0) then //--- Если не получены параметры от устройства
  begin
   Label15.Caption:='- - -'; Label16.Caption:='- - -'; Label17.Caption:='- - -'; Label18.Caption:='- - -';
   Label23.Caption:='- - -'; Label24.Caption:='- - -'; Label25.Caption:='- - -'; Label26.Caption:='- - -';
   Label27.Caption:='- - -'; Label29.Caption:='- - -'; Label31.Caption:='S кольца : - - -';
  end;

 if Ustr[NumPanel].D4060=1 then begin RadioButton1.Checked:=True; Label30.Caption:='S кольца : d40'; Label31.Caption:='S кольца : d40'; end;
 if Ustr[NumPanel].D4060=2 then begin RadioButton2.Checked:=True; Label30.Caption:='S кольца : d60'; Label31.Caption:='S кольца : d60'; end;

 Rejim:=Ustr[NumPanel].Rejm;
 Button3.Visible:=SttObj[Rejim].B3;
 Button4.Visible:=SttObj[Rejim].B4;
 Panel47.Visible:=SttObj[Rejim].P47;
 Panel48.Visible:=SttObj[Rejim].P48;
 Label20.Visible:=SttObj[Rejim].L20;
 Label21.Visible:=SttObj[Rejim].L21;
 Label22.Visible:=SttObj[Rejim].L22;
 Label30.Visible:=SttObj[Rejim].L30;
 StringGrid1.Visible:=SttObj[Rejim].SG1;
 ScrollBar1.Visible:=SttObj[Rejim].SB1;
 Chart1.Visible:=SttObj[Rejim].CHRT1;

 if (Ustr[NumPanel].Rejm=0)and(NumPanel>=1) then //--- 0 : Устройство Отключено
  begin
//   wglMakeCurrent(pdcDIBEdit,hrcEdit);
//    glClearColor ($F0/255, $F0/255, $F0/255, 1);
//    glClear(GL_COLOR_BUFFER_BIT);
//   wglMakeCurrent(0,0);
//   BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
////   Application.ProcessMessages;
//   Button1.Enabled:=False;
//   Button3.Top:=24; Button3.Left:=144;  Button3.Width:=369; Button3.Height:=41;
//   Button3.Caption:='Определить папку для хранения отчётных файлов';
//   ScrollBar1.Max:=Ustr[NumPanel].CDat;
//   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
  end;

 if (Ustr[NumPanel].Rejm=1) then //--- 1 : Устройство Зарегистрировано
  begin
   wglMakeCurrent(pdcDIBEdit,hrcEdit);
    glClearColor ($F0/255, $F0/255, $F0/255, 1);
    glClear(GL_COLOR_BUFFER_BIT);
   wglMakeCurrent(0,0);
   BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
   Button3.Top:=24; Button3.Left:=144;  Button3.Width:=369; Button3.Height:=41;
   Button3.Caption:='Определить папку для хранения отчётных файлов';
   Button4.Caption:='Да, Подтверждаю';
   ScrollBar1.Max:=Ustr[NumPanel].CDat;
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=2) then //--- 2 : Рабочая папка определена
  begin
   Button3.Caption:='Загрузить алгоритм управления в устройство';
   wglMakeCurrent(pdcDIBEdit,hrcEdit);
    glClearColor ($F0/255, $F0/255, $F0/255, 1);
    glClear(GL_COLOR_BUFFER_BIT);
   wglMakeCurrent(0,0);
   BitBlt(PaintBox1.Canvas.Handle, 0, 0, WinX, WinY, pdcDIBEdit, 0, 0, SRCCOPY); // DIB -> hDC
//   Button3.Top:=24; Button3.Left:=144;  Button3.Width:=369; Button3.Height:=41;
//   Button3.Caption:='Определить папку для хранения отчётных файлов';
   Button4.Caption:='Да, Подтверждаю';
   Button4.Visible:=False;
//   ScrollBar1.Max:=Ustr[NumPanel].CDat;
//   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=3) then //--- 3 : Устройство Загружено
  begin
   Button4.Caption:='Да, Подтверждаю';
   ScrollBar1.Max:=Ustr[NumPanel].CDat;
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   if PageControl1.ActivePageIndex=3 then
    begin
     PaintBox1.Visible:=True;
     PaintBox1.Width:=WinX; PaintBox1.Height:=WinY;
     BufTemp[0]:=$42;
     WriteBufKom($01, Ustr[NumPanel].Adr, $01);
    end;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=4) then //--- 4 : Получено состояние устройства
  begin
   Button4.Caption:='Да, Подтверждаю';
   ComboBox1.Visible:=False;
   ScrollBar1.Max:=Ustr[NumPanel].CDat;
   OutGrafik();
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   if (PageControl1.ActivePageIndex=3)or(TabShow=4) then
    begin
     PaintBox1.Visible:=True;
     PaintBox1.Width:=WinX; PaintBox1.Height:=WinY;
     BufTemp[0]:=$42;
     WriteBufKom($01, Ustr[NumPanel].Adr, $01);
    end;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=5) then //--- 5 : Устройство Проверено
  begin
   Button4.Caption:='Редактировать';
   ScrollBar1.Max:=Ustr[NumPanel].CDat;
   OutGrafik();
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   if (PageControl1.ActivePageIndex=3)or(TabShow=4) then
    begin
     PaintBox1.Visible:=True;
     PaintBox1.Width:=WinX; PaintBox1.Height:=WinY;
     BufTemp[0]:=$42;
     WriteBufKom($01, Ustr[NumPanel].Adr, $01);
    end;
   if (PageControl1.ActivePageIndex=1)or(TabShow=2) then
    begin
     OutTable();
    end;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=6) then //--- 6 : Устройство Запущено
  begin
   Button4.Caption:='Редактировать';
   ScrollBar1.Max:=Ustr[NumPanel].CDat;
   Chart1.Visible:=True;
   OutGrafik();
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   if (PageControl1.ActivePageIndex=3)or(TabShow=4) then
    begin
     Label22.Visible:=False;
     PaintBox1.Visible:=False;
     PaintBox1.Width:=WinX; PaintBox1.Height:=WinY;
     Label22.Visible:=False;
     BufTemp[0]:=$42;
     WriteBufKom($01, Ustr[NumPanel].Adr, $01);
    end;
   if (PageControl1.ActivePageIndex=1)or(TabShow=2) then
    begin
//     PosDat:=0;
     OutTable();
    end;
   ViewEditAlg();
  end;

 if (Ustr[NumPanel].Rejm=7) then //--- 7 : Устройство Остановлено
  begin
   Button3.Caption:='Определить папку для хранения отчётных файлов';
   Button4.Caption:='Да, Подтверждаю';
   if Ustr[NumPanel].CDat>=15 then PosDat:=Ustr[NumPanel].CDat-14;
   ViewEditAlg();
  end;

end;

procedure TForm1.Panel1Click(Sender: TObject);
begin
 NumPanel:=1;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel2Click(Sender: TObject);
begin
 NumPanel:=2;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel3Click(Sender: TObject);
begin
 NumPanel:=3;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel4Click(Sender: TObject);
begin
 NumPanel:=4;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel5Click(Sender: TObject);
begin
 NumPanel:=5;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel6Click(Sender: TObject);
begin
 NumPanel:=6;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel7Click(Sender: TObject);
begin
 NumPanel:=7;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel8Click(Sender: TObject);
begin
 NumPanel:=8;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel9Click(Sender: TObject);
begin
 NumPanel:=9;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel10Click(Sender: TObject);
begin
 NumPanel:=10;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel11Click(Sender: TObject);
begin
 NumPanel:=11;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel12Click(Sender: TObject);
begin
 NumPanel:=12;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel13Click(Sender: TObject);
begin
 NumPanel:=13;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel14Click(Sender: TObject);
begin
 NumPanel:=14;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel15Click(Sender: TObject);
begin
 NumPanel:=15;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel16Click(Sender: TObject);
begin
 NumPanel:=16;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel17Click(Sender: TObject);
begin
 NumPanel:=17;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel18Click(Sender: TObject);
begin
 NumPanel:=18;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel19Click(Sender: TObject);
begin
 NumPanel:=19;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel20Click(Sender: TObject);
begin
 NumPanel:=20;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel21Click(Sender: TObject);
begin
 NumPanel:=21;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel22Click(Sender: TObject);
begin
 NumPanel:=22;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel23Click(Sender: TObject);
begin
 NumPanel:=23;
 RepaintPanel(NumPanel);
end;

procedure TForm1.Panel1ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=1;
end;

procedure TForm1.Panel2ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=2;
end;

procedure TForm1.Panel3ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=3;
end;

procedure TForm1.Panel4ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=4;
end;

procedure TForm1.Panel5ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=5;
end;

procedure TForm1.Panel6ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=6;
end;

procedure TForm1.Panel7ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=7;
end;

procedure TForm1.Panel8ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=8;
end;

procedure TForm1.Panel9ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=9;
end;

procedure TForm1.Panel10ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=10;
end;

procedure TForm1.Panel11ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=11;
end;

procedure TForm1.Panel12ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=12;
end;

procedure TForm1.Panel13ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=13;
end;

procedure TForm1.Panel14ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=14;
end;

procedure TForm1.Panel15ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=15;
end;

procedure TForm1.Panel16ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=16;
end;

procedure TForm1.Panel17ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=17;
end;

procedure TForm1.Panel18ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=18;
end;

procedure TForm1.Panel19ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=19;
end;

procedure TForm1.Panel20ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=20;
end;

procedure TForm1.Panel21ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=21;
end;

procedure TForm1.Panel22ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=22;
end;

procedure TForm1.Panel23ContextPopup(Sender: TObject; MousePos: TPoint;
  var Handled: Boolean);
begin
 SelPanel:=23;
end;

procedure TForm1.ScrollBar1Scroll(Sender: TObject; ScrollCode: TScrollCode;
  var ScrollPos: Integer);
var
 FScr : Byte;
begin
 FScr:=0; EnPosKor:=0;
 if (ScrollCode=ScLineUp)and(PosDat>=1) then begin PosDat:=PosDat-1; FScr:=1; end;
 if (ScrollCode=ScLineDown)and(PosDat+14<Ustr[NumPanel].CDat) then begin PosDat:=PosDat+1; FScr:=1; end;
 if (ScrollCode=ScPageUp)and(PosDat>=5) then begin PosDat:=PosDat-5;  FScr:=1; end;
 if (ScrollCode=ScPageDown)and(PosDat+16<Ustr[NumPanel].CDat) then begin PosDat:=PosDat+5; FScr:=1; end;
 if (ScrollCode=ScTrack) then begin PosDat:=ScrollBar1.Position; FScr:=1; end;
 if FScr=1 then OutTable();
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
var
 CA, LenS : Word;
 Buf : Pointer;
 Messge : String;
begin
 if Key=#13 then
  begin
//   Messge:=Edit2.Text;
//   Memo2.Lines.Add('Исходящее сообщение (-->) : '+Messge);
//   Edit2.Text:='';
//   LenS:=Length(Messge);
//   if LenS>=255 then LenS:=255;
//   CA:=0;
//   Buf:=Addr(Messge[1]);
//   while(CA<=LenS)do
//    begin
//     BufTemp[CA]:=PByteArray(Buf)[CA];
//     CA:=CA+1;
//    end;
//   WriteBufKom($05, Ustr[NumPanel].Adr, LenS);
  end;
end;

end.

