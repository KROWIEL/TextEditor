unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TForm3 = class(TForm)
    BitBtn1: TBitBtn;
    ListBox1: TListBox;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox2: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Panel1: TPanel;
    Panel2: TPanel;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    ColorBox1: TColorBox;
    ColorBox2: TColorBox;
    BitBtn2: TBitBtn;
    procedure ListBox1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure ColorBox1Change(Sender: TObject);
    procedure ColorBox2Change(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
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

procedure TForm3.ListBox1Click(Sender: TObject);

begin
// NEW INDEX 0 DEFAULT
 if (listbox1.ItemIndex=0) then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00E3E3E3;
 form1.redt1.font.Color:=$00000000;
  panel1.Color:=$00000000;
  panel2.Color:=$00E3E3E3;
  end;

// NEW INDEX 1
 if (listbox1.ItemIndex=1) then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$001C212A;
 form1.redt1.font.Color:=$009DAEBD;
  panel1.Color:=$009DAEBD;
  panel2.Color:=$001C212A;
  end;

   // NEW INDEX  2
 if listbox1.ItemIndex=2 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$0021100C;
 form1.redt1.font.Color:=$00F8F8F8;
 panel1.Color:=$00F8F8F8;
 panel2.Color:=$0021100C;
  end;

 // NEW INDEX    3
 if listbox1.ItemIndex=3 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$000B0F1A;
 form1.redt1.font.Color:=$0098BEC3;
 panel1.Color:=$0098BEC3;
 panel2.Color:=$000B0F1A;
  end;

 // NEW INDEX  4
 if listbox1.ItemIndex=4 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00000000;
 form1.redt1.font.Color:=$00FFFFFF;
 panel1.Color:=$00FFFFFF;
 panel2.Color:=$00000000;
  end;

 // NEW INDEX   5
 if listbox1.ItemIndex=5 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00FFB0FF;
 form1.redt1.font.Color:=$00000000;
 panel1.Color:=$00000000;
 panel2.Color:=$00FFB0FF;
  end;

 // NEW INDEX   6
 if listbox1.ItemIndex=6 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00010F2B;
 form1.redt1.font.Color:=$005D97B7;
 panel1.Color:=$005D97B7;
 panel2.Color:=$00010F2B;
  end;

 // NEW INDEX    7
 if listbox1.ItemIndex=7 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00AFD7D7;
 form1.redt1.font.Color:=$00005F5F;
 panel1.Color:=$00005F5F;
 panel2.Color:=$00AFD7D7;
  end;

 // NEW INDEX     8
 if listbox1.ItemIndex=8 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00282C22;
 form1.redt1.font.Color:=$00FFFFFF;
 panel1.Color:=$00FFFFFF;
 panel2.Color:=$00282C22;
  end;

 // NEW INDEX      9
 if listbox1.ItemIndex=9 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00222827;
 form1.redt1.font.Color:=$00F2F8F8;
 panel1.Color:=$00F2F8F8;
 panel2.Color:=$00222827;
  end;

 // NEW INDEX     10
 if listbox1.ItemIndex=10 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$003D6958;
 form1.redt1.font.Color:=$0076C4F2;
 panel1.Color:=$0076C4F2;
 panel2.Color:=$003D6958;
  end;

 // NEW INDEX      11
 if listbox1.ItemIndex=11 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00809CBA;
 form1.redt1.font.Color:=$00000000;
 panel1.Color:=$00000000;
 panel2.Color:=$00809CBA;
  end;

 // NEW INDEX     12
 if listbox1.ItemIndex=12 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00343129;
 form1.redt1.font.Color:=$00E4E2E0;
 panel1.Color:=$00E4E2E0;
 panel2.Color:=$00343129;
  end;

 // NEW INDEX    13
 if listbox1.ItemIndex=13 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$001D160B;
 form1.redt1.font.Color:=$00F8F8F8;
 panel1.Color:=$00F8F8F8;
 panel2.Color:=$001D160B;
  end;

 // NEW INDEX     14
 if listbox1.ItemIndex=14 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00352411;
 form1.redt1.font.Color:=$00E1FFB9;
 panel1.Color:=$00E1FFB9;
 panel2.Color:=$00352411;
  end;

 // NEW INDEX      15
 if listbox1.ItemIndex=15 then begin
 GroupBox5.Visible:=false;
 form1.redt1.color:=$00141414;
 form1.redt1.font.Color:=$00F8F8F8;
 panel1.Color:=$00F8F8F8;
 panel2.Color:=$00141414;
  end;

  // NEW INDEX 16 CUSTOM
 if (listbox1.ItemIndex=16) then begin
  GroupBox5.Visible:=true;
  form1.redt1.color:=ColorBox2.Selected;
  form1.redt1.font.Color:=ColorBox1.Selected;
  panel1.Color:=ColorBox1.Selected;
  panel2.Color:=ColorBox2.Selected;
  end;


end;

procedure TForm3.FormCreate(Sender: TObject);
begin
ComboBox1.Items := Screen.Fonts;
ComboBox1.ItemIndex := 0;



end;

procedure TForm3.ComboBox2Change(Sender: TObject);
begin
form1.redt1.font.Size:=strtoint(ComboBox2.Items[ComboBox2.ItemIndex]);
end;

procedure TForm3.ComboBox1Change(Sender: TObject);
begin
form1.redt1.font.Name:=ComboBox1.Items[ComboBox1.ItemIndex];
end;

procedure TForm3.ColorBox1Change(Sender: TObject);
begin
if (listbox1.ItemIndex=16) then begin
  GroupBox5.Visible:=true;
  form1.redt1.color:=ColorBox2.Selected;
  form1.redt1.font.Color:=ColorBox1.Selected;
  panel1.Color:=ColorBox1.Selected;
  panel2.Color:=ColorBox2.Selected;
  end;
end;

procedure TForm3.ColorBox2Change(Sender: TObject);
begin
if (listbox1.ItemIndex=16) then begin
  GroupBox5.Visible:=true;
  form1.redt1.color:=ColorBox2.Selected;
  form1.redt1.font.Color:=ColorBox1.Selected;
  panel1.Color:=ColorBox1.Selected;
  panel2.Color:=ColorBox2.Selected;
  end;
  
end;

procedure TForm3.BitBtn2Click(Sender: TObject);
begin
 form1.redt1.color:=$00E3E3E3;
 form1.redt1.font.Color:=$00000000;
 form1.redt1.Font.Size:=11;
 form1.redt1.font.Name:='Trebuchet MS';
 form1.redt1.Font.Style:=[];
 form3.Close;
end;

procedure TForm3.BitBtn1Click(Sender: TObject);
begin
form3.Close;
end;

end.
