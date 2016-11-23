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
  dtk,mnt,jam,tgl,bln,thn : Integer;
begin
  dtk := StrToInt(lbl_dtk.Caption);
  mnt := StrToInt(lbl_mnt.Caption);
  jam := StrToInt(lbl_jam.Caption);
  tgl := StrToInt(pnl_tgl.Caption);
  bln := StrToInt(pnl_bln.Caption);
  thn := StrToInt(pnl_thn.Caption);
  dtk := dtk+1;
  if dtk = 60 then begin
    dtk := 0;
    mnt := mnt+1;
    if mnt = 60 then begin
      dtk := 0;
      mnt := 0;
      jam := jam+1;
      if jam = 24 then begin
       dtk := 0;
       mnt := 0;
       jam := 0;
       tgl := tgl+1;
       if tgl = 31 then begin
        dtk := 0;
        mnt := 0;
        jam := 0;
        tgl := 1;
        bln := bln+1;
        if bln = 13 then begin
          dtk := 1;
          mnt := 0;
          jam := 0;
          tgl := 1;
          bln := 1;
          thn := thn+1;
        end;
       end;
      end;
    end;
  end;
  if bln = 13 then bln:=0;
  if tgl = 32 then tgl:=0;

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
