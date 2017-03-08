//---------------------------------------------------------------------------
//
//    TCGroupBox
//    (C) Eddy Productions 2003
//
//    Version 1.1
//
//---------------------------------------------------------------------------
#include <vcl.h>
#pragma hdrstop

#include "CGroupBox.h"
#pragma package(smart_init)

#define DEFAULT_MARGIN     4     // default caption margin
#define DEFAULT_OFFSET     8     // default caption offset

static inline void ValidCtrCheck(TCGroupBox *)
{
   new TCGroupBox(NULL);
}
//---------------------------------------------------------------------------
namespace Cgroupbox
{
   void __fastcall PACKAGE Register()
   {
       TComponentClass classes[1] = {__classid(TCGroupBox)};
       RegisterComponents("Extra", classes, 0);
   }
}
//---------------------------------------------------------------------------
__fastcall TCGroupBox::TCGroupBox(TComponent* Owner)
   : TGroupBox(Owner)
{
   FColorLight=clBtnHighlight;
   FColorShadow=clBtnShadow;
   FMargin=-1;
   FOffset=-1;
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetCaption(const AnsiString aCaption)
{
   TGroupBox::Caption=aCaption;
   if (Parent) Parent->Invalidate();
   Invalidate();
}
//---------------------------------------------------------------------------
AnsiString __fastcall TCGroupBox::GetCaption()
{
   return TGroupBox::Caption;
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetColorLight(TColor aValue)
{
   FColorLight=aValue;
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetColorShadow(TColor aValue)
{
   FColorShadow=aValue;
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetCaptionPos(TAlignment aValue)
{
   FCaptionPos=aValue;
   if (Parent) Parent->Invalidate();
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetMargin(short aValue)
{
   FMargin=aValue;
   if (Parent) Parent->Invalidate();
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::SetOffset(short aValue)
{
   FOffset=aValue;
   if (Parent) Parent->Invalidate();
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::WMMove(TMessage &Msg)
{
   if (Parent) Parent->Invalidate();
   Invalidate();
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::AdjustClientRect(TRect &r)
{
//   TGroupBox::AdjustClientRect(r);
   Canvas->Font=Font;
   r.Top+=Canvas->TextHeight("0")/2;
   InflateRect(&r,-1,-1);
   if (Ctl3D) InflateRect(&r,-1,-1);
}
//---------------------------------------------------------------------------
void __fastcall TCGroupBox::Paint()
{
   int o,m,w,h;
   TRect r2,r=Rect(0,0,Width,Height);
   TAlignment Pos=FCaptionPos;

   o=FOffset;
   if (o<0) o=DEFAULT_OFFSET;
   m=FMargin;
   if (m<0) m=DEFAULT_MARGIN;
   h=Canvas->TextHeight("0")/2;

   if (Ctl3D)
   {
      ++r.Left;
      ++r.Top;
      Canvas->Brush->Color=FColorLight;
      Canvas->FrameRect(r);
      OffsetRect(&r,-1,-1);
   }
   Canvas->Brush->Color=FColorShadow;
   Canvas->FrameRect(r);
   if (Ctl3D)
   {
      ++r.Left;
      ++r.Top;
   }
   InflateRect(&r,-1,-1);
   Canvas->Brush->Color=Color;
   Canvas->FillRect(r);

   if (Text!="")
   {
      w=Canvas->TextWidth(Text);
      if (UseRightToLeftAlignment() && FCaptionPos==taLeftJustify) Pos=taRightJustify;
      if (Pos==taLeftJustify)
      {
         r=Rect(o+m,-h,o+w+m*2,h+1);
         r2=Rect(o,0,o+w+m*2,1);
      }
      else if (Pos==taRightJustify)
      {
         r=Rect(r.Right-w-o-m,-h,r.Right-o,h+1);
         r2=Rect(r.Right-w-m*2,0,r.Right-o,1);
      }
      else        // centered
      {
         r=Rect((Width-w)/2,-h,(Width+w)/2,h+1);
         r2=Rect((Width-w)/2-m,0,(Width+w)/2+m,1);
      }
      if (Ctl3D) ++r2.Bottom;
      Canvas->FillRect(r2);
      Canvas->Font=Font;
      Canvas->TextRect(r,r.Left,r.Top,Text);

      if (Parent)
      {
         HDC DC;
         TCanvas *pCanvas=new TCanvas;
         TFont *pFont=new TFont;
         TBrush *pBrush=new TBrush;

         OffsetRect(&r,Left,Top);

         // save parent's brush & font:
         pFont->Assign(pCanvas->Font);
         pBrush->Assign(pCanvas->Brush);

         DC=GetDC(Parent->Handle);
         pCanvas->Handle=DC;
         pCanvas->Font->Assign(Canvas->Font);
         pCanvas->Brush->Assign(Canvas->Brush);
         pCanvas->Brush->Style=bsClear;
         pCanvas->TextRect(r,r.Left,r.Top,Text);
         ReleaseDC(Parent->Handle,DC);

         // restore parent's brush & font:
         pCanvas->Font->Assign(pFont);
         pCanvas->Brush->Assign(pBrush);

         delete pBrush;
         delete pFont;
         delete pCanvas;
      }
   }
}
//---------------------------------------------------------------------------

