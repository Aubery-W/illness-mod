//---------------------------------------------------------------------------

#ifndef PropertiesH
#define PropertiesH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include <ComCtrls.hpp>
//---------------------------------------------------------------------------
class TfrmProperties : public TForm
{
__published:	// IDE-managed Components
    TPageControl *PageControl1;
    TTabSheet *TabSheet1;
    TGroupBox *GroupBox1;
    TLabel *LabelShutterMin;
    TLabel *LabelShutterMax;
    TScrollBar *HScrollShutter;
    TEdit *TextShutter;
    TScrollBar *HScrollGain;
    TEdit *TextGain;
    TLabel *LabelGainMin;
    TLabel *LabelGainMax;
    TLabel *Label5;
    TLabel *Label6;
    TGroupBox *WhiteBalance;
    TLabel *LabelUMin;
    TLabel *LabelUMax;
    TLabel *LabelVMin;
    TLabel *LabelVMax;
    TLabel *Label7;
    TLabel *Label8;
    TScrollBar *HScrollU;
    TEdit *TextU;
    TScrollBar *HScrollV;
    TEdit *TextV;
    TGroupBox *GroupBox2;
    TComboBox *ComboVideoMode;
    TGroupBox *GroupBox3;
    TComboBox *ComboADCLevel;
    TGroupBox *GroupBox4;
    TLabel *Label1;
    TComboBox *ComboBayerToRGB;
    TLabel *Label2;
    TComboBox *ComboConversionType;
    void __fastcall FormCreate(TObject *Sender);
    void __fastcall ComboVideoModeChange(TObject *Sender);
    void __fastcall ComboADCLevelChange(TObject *Sender);
    void __fastcall ComboBayerToRGBChange(TObject *Sender);
    void __fastcall ComboConversionTypeChange(TObject *Sender);
    void __fastcall HScrollShutterScroll(TObject *Sender,
          TScrollCode ScrollCode, int &ScrollPos);
    void __fastcall TextShutterKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall TextShutterExit(TObject *Sender);
    void __fastcall HScrollGainScroll(TObject *Sender,
          TScrollCode ScrollCode, int &ScrollPos);
    void __fastcall TextGainKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall TextGainExit(TObject *Sender);
    void __fastcall HScrollUScroll(TObject *Sender, TScrollCode ScrollCode,
          int &ScrollPos);
    void __fastcall TextUKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall TextUExit(TObject *Sender);
    void __fastcall HScrollVScroll(TObject *Sender, TScrollCode ScrollCode,
          int &ScrollPos);
    void __fastcall TextVKeyDown(TObject *Sender, WORD &Key,
          TShiftState Shift);
    void __fastcall TextVExit(TObject *Sender);
private:	// User declarations
public:		// User declarations
    __fastcall TfrmProperties(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfrmProperties *frmProperties;
//---------------------------------------------------------------------------
#endif
