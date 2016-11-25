unit JamDigital;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, XPMan, ExtCtrls;

type
  TFJam = class(TForm)
    lbl_dtk: TLabel;
    btn_klik: TBitBtn;
    lbl_jam: TLabel;
    lbl_mnt: TLabel;
    xpmnfst1: TXPManifest;
    btn1: TBitBtn;
    pnl_tgl: TPanel;
    pnl_bln: TPanel;
    pnl_thn: TPanel;
    procedure lbl_dtkClick(Sender: TObject);
    procedure btn_klikClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FJam: TFJam;

implementation

uses JamDigitalTgl;



{$R *.dfm}

procedure TFJam.lbl_dtkClick(Sender: TObject);
var
  dtk : Integer;
begin
  dtk := StrToInt(lbl_dtk.Caption);
  dtk := dtk+1;
  lbl_dtk.Caption := IntToStr(dtk);
end;

procedure TFJam.btn_klikClick(Sender: TObject);
var
  dtk,mnt,jam,tgl,bln,thn,n : Integer;
begin
  dtk := StrToInt(lbl_dtk.Caption);
  mnt := StrToInt(lbl_mnt.Caption);
  jam := StrToInt(lbl_jam.Caption);
  tgl := StrToInt(pnl_tgl.Caption);
  bln := StrToInt(pnl_bln.Caption);
  thn := StrToInt(pnl_thn.Caption);
  if (bln=1)or(bln=3)or(bln=5)or(bln=7)or(bln=8)or(bln=10)or(bln=12) then begin
    n:=31;
    end
    else
  if (bln=4)or(bln=6)or(bln=9)or(bln=11) then begin
      n:=30;
  end
  else
  if bln=2 then begin
    if (thn mod 400=0) then begin
    n:=29;
    end
    else
    if (thn mod 100=0) then begin
    n:=28;
    end
    else
    if (thn mod 4=0) then begin
    n:=29;
    end
    else
    n:=28;
  end;
  dtk:=dtk+1;
  if dtk > 59 then begin
    dtk:=0;
    mnt:=mnt+1;
    if mnt > 59 then begin
      mnt:=0;
      jam:=jam+1;
      if jam > 23 then begin
        jam:=0;
        tgl:=tgl+1;
          if tgl > n then begin
            tgl:=1;
            bln:=bln+1;
            if bln > 12 then begin
              bln:=1;
              thn:=thn+1;
            end;
          end;
      end;

    end;
  end;

  lbl_dtk.Caption := IntToStr(dtk);
  lbl_mnt.Caption := IntToStr(mnt);
  lbl_jam.Caption := IntToStr(jam);
  pnl_tgl.Caption := IntToStr(tgl);
  pnl_bln.Caption := IntToStr(bln);
  pnl_thn.Caption := IntToStr(thn);
end;

procedure TFJam.btn1Click(Sender: TObject);
begin
FFoto.show;
end;

end.
