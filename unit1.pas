unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, ComCtrls,
  StdCtrls, Buttons, Spin, ComboEx, Menus;

type
  elemen = record
    x,y:integer;
  end;

  { TForm1 }

  TForm1 = class(TForm)
    dragkubus: TBitBtn;
    GroupBox10: TGroupBox;
    MainMenu1: TMainMenu;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem8: TMenuItem;
    dragSquare: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SpinEdit4: TSpinEdit;
    SpinEdit5: TSpinEdit;
    Square: TBitBtn;
    brect: TBitBtn;
    bPris: TBitBtn;
    bLim: TBitBtn;
    Pencil: TBitBtn;
    Eraser: TBitBtn;
    BitBtn15: TBitBtn;
    BitBtn16: TBitBtn;
    bUP: TBitBtn;
    bRU: TBitBtn;
    bR: TBitBtn;
    TRIANGLE: TBitBtn;
    bRD: TBitBtn;
    bDw: TBitBtn;
    bLD: TBitBtn;
    bL: TBitBtn;
    bRL: TBitBtn;
    Lefttt: TBitBtn;
    Right: TBitBtn;
    SumbuY: TBitBtn;
    SumbuX: TBitBtn;
    sHorizontal: TBitBtn;
    RECTANGLE: TBitBtn;
    sVertikal: TBitBtn;
    CIRCLE: TBitBtn;
    HEXAGON: TBitBtn;
    TRAPEZOID: TBitBtn;
    KITES: TBitBtn;
    PARALELLOGRAM: TBitBtn;
    bCube: TBitBtn;
    CheckBox1: TCheckBox;
    ColorButton1: TColorButton;
    ComboBoxEx1: TComboBoxEx;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    GroupBox8: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    PageControl1: TPageControl;
    SpinEdit1: TSpinEdit;
    SpinEdit2: TSpinEdit;
    SpinEdit3: TSpinEdit;
    StatusBar1: TStatusBar;
    Draw: TTabSheet;
    TabSheet2: TTabSheet;
    procedure bDwClick(Sender: TObject);
    procedure bLimClick(Sender: TObject);
    procedure bPrisClick(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure bCubeClick(Sender: TObject);
    procedure bLClick(Sender: TObject);
    procedure bLDClick(Sender: TObject);
    procedure bRClick(Sender: TObject);
    procedure bRDClick(Sender: TObject);
    procedure brectClick(Sender: TObject);
    procedure bRLClick(Sender: TObject);
    procedure bRUClick(Sender: TObject);
    procedure bUPClick(Sender: TObject);
    procedure ColorButton1Click(Sender: TObject);
    //procedure dragkubusClick(Sender: TObject);
    //procedure dragSquareClick(Sender: TObject);
    procedure EraserClick(Sender: TObject);
    procedure CheckBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X, Y: Integer
      );
    procedure Image1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LeftttClick(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure PencilClick(Sender: TObject);
    procedure RightClick(Sender: TObject);
    procedure CIRCLEClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure HEXAGONClick(Sender: TObject);
    procedure KITESClick(Sender: TObject);
    procedure PARALELLOGRAMClick(Sender: TObject);
    procedure RECTANGLEClick(Sender: TObject);
    procedure sHorizontalClick(Sender: TObject);
    procedure SquareClick(Sender: TObject);
    procedure SumbuXClick(Sender: TObject);
    procedure SumbuYClick(Sender: TObject);
    procedure sVertikalClick(Sender: TObject);
    procedure TRAPEZOIDClick(Sender: TObject);
    procedure TRIANGLEClick(Sender: TObject);
    procedure midpoin(Sender: TObject);
    procedure clear();
    procedure boundaryfill(x,y,fill,boundary:Integer);
  private

  public

  end;

var
  Form1: TForm1;
  i, titik,n,m: integer;
  nama: string;
  MouseIsDown: Boolean;
  downX, downY, upX, upY: Integer;
  temp: array[1..30] of elemen;
  obj:array[1..20] of elemen;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.bCubeClick(Sender: TObject);
begin
  clear();
   titik:=11;
   nama:='cube';
      obj[1].x:= 300; obj[1].y:= 300;
      obj[2].x:= 500; obj[2].y:= 300;
      obj[3].x:= 500; obj[3].y:= 500;
      obj[4].x:= 300; obj[4].y:= 500;
      obj[5].x:= 300; obj[5].y:= 300;

      obj[6].x:= 400; obj[6].y:= 250;
      obj[7].x:= 600; obj[7].y:= 250;
      obj[8].x:= 500; obj[8].y:= 300;
      obj[9].x:= 500; obj[9].y:= 500;
      obj[10].x:= 600; obj[10].y:= 450;
      obj[11].x:= 600; obj[11].y:= 250;
   FormShow(Sender);
end;

procedure TForm1.bLClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
  obj[i].x:=obj[i].x-SpinEdit2.Value;
   FormShow(Sender);
end;

procedure TForm1.bLDClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
   begin
   obj[i].y:=obj[i].y+SpinEdit2.Value;
  obj[i].x:=obj[i].x-SpinEdit2.Value;
   end;
   FormShow(Sender);
end;

procedure TForm1.bRClick(Sender: TObject);
begin
  midpoin(Sender);
  for i:=1 to titik do
  obj[i].x:=obj[i].x+SpinEdit2.Value;
   FormShow(Sender);

end;

procedure TForm1.bRDClick(Sender: TObject);
begin
  midpoin(Sender);
       for i:=1 to titik do
   begin
   obj[i].y:=obj[i].y+SpinEdit2.Value;
  obj[i].x:=obj[i].x+SpinEdit2.Value;
   end;
   FormShow(Sender);
end;

procedure TForm1.brectClick(Sender: TObject);
begin
    clear();
   titik:=11;
   nama:='bar';
      obj[1].x:= 300; obj[1].y:= 300;
      obj[2].x:= 600; obj[2].y:= 300;
      obj[3].x:= 600; obj[3].y:= 500;
      obj[4].x:= 300; obj[4].y:= 500;
      obj[5].x:= 300; obj[5].y:= 300;

      obj[6].x:= 400; obj[6].y:= 250;
      obj[7].x:= 700; obj[7].y:= 250;
      obj[8].x:= 600; obj[8].y:= 300;
      obj[9].x:= 600; obj[9].y:= 500;
      obj[10].x:= 700; obj[10].y:= 450;
      obj[11].x:= 700; obj[11].y:= 250;
   FormShow(Sender);
end;

procedure TForm1.bRLClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
   begin
   obj[i].y:=obj[i].y-SpinEdit2.Value;
  obj[i].x:=obj[i].x-SpinEdit2.Value;
   end;
   FormShow(Sender);
end;

procedure TForm1.bRUClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
   begin
   obj[i].y:=obj[i].y-SpinEdit2.Value;
  obj[i].x:=obj[i].x+SpinEdit2.Value;
   end;
   FormShow(Sender);
end;

procedure TForm1.bUPClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
  obj[i].y:=obj[i].y-SpinEdit2.Value;
   FormShow(Sender);
end;

procedure TForm1.ColorButton1Click(Sender: TObject);
begin

end;

procedure TForm1.CheckBox1Change(Sender: TObject);
begin
  case ComboBoxEx1.ItemIndex of
  0 : Image1.Canvas.Pen.Style:=psSolid;
  1 : Image1.Canvas.Pen.Style:=psDash;
  2 : Image1.Canvas.Pen.Style:=psDot;
  3 : Image1.Canvas.Pen.Style:=psDashDot;
  end;
  FormShow(sender);
end;

procedure TForm1.EraserClick(Sender: TObject);
begin
  nama:='penghapus';
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBoxEx1.Items.Clear;             //Delete all existing choices
  ComboBoxEx1.Items.Add('Solid');        //Add an choice
  ComboBoxEx1.Items.Add('Dot');
  ComboBoxEx1.Items.Add('Dash');
  ComboBoxEx1.Items.Add('Dash dot');
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var
  fill,boundary:Integer;
begin
   fill:=ColorButton1.ButtonColor;
   boundary:=Image1.Canvas.Pen.Color;
   if CheckBox1.Checked=true then
   begin
    boundaryfill(x,y,fill,boundary);
   end;
      downX := X;
      downY := Y;
   Image1.Canvas.MoveTo(X,Y);
   if nama='pensil' then
      begin
      Image1.Canvas.Pen.Color:=clBlack;
      Image1.Canvas.Pen.Width:=SpinEdit4.Value;
      if ComboBoxEx1.ItemIndex=0 then
         begin
        Image1.Canvas.Pen.Style:=psSolid;
        end else

      if ComboBoxEx1.ItemIndex=1 then
         begin
        Image1.Canvas.Pen.Style:=psDash;
        end else

      if ComboBoxEx1.ItemIndex=2 then
         begin
         Image1.Canvas.Pen.Style:=psDot;
         end else

      if ComboBoxEx1.ItemIndex=3 then
         begin
        Image1.Canvas.Pen.Style:=psDashDot;
        end ;
     MouseIsDown:=true;
   if CheckBox1.Checked=true then
   begin
        boundaryfill(n,m,fill,boundary);
   end;
  end
   else if nama='penghapus' then
   begin
     Image1.Canvas.Pen.Color:=clWhite;
     Image1.Canvas.Pen.Width:=SpinEdit4.Value;
      if ComboBoxEx1.ItemIndex=0 then
      begin
        Image1.Canvas.Pen.Style:=psSolid;
      end else

      if ComboBoxEx1.ItemIndex=1 then
      begin
        Image1.Canvas.Pen.Style:=psDash;
      end else

      if ComboBoxEx1.ItemIndex=2 then
      begin
        Image1.Canvas.Pen.Style:=psDot;
      end else

      if ComboBoxEx1.ItemIndex=3 then
      begin
        Image1.Canvas.Pen.Style:=psDashDot;
      end ;
     MouseIsDown:=true;
   end;
end;

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
     StatusBar1.SimpleText:='Coordinates: ' + IntToStr(X) + ', ' + IntToStr(Y);

     if MouseIsDown= True then
        begin
        if nama='pensil' then
           begin
           Image1.Canvas.LineTo(X,Y);
           end
        else if nama='penghapus' then
           begin
           Image1.Canvas.LineTo(X,Y);
           end;
     end;
end;

procedure TForm1.Image1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
    upX:=X;
    upY:=Y;
    if nama='pensil' then
       begin
       MouseIsDown:=false;
       end
    else if nama='penghapus' then
         begin
         MouseIsDown:=false;
         end;
end;

procedure TForm1.LeftttClick(Sender: TObject);
var
sdt: real;
begin
   midpoin(Sender);
  for i:=1 to titik do
  begin
           obj[i].x:=obj[i].x-n;
           obj[i].y:=obj[i].y-m;
           sdt:=SpinEdit3.Value*pi/180;
           temp[i].y:=round(obj[i].x*sin(sdt)+obj[i].y*cos(sdt));
           temp[i].x:=round(obj[i].x*cos(sdt)-obj[i].y*sin(sdt));
           obj[i]:=temp[i];
           obj[i].x:=obj[i].x+n;
           obj[i].y:=obj[i].y+m;

  end;
  FormShow(Sender);
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  close();
end;

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
  clear();
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
  If OpenDialog1.Execute then
    Image1.Picture.LoadFromFile(OpenDialog1.FileName);
end;

procedure TForm1.MenuItem6Click(Sender: TObject);
begin
  If SaveDialog1.Execute then
     Image1.Picture.SaveToFile(SaveDialog1.FileName);
end;

procedure TForm1.PencilClick(Sender: TObject);
begin
  nama:= 'pensil';
end;

procedure TForm1.RightClick(Sender: TObject);
var
sdt: real;
begin
  midpoin(Sender);
  for i:=1 to titik do
  begin
           obj[i].x:=obj[i].x-n;
           obj[i].y:=obj[i].y-m;
           sdt:=SpinEdit3.Value*pi/180;
           temp[i].y:=round(obj[i].x*sin(-sdt)+obj[i].y*cos(-sdt));
           temp[i].x:=round(obj[i].x*cos(-sdt)-obj[i].y*sin(-sdt));
           obj[i]:=temp[i];
           obj[i].x:=obj[i].x+n;
           obj[i].y:=obj[i].y+m;
  end;
  FormShow(Sender);
end;

procedure TForm1.BitBtn15Click(Sender: TObject);
begin
  midpoin(Sender);
  for i:=1 to titik do
begin
  obj[i].x:=obj[i].x-n;
  obj[i].y:=obj[i].y-m;
  temp[i].x:=obj[i].x * SpinEdit1.Value;
  temp[i].y:=obj[i].y * SpinEdit1.Value;
  obj[i] := Temp[i];
  obj[i].x:=obj[i].x+n;
  obj[i].y:=obj[i].y+m;
  end;
   FormShow(Sender);
end;

procedure TForm1.bDwClick(Sender: TObject);
begin
 midpoin(Sender);
 for i:=1 to titik do
  obj[i].y:=obj[i].y+SpinEdit2.Value;
   FormShow(Sender);
end;

procedure TForm1.bLimClick(Sender: TObject);
begin
  clear();
   titik:=6;
   nama:='limas';
   obj[1].x:= 450; obj[1].y:= 300;
   obj[2].x:= 300; obj[2].y:= 500;
   obj[3].x:= 600; obj[3].y:= 500;
   obj[4].x:= 450; obj[4].y:= 300;
   obj[5].x:= 700; obj[5].y:= 450;
   obj[6].x:= 600; obj[6].y:= 500;
   FormShow(Sender);
end;

procedure TForm1.bPrisClick(Sender: TObject);
begin
  clear();
  titik:=17;
   nama:='prisma';
   obj[1].x:= 350; obj[1].y:= 150;
   obj[2].x:= 450; obj[2].y:= 150;
   obj[3].x:= 500; obj[3].y:= 250;
   obj[4].x:= 450; obj[4].y:= 350;
   obj[5].x:= 350; obj[5].y:= 350;
   obj[6].x:= 300; obj[6].y:= 250;
   obj[7].x:= 350; obj[7].y:= 150;
   obj[8].x:= 300; obj[8].y:= 250;
   obj[9].x:= 300; obj[9].y:= 500;
   obj[10].x:= 350; obj[10].y:= 550;
   obj[11].x:= 450; obj[11].y:= 550;
   obj[12].x:= 500; obj[12].y:= 500;
   obj[13].x:= 500; obj[13].y:= 250;
   obj[14].x:= 450; obj[14].y:= 350;
   obj[15].x:= 450; obj[15].y:= 550;
   obj[16].x:= 350; obj[16].y:= 550;
   obj[17].x:= 350; obj[17].y:= 350;

   FormShow(Sender);
end;

procedure TForm1.BitBtn16Click(Sender: TObject);
begin
   midpoin(Sender);
  for i:=1 to titik do
begin
  obj[i].x:=obj[i].x-n;
  obj[i].y:=obj[i].y-m;
  temp[i].x:=obj[i].x div SpinEdit1.Value;
  temp[i].y:=obj[i].y div SpinEdit1.Value;
  obj[i] := Temp[i];
  obj[i].x:=obj[i].x+n;
  obj[i].y:=obj[i].y+m;
  end;
   FormShow(Sender);
end;

procedure TForm1.CIRCLEClick(Sender: TObject);
begin
     clear();
   titik:=5;
   nama:='circle';
   obj[1].x:= 300; obj[1].y:= 200;
   obj[2].x:= 500; obj[2].y:= 400;
   FormShow(Sender);
end;

procedure TForm1.FormShow(Sender: TObject);
var
  fill, boundary:integer;
begin
   Image1.Canvas.Rectangle(0,0,Image1.Width, Image1.Height);
   fill:=ColorButton1.ButtonColor;
   boundary:=Image1.Canvas.Pen.Color;
   Image1.Canvas.Pen.Width:=SpinEdit4.Value;
 if nama = 'square' then
  begin
  Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
    for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
    if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'triangle' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'rectangle' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'circle' then
  begin
     Image1.Canvas.Ellipse(obj[1].x, obj[1].y, obj[2].x,obj[2].y);
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'hexagon' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'trapezoid' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

  else if nama = 'kites' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

   else if nama = 'paralellogram' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

   else if nama = 'cube' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

   else if nama = 'bar' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

    else if nama = 'limas' then
  begin
     Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
     for i:=1 to titik do
    begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
    end;
     if CheckBox1.Checked=true then
   begin
    boundaryfill(n,m,fill,boundary);
   end;
  end

    else if nama = 'prisma' then
         begin
         Image1.Canvas.MoveTo(obj[1].x, obj[1].y);
         for i:=1 to titik do
         begin
          Image1.Canvas.LineTo(obj[i].x, obj[i].y);
          end;
          if CheckBox1.Checked=true then
          begin
          boundaryfill(n,m,fill,boundary);
          end;
          end
    else if nama='pensil' then
         begin
         Image1.Canvas.Line(downX,downY,upX,upY);
         Image1.Canvas.Line(downX,downY,upX,upY);
         downX := upX;
         downY := upY;
         end;
    end;


procedure TForm1.HEXAGONClick(Sender: TObject);
begin
    clear();
  titik:=7;
   nama:='hexagon';
   obj[1].x:= 350; obj[1].y:= 250;
   obj[2].x:= 450; obj[2].y:= 250;
   obj[3].x:= 500; obj[3].y:= 350;
   obj[4].x:= 450; obj[4].y:= 450;
   obj[5].x:= 350; obj[5].y:= 450;
   obj[6].x:= 300; obj[6].y:= 350;
   obj[7].x:= 350; obj[7].y:= 250;
   FormShow(Sender);
end;

procedure TForm1.KITESClick(Sender: TObject);
begin
    clear();
   titik:=8;
   nama:='kites';
   obj[1].x:= 400; obj[1].y:= 300;
   obj[2].x:= 500; obj[2].y:= 350;
   obj[3].x:= 400; obj[3].y:= 600;
   obj[4].x:= 300; obj[4].y:= 350;
   obj[5].x:= 400; obj[5].y:= 300;
   obj[6].x:= 400; obj[6].y:= 600;

   obj[7].x:= 300; obj[7].y:= 350;
   obj[8].x:= 500; obj[8].y:= 350;
   FormShow(Sender);
end;

procedure TForm1.PARALELLOGRAMClick(Sender: TObject);
begin
   clear();
   titik:=5;
   nama:='paralellogram';
   obj[1].x:= 300; obj[1].y:= 300;
   obj[2].x:= 700; obj[2].y:= 300;
   obj[3].x:= 600; obj[3].y:= 500;
   obj[4].x:= 200; obj[4].y:= 500;
   obj[5].x:= 300; obj[5].y:= 300;
   FormShow(Sender);
end;

procedure TForm1.RECTANGLEClick(Sender: TObject);
begin
    clear();
    titik:=5;
   nama:='rectangle';
   obj[1].x:= 300; obj[1].y:= 300;
   obj[2].x:= 700; obj[2].y:= 300;
   obj[3].x:= 700; obj[3].y:= 500;
   obj[4].x:= 300; obj[4].y:= 500;
   obj[5].x:= 300; obj[5].y:= 300;
   FormShow(Sender);
end;

procedure TForm1.sHorizontalClick(Sender: TObject);
begin
   midpoin(Sender);
   if nama='square' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[3].x:=obj[3].x-SpinEdit5.Value;
      obj[4].x:=obj[4].x-SpinEdit5.Value;
      obj[5].x:=obj[5].x+SpinEdit5.Value;
    FormShow(Sender);
    end
   else if nama='triangle' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
      obj[3].x:=obj[3].x-SpinEdit5.Value;
      obj[4].x:=obj[4].x+SpinEdit5.Value;
    FormShow(Sender);
    end
  else if nama='rectangle' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[3].x:=obj[3].x-SpinEdit5.Value;
      obj[4].x:=obj[4].x-SpinEdit5.Value;
      obj[5].x:=obj[5].x+SpinEdit5.Value;
    FormShow(Sender);
    end
    else if nama='circle' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
    FormShow(Sender);
    end
    else if nama='hexagon' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
      //obj[3].x:=obj[3].x-SpinEdit5.Value;
      obj[4].x:=obj[4].x+SpinEdit5.Value;
      obj[5].x:=obj[5].x+SpinEdit5.Value;
      //obj[6].x:=obj[6].x-SpinEdit5.Value;
      obj[7].x:=obj[7].x-SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='trapezoid' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
      obj[3].x:=obj[3].x+SpinEdit5.Value;
      obj[4].x:=obj[4].x+SpinEdit5.Value;
      obj[5].x:=obj[5].x-SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='kites' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      //obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[3].x:=obj[3].x+SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='paralellogram' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
      obj[3].x:=obj[3].x+SpinEdit5.Value;
      obj[4].x:=obj[4].x+SpinEdit5.Value;
      obj[5].x:=obj[5].x-SpinEdit5.Value;
    FormShow(Sender);
    end;

   end;

procedure TForm1.SquareClick(Sender: TObject);
begin
   clear();
   titik:=5;
   nama:='square';
   obj[1].x:= 300; obj[1].y:= 300;
   obj[2].x:= 500; obj[2].y:= 300;
   obj[3].x:= 500; obj[3].y:= 500;
   obj[4].x:= 300; obj[4].y:= 500;
   obj[5].x:= 300; obj[5].y:= 300;
   FormShow(Sender);
end;

procedure TForm1.SumbuXClick(Sender: TObject);
begin
   midpoin(Sender);
   for i:=1 to titik do
    begin
      obj[i].x:=obj[i].x;
      obj[i].y:=-obj[i].y+550;
    end;
     FormShow(Sender);
end;

procedure TForm1.SumbuYClick(Sender: TObject);
begin
     //fill:=ColorButton1.ButtonColor;
     midpoin(Sender);
    for i:=1 to titik do
        begin
         obj[i].x:=-obj[i].x+550;
          obj[i].y:=obj[i].y;
        end;
        FormShow(Sender);
     //if CheckBox1.Checked=true then
           //begin
           //boundaryfill(n,m,fill,boundary);
           //end;
end;

procedure TForm1.sVertikalClick(Sender: TObject);
begin
   midpoin(Sender);
   if nama='square' then
   begin
      obj[1].y:=obj[1].y+SpinEdit5.Value;
      obj[2].y:=obj[2].y-SpinEdit5.Value;
      obj[3].y:=obj[3].y-SpinEdit5.Value;
      obj[4].y:=obj[4].y+SpinEdit5.Value;
      obj[5].y:=obj[5].y+SpinEdit5.Value;
    FormShow(Sender);
    end
   else if nama='triangle' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[3].x:=obj[3].x+SpinEdit5.Value;
      obj[4].x:=obj[4].x-SpinEdit5.Value;
    FormShow(Sender);
    end
  else if nama='rectangle' then
   begin
      obj[1].x:=obj[1].x-SpinEdit5.Value;
      obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[3].x:=obj[3].x+SpinEdit5.Value;
      obj[4].x:=obj[4].x-SpinEdit5.Value;
      obj[5].y:=obj[5].y-SpinEdit5.Value;
    FormShow(Sender);
    end
    else if nama='circle' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
    FormShow(Sender);
    end
    else if nama='hexagon' then
   begin
      obj[1].y:=obj[1].y+SpinEdit5.Value;
      obj[2].y:=obj[2].y-SpinEdit5.Value;
      obj[3].y:=obj[3].y-SpinEdit5.Value;
      obj[4].y:=obj[4].y-SpinEdit5.Value;
      obj[5].y:=obj[5].y+SpinEdit5.Value;
      obj[6].y:=obj[6].y+SpinEdit5.Value;
      obj[7].y:=obj[7].y+SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='trapezoid' then
   begin
      obj[1].y:=obj[1].y+SpinEdit5.Value;
      obj[2].y:=obj[2].y-SpinEdit5.Value;
      obj[3].y:=obj[3].y-SpinEdit5.Value;
      obj[4].y:=obj[4].y+SpinEdit5.Value;
      obj[5].y:=obj[5].y+SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='kites' then
   begin
      obj[2].y:=obj[2].y-SpinEdit5.Value;
      //obj[2].x:=obj[2].x+SpinEdit5.Value;
      obj[4].y:=obj[4].y+SpinEdit5.Value;

    FormShow(Sender);
    end
    else if nama='paralellogram' then
   begin
      obj[1].x:=obj[1].x+SpinEdit5.Value;
      obj[2].x:=obj[2].x-SpinEdit5.Value;
      obj[3].x:=obj[3].x-SpinEdit5.Value;
      obj[4].x:=obj[4].x+SpinEdit5.Value;
      obj[5].x:=obj[5].x+SpinEdit5.Value;
    FormShow(Sender);
    end;

end;

procedure TForm1.TRAPEZOIDClick(Sender: TObject);
begin
    clear();
   titik:=5;
   nama:='trapezoid';
   obj[1].x:= 400; obj[1].y:= 300;
   obj[2].x:= 600; obj[2].y:= 300;
   obj[3].x:= 700; obj[3].y:= 400;
   obj[4].x:= 300; obj[4].y:= 400;
   obj[5].x:= 400; obj[5].y:= 300;
   FormShow(Sender);
end;

procedure TForm1.TRIANGLEClick(Sender: TObject);
begin
   clear();
   titik:=4;
   nama:='triangle';
   obj[1].x:= 300; obj[1].y:= 500;
   obj[2].x:= 450; obj[2].y:= 300;
   obj[3].x:= 600; obj[3].y:= 500;
   obj[4].x:= 300; obj[4].y:= 500;
   FormShow(Sender);
end;

procedure TForm1.midpoin(Sender: TObject);
 begin
    n:=0;m:=0;
  for i:=1 to titik do
  begin
    n := obj[i].x + n;
    m := obj[i].y + m;
  end;
  n := n div titik;
  m := m div titik;
 end;

 procedure TForm1.clear();
 begin
  Image1.Canvas.Brush.Color := clWhite;
  Image1.Canvas.Fillrect(0,0,Image1.Width,Image1.Height);
 end;

 procedure TForm1.boundaryfill(x,y,fill,boundary: Integer);
  var
  current:Integer;
begin
  current:=Image1.Canvas.Pixels[x,y];
    if(current<>fill) and (current<>boundary) then
    begin
       //rekursi
       Image1.Canvas.Pixels[x,y]:=fill;
       boundaryfill(x+1,y,fill,boundary);
       boundaryfill(x,y+1,fill,boundary);
       boundaryfill(x-1,y,fill,boundary);
       boundaryfill(x,y-1,fill,boundary);
    end;

end;

end.

