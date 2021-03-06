uses DOS, CRT, RTC;

var
   year, month, day, DOW, hour, min, sec, sec100: Word;

begin
     initRTC;
     year := getRTCreg(RTC_year);
     if year < 50 then year := year + 2000 else year := year + 1900;
     month := getRTCreg(RTC_month);
     day := getRTCreg(RTC_day);
     hour := getRTCreg(RTC_hour);
     min := getRTCreg(RTC_minute);
     sec := getRTCreg(RTC_second);
     SetDate(year, month, day);
     SetTime(Hour, min, sec, 0);
     GetDate(year, Month, Day, DOW);
     writeln('System date updated from Real Time Clock');
     writeln(day, '/', month, '/', year);
     GetTime(Hour, min, sec, sec100);
     writeln(Hour, ':', min, ':', sec);
end.