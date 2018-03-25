char* WcharToChar(const wchar_t* wp)
{
    char *m_char;
    int len= WideCharToMultiByte(CP_ACP,0,wp,wcslen(wp),NULL,0,NULL,NULL);
    m_char=new char[len+1];
    WideCharToMultiByte(CP_ACP,0,wp,wcslen(wp),m_char,len,NULL,NULL);
    m_char[len]='\0';
    return m_char;
}
//--------------------------------------------------------
//---------------------------------------------------------------------------
 void filename(char s[],struct date *day, struct time *t)
 {
// gettime(t);
  int i;

  if(t->ti_hund>=100)
   {
	t->ti_hund-=100;
	t->ti_sec+=1;                       //gettime(&t);
   }
  if(t->ti_sec>=60)
   {
	t->ti_sec-=60;
	t->ti_min+=1;
   }
  if(t->ti_min>=60)
   {
	t->ti_min-=60;
	t->ti_hour+=1;
   }
  i=day->da_year;
  s[0]=i/1000+48;
  s[1]=i/100-i/1000*10+48;
  s[2]=i/10-i/100*10+48;
  s[3]=i-i/10*10+48;
  i=day->da_mon;
  s[4]=i/10+48;
  s[5]=i-i/10*10+48;
  i=day->da_day;
  s[6]=i/10+48;
  s[7]=i-i/10*10+48;
  i=t->ti_hour;
  s[8]=i/10+48;
  s[9]=i-i/10*10+48;
  i=t->ti_min;
  s[10]=i/10+48;
  s[11]=i-i/10*10+48;
  i=t->ti_sec;
  s[12]=i/10+48;
  s[13]=i-i/10*10+48;
  s[14]='.';
  i=t->ti_hund;
  s[15]=i/10+48;
  s[16]=i-i/10*10+48;
  s[17]='p';
  s[18]='\0';
 }
 