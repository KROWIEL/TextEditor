unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, Menus, StrUtils, ExtCtrls, ExtDlgs, RichEdit, Jpeg,
  OleServer, WordXP, ToolWin, re_bmp, Buttons;

type
  TForm1 = class(TForm)
    redt1: TRichEdit;
    pm1: TPopupMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    dlgOpen1: TOpenDialog;
    dlgSave1: TSaveDialog;
    dlgFont1: TFontDialog;
    dlgPnt1: TPrintDialog;
    dlgFind1: TFindDialog;
    mm1: TMainMenu;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    Ghfdrf1: TMenuItem;
    N16: TMenuItem;
    N22: TMenuItem;
    N23: TMenuItem;
    N24: TMenuItem;
    N17: TMenuItem;
    N19: TMenuItem;
    N21: TMenuItem;
    N25: TMenuItem;
    N26: TMenuItem;
    img1: TImage;
    dlgOpenPic1: TOpenPictureDialog;
    N27: TMenuItem;
    Jghjuhfvvt1: TMenuItem;
    N20: TMenuItem;
    N28: TMenuItem;
    N29: TMenuItem;
    N31: TMenuItem;
    N33: TMenuItem;
    N7: TMenuItem;
    StatusBar1: TStatusBar;
    Timer1: TTimer;
    N8: TMenuItem;
    N9: TMenuItem;
    N18: TMenuItem;
    UTF81: TMenuItem;
    ANSI1: TMenuItem;
    RichEdit1: TRichEdit;
    N4: TMenuItem;
    Timer2: TTimer;
    OpenPictureDialog1: TOpenPictureDialog;
    N30: TMenuItem;
    Image1: TImage;
    N32: TMenuItem;
    N34: TMenuItem;
    Panel1: TPanel;
    N35: TMenuItem;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton16: TSpeedButton;
    SpeedButton17: TSpeedButton;
    SpeedButton18: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton19: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton21: TSpeedButton;
    SpeedButton22: TSpeedButton;
    SpeedButton23: TSpeedButton;
    procedure N8Click(Sender: TObject);
    procedure redt1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure N7Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure N9Click(Sender: TObject);
    procedure N12Click(Sender: TObject);
    procedure N13Click(Sender: TObject);
    procedure N14Click(Sender: TObject);
    procedure N15Click(Sender: TObject);
    procedure N16Click(Sender: TObject);
    procedure dlgFind1Find(Sender: TObject);
    procedure N23Click(Sender: TObject);
    procedure N24Click(Sender: TObject);
    procedure N20Click(Sender: TObject);
    procedure UTF81Click(Sender: TObject);
    procedure N26Click(Sender: TObject);
    procedure N25Click(Sender: TObject);
    procedure N21Click(Sender: TObject);
    procedure img1DragDrop(Sender, Source: TObject; X, Y: Integer);
    procedure img1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure img1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure FormMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure N27Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Jghjuhfvvt1Click(Sender: TObject);
    procedure redt1KeyPress(Sender: TObject; var Key: Char);
    procedure N29Click(Sender: TObject);
    procedure N28Click(Sender: TObject);
    procedure N31Click(Sender: TObject);
    procedure N33Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure ANSI1Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure N30Click(Sender: TObject);
    procedure N32Click(Sender: TObject);
    procedure N34Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure SpeedButton21Click(Sender: TObject);
    procedure SpeedButton22Click(Sender: TObject);
    procedure SpeedButton23Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

  const
  KEY_CTRL_B = 02; 
  KEY_CTRL_I =  9; 
  KEY_CTRL_S = 19;
  KEY_CTRL_U = 21; 

var
  Form1: TForm1;
nah_left,nah_top:integer;
po:Tpoint;
b:boolean;

implementation

uses Unit2, Unit3, Unit4;

{$R *.dfm}



procedure HightLight_Syntax(ARE : TRichEdit);
procedure HighLight_Others(AStart, AEnd : String; AColor : TColor);
var
  iNext, iPos, iPos_End : Integer;
begin
  iNext := 0;
  iPos := ARE.FindText(AStart, iNext, Length(ARE.Text), [stMatchCase]);
  while iPos <> -1 do
  begin
    iNext := iPos + Length(AStart);
    ARE.SelStart := iPos;
    iPos_End := ARE.FindText(AEnd, iNext, Length(ARE.Text), [stMatchCase]);
    if iPos_End = -1 then
      if AStart = '''' then
        iPos_End := ARE.FindText(#13, iNext, Length(ARE.Text), [stMatchCase])
      else
        iPos_End := Length(ARE.Text);

    ARE.SelLength := (iPos_End  - iPos) + Length(AEnd);
    ARE.SelAttributes.Color := AColor;
    if AStart = '''' then
      iPos := ARE.FindText('''', iNext + iPos_End, Length(ARE.Text), [stMatchCase])
    else
      iPos := ARE.FindText(AStart, iNext, Length(ARE.Text), [stMatchCase]);
  end;
end;

var
  SL_Key_Word : TStringList;
  i, iPos, iNext, iPos_Symb_Start, iPos_Symb_End, iTest : Integer;
const
  C_Path = 'bin/KeyWords.txt';
begin
  ARE.SelectAll;
  ARE.SelAttributes.Color := clBlack;
  SL_Key_Word := TStringList.Create;
  try
    SL_Key_Word.LoadFromFile(C_Path);
    i := 0;
    while i < SL_Key_Word.Count do
    begin
      iNext := 0;
      iPos := ARE.FindText(SL_Key_Word[i], iNext, Length(ARE.Text), [stWholeWord]);
      while iPos <> -1 do
      begin
        iPos_Symb_Start := ARE.FindText('_', iPos - 1, 1, [stMatchCase]);
        if iPos = 0 then
          iTest := 0
        else
          iTest := iPos - iPos_Symb_Start;

        iPos_Symb_End := ARE.FindText('_', iPos, Length(SL_Key_Word[i]) + 1, [stMatchCase]);
        if (iTest <> 1) and (((Length(SL_Key_Word[i]) + iPos) - iPos_Symb_End) + 1 <> 1) then
        begin
          iNext := iPos + Length(SL_Key_Word[i]);
          ARE.SelStart := iPos;
          ARE.SelLength := Length(SL_Key_Word[i]);
          ARE.SelAttributes.Style := [fsBold];
        end
        else
          iNext := iPos + Length(SL_Key_Word[i]) - 1;

        iPos := ARE.FindText(SL_Key_Word[i], iNext, Length(ARE.Text), [stWholeWord]);
      end;
      inc(i);
    end;

    HighLight_Others('(*', '*)', clGreen);
    HighLight_Others('//', #13, clGreen);
    HighLight_Others('{', '}', clGreen);
    HighLight_Others('{$', '}', clTeal);
    HighLight_Others('''', '''', clBlue);
  finally
    SL_Key_Word.Free;
  end;
end;





procedure TForm1.N8Click(Sender: TObject);
begin
 Form1.dlgOpen1.Filter := 'Форматированный текст (*.rtf)|*.rtf';
Form1.dlgOpen1.Execute();
   redt1.Lines.LoadFromFile(Form1.dlgOpen1.FileName);
end;


procedure TForm1.redt1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
var P: TPoint;
begin
  P:=GetClientOrigin;
  if Button = mbRight then
    pm1.Popup(X+P.X+redt1.Left, Y+P.Y+redt1.Top);
end;

procedure TForm1.N7Click(Sender: TObject);
begin
      redt1.Text :=redt1.Text+DateTimeToStr(Now);

end;

procedure TForm1.N1Click(Sender: TObject);
begin
Form1.redt1.CutToClipboard;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
Form1.redt1.PasteFromClipboard;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
Form1.redt1.CopyToClipboard;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
Form1.redt1.ClearSelection;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
Form1.redt1.Clear;
end;

procedure TForm1.N9Click(Sender: TObject);
begin

    if (n9.Checked =true) then begin
    StatusBar1.Visible:=false;
    n9.Checked:=false;
    end else
    if (n9.Checked =false) then begin
    StatusBar1.Visible:=true;
    n9.Checked:=true;
    end;
end;

procedure TForm1.N12Click(Sender: TObject);
begin
   Form1.dlgOpen1.Filter := 'Текстовые файлы (*.txt)|*.txt|Форматированный текст (*.rtf)|*.rtf|Веб-страница (*.html)|*.html';
   Form1.dlgOpen1.Execute();
   redt1.Lines.LoadFromFile(Form1.dlgOpen1.FileName);
   redt1.Text :=Utf8ToAnsi(redt1.Text);
end;

procedure TForm1.N13Click(Sender: TObject);
begin
//Форматированный текст (*.rtf)|*.rtf
//Текстовые файлы (*.txt)|*.txt
               richedit1.Lines:=redt1.Lines;
               richedit1.Text :=AnsiToUtf8(redt1.Text);


           Form1.dlgSave1.Filter := 'Текстовые файлы (*.txt)|*.txt|Форматированный текст (*.rtf)|*.rtf|Веб-страница (*.html)|*.html|Документ Word (*.doc)|*.doc';
           dlgSave1.DefaultExt:='txt';
           dlgSave1.FilterIndex:=1;
          Form1.dlgSave1.Execute();
          if dlgSave1.Execute then
      if (dlgSave1.Filter = 'Форматированный текст (*.rtf)|*.rtf|Документ Word (*.doc)|*.doc') then  redt1.Lines.SaveToFile(dlgSave1.FileName)
      else richedit1.Lines.SaveToFile(dlgSave1.FileName);

       richedit1.Text :=Utf8ToAnsi(redt1.Text);
end;

procedure TForm1.N14Click(Sender: TObject);
begin
redt1.Print('Document');
end;

procedure TForm1.N15Click(Sender: TObject);
begin
Close;
end;

procedure TForm1.N16Click(Sender: TObject);
begin
form1.dlgFind1.Execute();
end;

procedure TForm1.dlgFind1Find(Sender: TObject);

var
   Found, StartPos: Integer;
begin
   if redt1.SelLength <> 0 then
      StartPos := redt1.SelStart + redt1.SelLength
   else
      StartPos := 0;
      

   Found := PosEx(dlgfind1.FindText, redt1.Text, StartPos + 1);
   if Found <> 0 then
   begin
      redt1.HideSelection := False;
      redt1.SelStart := Found - 1;
      redt1.SelLength := Length(dlgfind1.FindText);
   end
   else
      MessageDlg ('Строка "' + dlgfind1.FindText + '" не найдена!', mtConfirmation, [mbYes], 0);
end;

procedure TForm1.N23Click(Sender: TObject);
begin
redt1.SelText:=AnsiUpperCase(redt1.SelText);
end;

procedure TForm1.N24Click(Sender: TObject);
begin
   redt1.SelText:=AnsiLowerCase(redt1.SelText);
end;

procedure TForm1.N20Click(Sender: TObject);
begin
Form1.redt1.CutToClipboard;
end;

procedure TForm1.UTF81Click(Sender: TObject);
begin
redt1.Text :=AnsiToUtf8(redt1.Text);
end;

procedure TForm1.N26Click(Sender: TObject);
begin
redt1.Paragraph.Alignment:=taLeftJustify;
end;

procedure TForm1.N25Click(Sender: TObject);
begin
redt1.Paragraph.Alignment:=taRightJustify;
end;

procedure TForm1.N21Click(Sender: TObject);
begin
redt1.Paragraph.Alignment:=taCenter;
end;


procedure TForm1.img1DragDrop(Sender, Source: TObject; X, Y: Integer);
begin
//
end;

procedure TForm1.img1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
//
if b=true then begin
Timage(Sender).Left:=(Timage(Sender).Left+x-po.x);
Timage(Sender).Top:=(Timage(Sender).Top+y-po.y);
end else begin
po.x:=x;
po.y:=y;
b:=true;
nah_left:=img1.left;
nah_top:=img1.top;
end;
end;

procedure TForm1.img1EndDrag(Sender, Target: TObject; X, Y: Integer);
begin
begin
//
if TImage(target)=img1 then begin
 TImage(Sender).Left:=nah_left;
 TImage(Sender).Top:=nah_top;
 img1.Canvas.Draw(img1.Left,img1.Top,img1.Picture.Graphic);
 end;
 TImage(Sender).Left:=nah_left;
 TImage(Sender).Top:=nah_top;
 b:=false;
end;
end;

procedure TForm1.FormMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
redt1.SendToBack;
img1.BringToFront;
end;

procedure TForm1.FormMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
redt1.SendToBack;
img1.BringToFront;
end;

procedure TForm1.N27Click(Sender: TObject);
var s:string;
begin
form3.show;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
var
 s: TFileStream;
begin
{ s:= TFileStream.Create('bin/DATA.txt', fmCreate);       //skjrhfvwurshlivuserilesrilghlirshfjlrsljjvrusvsydrvyjsdrgvsyrgvsydv
 s.WriteComponent(Form1);
 s.Free;  }
 if redt1.Text <> '' then
//CanClose:=MessageBox(handle,pchar('Вы уверенны, что хотите закрыть программу?'+#13#10+'Все не сохраненные данные будут утеряны.'),pchar('Kromeo Text Editor'),36)=IDYes
end;

procedure TForm1.Jghjuhfvvt1Click(Sender: TObject);
begin
form4.show;
end;

procedure TForm1.redt1KeyPress(Sender: TObject; var Key: Char);
begin
case Ord(Key) of
    KEY_CTRL_B: begin
      Key := #0;
      if fsBold in (Sender as TRichEdit).SelAttributes.Style then
      (Sender as TRichEdit).SelAttributes.Style :=
        (Sender as TRichEdit).SelAttributes.Style - [fsBold] else
      (Sender as TRichEdit).SelAttributes.Style :=
        (Sender as TRichEdit).SelAttributes.Style + [fsBold];
    end;
    KEY_CTRL_I: begin
      Key := #0;
      if fsItalic in
      (Sender as TRichEdit).SelAttributes.Style then
        (Sender as TRichEdit).SelAttributes.Style := 
        (Sender as TRichEdit).SelAttributes.Style - [fsItalic]
      else
       (Sender as TRichEdit).SelAttributes.Style := 
       (Sender as TRichEdit).SelAttributes.Style + [fsItalic];
    end; 
    KEY_CTRL_S: begin
       Key := #0; 
      if fsStrikeout in 
      (Sender as TRichEdit).SelAttributes.Style then
        (Sender as TRichEdit).SelAttributes.Style := 
        (Sender as TRichEdit).SelAttributes.Style - [fsStrikeout]  
      else
        (Sender as TRichEdit).SelAttributes.Style :=
        (Sender as TRichEdit).SelAttributes.Style + [fsStrikeout]; 
    end; 
    KEY_CTRL_U: begin
       Key := #0; 
      if fsUnderline in 
      (Sender as TRichEdit).SelAttributes.Style then
        (Sender as TRichEdit).SelAttributes.Style :=
        (Sender as TRichEdit).SelAttributes.Style - [fsUnderline]  
      else
        (Sender as TRichEdit).SelAttributes.Style := 
        (Sender as TRichEdit).SelAttributes.Style + [fsUnderline]; 
    end;
  end; 
end;

procedure TForm1.N29Click(Sender: TObject);
begin
Form1.redt1.CopyToClipboard;
end;

procedure TForm1.N28Click(Sender: TObject);
begin
Form1.redt1.PasteFromClipboard;
end;

procedure TForm1.N31Click(Sender: TObject);
begin
Form1.redt1.ClearSelection;
end;

procedure TForm1.N33Click(Sender: TObject);
begin
Form1.redt1.Clear;
end;

procedure TForm1.FormCreate(Sender: TObject);
var 
 I :Integer;
 S: TFileStream;
begin
{For I:= Form1.ComponentCount-1 DownTo 0 do             //aefhgsufwsevhfgciuesgdifuwhesifgwysgfiywgrsyufgsurygfsuygrfuysrgfuysrygfuy
 Form1.Components [ i ].Free;
 S:= TFileStream.Create('bin/DATA.txt', fmOpenRead);
 Form1:= TForm1(S.ReadComponent(Form1.redt1));
 S.Free;  }

redt1.Text :=Utf8ToAnsi(redt1.Text);
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
     StatusBar1.Panels[3].Text := DateTimeToStr(Date + Time);
     StatusBar1.Panels.Items[2].Text:='Количество строк : '+IntToStr(redt1.Lines.Count);
     StatusBar1.Panels.Items[1].Text:='Количество символов : '+IntToStr(redt1.GetTextLen);


end;

procedure TForm1.ANSI1Click(Sender: TObject);
begin
redt1.Text :=Utf8ToAnsi(redt1.Text);
end;




procedure TForm1.N4Click(Sender: TObject);
begin

    if (n4.Checked =true) then begin
    form1.Timer2.Enabled:=false;
    n4.Checked:=false;
    end else
    if (n4.Checked =false) then begin
    form1.Timer2.Enabled:=true;
    n4.Checked:=true;
    end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
Var p:TPoint;
begin




p:=redt1.CaretPos;
HightLight_Syntax(redt1);
begin
redt1.CaretPos:=p;
end;



end;

procedure TForm1.N30Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
    begin
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    InsertBitmapToRE(redt1.Handle, Image1.Picture.Bitmap.Handle);
end;end;

procedure TForm1.N32Click(Sender: TObject);
begin
    if (n32.Checked =true) then begin
    form1.Panel1.Visible:=false;
    n32.Checked:=false;
    end else
    if (n32.Checked =false) then begin
    form1.Panel1.Visible:=true;
    n32.Checked:=true;
    end;
end;

procedure TForm1.N34Click(Sender: TObject);
begin
    if (n34.Checked =true) then begin
    //false
    n34.Checked:=false;
    end else
    if (n34.Checked =false) then begin
    //true
    n34.Checked:=true;
    end;
end;

procedure TForm1.SpeedButton20Click(Sender: TObject);
begin
Form1.redt1.SelAttributes.Style:=[fsbold];
end;

procedure TForm1.SpeedButton21Click(Sender: TObject);
begin
Form1.redt1.SelAttributes.Style:=[fsitalic];
end;

procedure TForm1.SpeedButton22Click(Sender: TObject);
begin
Form1.redt1.SelAttributes.Style:=[fsunderline];
end;

procedure TForm1.SpeedButton23Click(Sender: TObject);
begin
Form1.redt1.SelAttributes.Style:=[];
end;

end.
