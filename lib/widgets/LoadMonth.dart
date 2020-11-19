import 'package:flutter/material.dart';

class LoadMonth extends StatelessWidget {
  var months = ['ଜାନୁଆରୀ', 'ଫେବୃଆରୀ', 'ମାର୍ଚ୍ଚ', 'ଏପ୍ରିଲ୍', 'ମେ', 'ଜୁନ୍', 'ଜୁଲାଇ', 'ଅଗଷ୍ଟ', 'ସେପ୍ଟେମ୍ବର', 'ଅକ୍ଟୋବର', 'ନଭେମ୍ବର', 'ଡିସେମ୍ବର'];
  String monthName;
  int monthNum;
  final _selectedDay = DateTime.now();
  int month;
  String date;
  LoadMonth(this.monthName, this.monthNum) {
    month = _selectedDay.month;
    date = _selectedDay.day.toString() + "-" + _selectedDay.month.toString() + "-" + _selectedDay.year.toString();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
              colors: month - 1 == monthNum ? [Color(0xff9D3D2F), Colors.white] : [Color(0xffB3B6B4), Colors.white],
              begin: Alignment.centerRight,
              end: new Alignment(-1.0, -1.0),
            )),
        margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 2.0),
        child: month - 1 == monthNum
            ? ListTile(
                // subtitle: Text('$date'),
                leading: Icon(
                  Icons.calendar_today_rounded,
                  color: Color(0xff7D3A2F),
                ),
                title: Text(
                  months[monthNum] + "  ( $date )",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () => {Navigator.pushNamed(context, '$monthName')})
            : ListTile(
                leading: Icon(
                  Icons.calendar_today_rounded,
                  color: Color(0xff7D3A2F),
                ),
                title: Text(
                  months[monthNum],
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                onTap: () => {Navigator.pushNamed(context, '$monthName')}));
  }
}
