//---------------------------------------------------------------------------

#ifndef Unit1H
#define Unit1H
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "CGroupBox.h"
#include <ExtCtrls.hpp>
#include "RxGIF.hpp"
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
   TCGroupBox *CGroupBox1;
   TGroupBox *GroupBox1;
   TLabel *Label1;
   TLabel *Label2;
   TImage *Image1;
   TCGroupBox *CGroupBox3;
   TLabel *Label4;
   TStaticText *StaticText3;
   TStaticText *StaticText4;
   TStaticText *StaticText5;
   TStaticText *StaticText6;
   TStaticText *StaticText7;
   TLabel *Label3;
private:	// User declarations
public:		// User declarations
   __fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
