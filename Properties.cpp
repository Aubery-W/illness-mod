//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "Properties.h"
#include "Main.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfrmProperties *frmProperties;
//---------------------------------------------------------------------------
__fastcall TfrmProperties::TfrmProperties(TComponent* Owner)
    : TForm(Owner)
{
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::FormCreate(TObject *Sender)
{
    long Min = 0, Max = 0;
    long Width = 0, Height = 0;

    MainFrm->HVDevice->GetPropertyValueRange(2, &Min, &Max);
    LabelShutterMin->Caption = IntToStr(Min);
    LabelShutterMax->Caption = IntToStr(Max);
    HScrollShutter->Min = Min;
    HScrollShutter->Max = Max;
    HScrollShutter->Position = MainFrm->HVDevice->Shutter;
    TextShutter->Text = IntToStr(MainFrm->HVDevice->Shutter);

    MainFrm->HVDevice->GetPropertyValueRange(3, &Min, &Max);
    LabelGainMin->Caption = IntToStr(Min);
    LabelGainMax->Caption = IntToStr(Max);
    HScrollGain->Min = Min;
    HScrollGain->Max = Max;
    HScrollGain->Position = MainFrm->HVDevice->Gain;
    TextGain->Text = IntToStr(MainFrm->HVDevice->Gain);

    LabelUMin->Caption = "10" ;
    LabelUMax->Caption = "500" ;
    HScrollU->Min = 10 ;
    HScrollU->Max = 500;
    HScrollU->Position = MainFrm->HVDevice->GainB;
    TextU->Text = IntToStr(MainFrm->HVDevice->GainB);
    
    LabelVMin->Caption = "10" ;
    LabelVMax->Caption = "500";
    HScrollV->Min = 10;
    HScrollV->Max = 500 ;
    HScrollV->Position  = MainFrm->HVDevice->GainR;
    TextV->Text = IntToStr(MainFrm->HVDevice->GainR);
    
    MainFrm->HVDevice->GetPropertyValueRange(1, &Min, &Max);
    ComboVideoMode->Clear();
    for (int i = Min; i <= Max; ++i )
    {
        MainFrm->HVDevice->GetSensorSize(i, &Width, &Height);
        ComboVideoMode->Items->Add ("Mode " + IntToStr(i) + " ( " + IntToStr(Width) + " * " + IntToStr(Height) + " )") ;
    }
    ComboVideoMode->ItemIndex = MainFrm->HVDevice->Resolution;

    ComboADCLevel->Clear();
    for (int i = 0; i < 4; ++i )
    {
        ComboADCLevel->Items->Add("ADC Level " + IntToStr(i));
    }
    ComboADCLevel->ItemIndex = MainFrm->HVDevice->ADCLevel;

    ComboBayerToRGB->Clear();
    ComboBayerToRGB->Items->Add ("Disabled");
    ComboBayerToRGB->Items->Add ("Enabled ( GBRG )");
    ComboBayerToRGB->Items->Add ("Enabled ( GRBG )");
    ComboBayerToRGB->Items->Add ("Enabled ( BGGR )");
    ComboBayerToRGB->Items->Add  ("Enabled ( RGGB )");
    ComboBayerToRGB->ItemIndex = MainFrm->HVDevice->BayerToRGBConversion;

    ComboConversionType->Clear();
    ComboConversionType->Items->Add ("Fast");
    ComboConversionType->Items->Add  ("Normal");
    ComboConversionType->Items->Add ("Best");
    ComboConversionType->ItemIndex = MainFrm->HVDevice->ConversionType;

}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::ComboVideoModeChange(TObject *Sender)
{
    MainFrm->HVDevice->Resolution = ComboVideoMode->ItemIndex;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::ComboADCLevelChange(TObject *Sender)
{
    MainFrm->HVDevice->ADCLevel = ComboADCLevel->ItemIndex;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::ComboBayerToRGBChange(TObject *Sender)
{
    MainFrm->HVDevice->BayerToRGBConversion = ComboBayerToRGB->ItemIndex;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::ComboConversionTypeChange(TObject *Sender)
{
    MainFrm->HVDevice->ConversionType = ComboConversionType->ItemIndex;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::HScrollShutterScroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
    TextShutter->Text = IntToStr(HScrollShutter->Position);
    MainFrm->HVDevice->Shutter = HScrollShutter->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextShutterKeyDown(TObject *Sender,
      WORD &Key, TShiftState Shift)
{
    if (Key == VK_RETURN)
    {
        HScrollShutter->Position = StrToInt(TextShutter->Text);
        MainFrm->HVDevice->Shutter = HScrollShutter->Position ;
    }
}
//---------------------------------------------------------------------------


void __fastcall TfrmProperties::TextShutterExit(TObject *Sender)
{
    HScrollShutter->Position = StrToInt(TextShutter->Text);
    MainFrm->HVDevice->Shutter = HScrollShutter->Position ;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::HScrollGainScroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
    TextGain->Text = IntToStr(HScrollGain->Position);
    MainFrm->HVDevice->Gain = HScrollGain->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextGainKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key == VK_RETURN)
    {
        HScrollGain->Position = StrToInt(TextGain->Text );
        MainFrm->HVDevice->Gain = HScrollGain->Position;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextGainExit(TObject *Sender)
{
    HScrollGain->Position = StrToInt(TextGain->Text );
    MainFrm->HVDevice->Gain = HScrollGain->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::HScrollUScroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
    TextU->Text = IntToStr(HScrollU->Position);
    MainFrm->HVDevice->GainB = HScrollU->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextUKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key == VK_RETURN)
    {
        HScrollU->Position = StrToInt(TextU->Text);
        MainFrm->HVDevice->GainB = HScrollU->Position;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextUExit(TObject *Sender)
{
    HScrollU->Position = StrToInt(TextU->Text);
    MainFrm->HVDevice->GainB = HScrollU->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::HScrollVScroll(TObject *Sender,
      TScrollCode ScrollCode, int &ScrollPos)
{
    TextV->Text = IntToStr(HScrollV->Position );
    MainFrm->HVDevice->GainR = HScrollV->Position;
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextVKeyDown(TObject *Sender, WORD &Key,
      TShiftState Shift)
{
    if (Key == VK_RETURN)
    {
        HScrollV->Position = StrToInt(TextV->Text );
        MainFrm->HVDevice->GainR = HScrollV->Position;
    }
}
//---------------------------------------------------------------------------

void __fastcall TfrmProperties::TextVExit(TObject *Sender)
{
    HScrollV->Position = StrToInt(TextV->Text);
    MainFrm->HVDevice->GainR = HScrollV->Position ;
}
//---------------------------------------------------------------------------




