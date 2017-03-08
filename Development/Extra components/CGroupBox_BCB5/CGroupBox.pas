//---------------------------------------------------------------------------
//
//    TCGroupBox
//    (C) Eddy Productions 2003
//
//    Version 1.2 - translated from CGroupBox.cpp by Eddy
//
//---------------------------------------------------------------------------

unit CGroupBox;

interface

uses Windows,StdCtrls,Classes,Graphics,Messages;

type TCGroupBox=class(TGroupBox)
private
   FMargin,FOffset:shortint;
   FCaptionPos:TAlignment;
   FColorLight,FColorShadow:TColor;

protected
   procedure SetCaption(const aCaption:string);
   function GetCaption:string;
   procedure SetMargin(aValue:shortint);
   procedure SetOffset(aValue:shortint);
   procedure SetCaptionPos(aValue:TAlignment);
   procedure SetColorLight(aValue:TColor);
   procedure SetColorShadow(aValue:TColor);
   procedure WMMove(var Msg:TMessage); message WM_MOVE;
   procedure WMSize(var Msg:TMessage); message WM_SIZE;
   procedure AdjustClientRect(var r:TRect);
   procedure Paint; override;

public
   constructor Create(Owner:TComponent); override;

published
   property Caption:string read GetCaption write SetCaption;
   property Margin:shortint read FMargin write SetMargin;
   property Offset:shortint read FOffset write SetOffset;
   property CaptionPos:TAlignment read FCaptionPos write SetCaptionPos;
   property ColorLight:TColor read FColorLight write SetColorLight;
   property ColorShadow:TColor read FColorShadow write SetColorShadow;
end;
//---------------------------------------------------------------------------

procedure Register;

const
	DEFAULT_MARGIN=4;    	// default caption margin
   DEFAULT_OFFSET=8;    	// default caption offset

//---------------------------------------------------------------------------

implementation

constructor TCGroupBox.Create(Owner:TComponent);
begin
	inherited;
   FColorLight:=clBtnHighlight;
   FColorShadow:=clBtnShadow;
   FMargin:=-1;
   FOffset:=-1;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetCaption(const aCaption:string);
begin
   inherited Caption:=aCaption;
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
function TCGroupBox.GetCaption:string;
begin
   Result:=inherited Caption;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetColorLight(aValue:TColor);
begin
   FColorLight:=aValue;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetColorShadow(aValue:TColor);
begin
   FColorShadow:=aValue;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetCaptionPos(aValue:TAlignment);
begin
   FCaptionPos:=aValue;
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetMargin(aValue:shortint);
begin
   FMargin:=aValue;
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.SetOffset(aValue:shortint);
begin
   FOffset:=aValue;
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.WMMove(var Msg:TMessage);
begin
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.WMSize(var Msg:TMessage);
begin
   if Assigned(Parent) then Parent.Invalidate;
   Invalidate;
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.AdjustClientRect(var r:TRect);
begin
   Canvas.Font:=Font;
   inc(r.Top,Canvas.TextHeight('0') div 2);
   InflateRect(r,-1,-1);
   if (Ctl3D) then InflateRect(r,-1,-1);
end;
//---------------------------------------------------------------------------
procedure TCGroupBox.Paint;
var
	DC:HDC;
   o,m,w,h:integer;
   r2,r:TRect;
   Pos:TAlignment;
   pCanvas:TCanvas;
   pFont:TFont;
   pBrush:TBrush;
begin
	r:=Rect(0,0,Width,Height);
   Pos:=FCaptionPos;

   o:=FOffset;
   if (o<0) then o:=DEFAULT_OFFSET;
   m:=FMargin;
   if (m<0) then m:=DEFAULT_MARGIN;
   h:=Canvas.TextHeight('0') div 2;

   if (Ctl3D) then
   begin
      inc(r.Left);
      inc(r.Top);
      Canvas.Brush.Color:=FColorLight;
      Canvas.FrameRect(r);
      OffsetRect(r,-1,-1);
   end;
   Canvas.Brush.Color:=FColorShadow;
   Canvas.FrameRect(r);
   if (Ctl3D) then
   begin
      inc(r.Left);
      inc(r.Top);
   end;
   InflateRect(r,-1,-1);
   Canvas.Brush.Color:=Color;
   Canvas.FillRect(r);

   if (Text<>'') then
   begin
      w:=Canvas.TextWidth(Text);
// Uncomment following line for Delphi versions 4 and up:      
//      if (UseRightToLeftAlignment and FCaptionPos=taLeftJustify) then Pos:=taRightJustify;
      if (Pos=taLeftJustify) then
      begin
         r:=Rect(o+m,-h,o+w+m*2,h+1);
         r2:=Rect(o,0,o+w+m*2,1);
      end
      else if (Pos=taRightJustify) then
      begin
         r:=Rect(r.Right-w-o-m,-h,r.Right-o,h+1);
         r2:=Rect(r.Right-w-m*2,0,r.Right-o,1);
      end
      else        // centered
      begin
         r:=Rect((Width-w) div 2,-h,(Width+w) div 2,h+1);
         r2:=Rect((Width-w) div 2-m,0,(Width+w) div 2+m,1);
      end;
      if (Ctl3D) then inc(r2.Bottom);
      Canvas.FillRect(r2);
      Canvas.Font:=Font;
      Canvas.TextRect(r,r.Left,r.Top,Text);

      if Assigned(Parent) then
      begin
         pCanvas:=TCanvas.Create;
         pFont:=TFont.Create;
         pBrush:=TBrush.Create;

         OffsetRect(r,Left,Top);

         // save parent's brush & font:
         pFont.Assign(pCanvas.Font);
         pBrush.Assign(pCanvas.Brush);

         DC:=GetDC(Parent.Handle);
         pCanvas.Handle:=DC;
         pCanvas.Font.Assign(Canvas.Font);
         pCanvas.Brush.Assign(Canvas.Brush);
         pCanvas.Brush.Style:=bsClear;
         pCanvas.TextRect(r,r.Left,r.Top,Text);
         ReleaseDC(Parent.Handle,DC);

         // restore parent's brush & font:
         pCanvas.Font.Assign(pFont);
         pCanvas.Brush.Assign(pBrush);

         pBrush.Free;
         pFont.Free;
         pCanvas.Free;
      end;
   end;
end;
//---------------------------------------------------------------------------

procedure Register;
begin
   RegisterComponents('Additional',[TCGroupBox]);
end;
//---------------------------------------------------------------------------

end.

