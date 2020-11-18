import 'package:flutter/material.dart';
import 'package:photo_calendar/choose_month_new.dart';
import 'package:photo_calendar/months/MonthImg.dart';
// TODO: Import firebase_admob.dart

void main() {
  runApp(CalendarApp());
}

class CalendarApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => ChooseMonthNew(),
        '/Jan': (context) => MonthImg('images/Jan.jpg', 'ଜାନୁଆରୀ', '/', '/Feb'),
        '/Feb': (context) => MonthImg('images/Feb.jpg', 'ଫେବୃଆରୀ', '/Jan', '/March'),
        '/March': (context) => MonthImg('images/March.jpg', 'ମାର୍ଚ୍ଚ', '/Feb', '/April'),
        '/April': (context) => MonthImg('images/April.jpg', 'ଏପ୍ରିଲ୍', '/March', '/May'),
        '/May': (context) => MonthImg('images/May.jpg', 'ମେ', '/April', '/June'),
        '/June': (context) => MonthImg('images/June.jpg', 'ଜୁନ୍', '/May', '/July'),
        '/July': (context) => MonthImg('images/July.jpg', 'ଜୁଲାଇ', '/June', '/Aug'),
        '/Aug': (context) => MonthImg('images/Aug.jpg', 'ଅଗଷ୍ଟ', '/July', '/Sep'),
        '/Sep': (context) => MonthImg('images/Sep.jpg', 'ସେପ୍ଟେମ୍ବର', '/Aug', '/Oct'),
        '/Oct': (context) => MonthImg('images/Oct.jpg', 'ଅକ୍ଟୋବର', '/Sep', '/Nov'),
        '/Nov': (context) => MonthImg('images/Nov.jpg', 'ନଭେମ୍ବର', '/Oct', '/Dec'),
        '/Dec': (context) => MonthImg('images/Dec.jpg', 'ଡିସେମ୍ବର', '/Nov', '/'),
      },
    );
  }
}
