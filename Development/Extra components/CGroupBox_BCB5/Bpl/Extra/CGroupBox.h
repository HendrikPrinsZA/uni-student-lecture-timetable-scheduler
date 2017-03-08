//---------------------------------------------------------------------------

#ifndef CGroupBoxH
#define CGroupBoxH
//---------------------------------------------------------------------------
#include <SysUtils.hpp>
#include <Controls.hpp>
#include <Classes.hpp>
#include <Forms.hpp>
#include <StdCtrls.hpp>
//---------------------------------------------------------------------------

class PACKAGE TCGroupBox : public TGroupBox
{
private:
   short FMargin,FOffset;
   TAlignment FCaptionPos;
   TColor FColorLight,FColorShadow;

protected:
   virtual void __fastcall SetCaption(const AnsiString aCaption);
   virtual AnsiString __fastcall GetCaption();
   void __fastcall SetMargin(short aValue);
   void __fastcall SetOffset(short aValue);
   void __fastcall SetCaptionPos(TAlignment aValue);
   void __fastcall SetColorLight(TColor aValue);
   void __fastcall SetColorShadow(TColor aValue);
   virtual MESSAGE void __fastcall WMMove(TMessage &Msg);
   virtual void __fastcall AdjustClientRect(TRect &r);
   virtual void __fastcall Paint();

BEGIN_MESSAGE_MAP
   VCL_MESSAGE_HANDLER (WM_MOVE,TMessage,WMMove);
   VCL_MESSAGE_HANDLER (WM_SIZE,TMessage,WMMove);
END_MESSAGE_MAP (TGroupBox);

public:
   __fastcall TCGroupBox(TComponent* Owner);
   
__published:
   __property AnsiString Caption={ read=GetCaption, write=SetCaption };
   __property short Margin={ read=FMargin, write=SetMargin };
   __property short Offset={ read=FOffset, write=SetOffset };
   __property TAlignment CaptionPos={ read=FCaptionPos, write=SetCaptionPos };
   __property TColor ColorLight={ read=FColorLight, write=SetColorLight };
   __property TColor ColorShadow={ read=FColorShadow, write=SetColorShadow };
};
//---------------------------------------------------------------------------
#endif
