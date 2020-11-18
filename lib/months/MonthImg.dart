import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_calendar/choose_month_new.dart';
import 'package:photo_view/photo_view.dart';
import '../widgets/MonthButton.dart';

class MonthImg extends StatefulWidget {
  String imageName, monthName, prevMonth, nextMonth;

  MonthImg(this.imageName, this.monthName, this.prevMonth, this.nextMonth);

  @override
  _MonthImgState createState() => _MonthImgState(imageName, monthName, prevMonth, nextMonth);
}

class _MonthImgState extends State<MonthImg> {
  String _imageName, _monthName, _prevMonth, _nextMonth;

  _MonthImgState(this._imageName, this._monthName, this._prevMonth, this._nextMonth);

  ChooseMonthNew chooseMonthNew = new ChooseMonthNew();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text(
          '$_monthName',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(
            color: Colors.white,
          ),
          maxScale: PhotoViewComputedScale.contained * 4.0,
          minScale: PhotoViewComputedScale.contained * 1.0,
          imageProvider: AssetImage(_imageName),
        ),
      ),
      floatingActionButton: Row(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(80, 20, 20, 500),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                Navigator.pushReplacementNamed(context, _prevMonth);
              },
              icon: null,
              label: Text(
                '<',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.redAccent,
            ),
          ),
          Container(
            padding: EdgeInsets.fromLTRB(100, 20, 10, 500),
            child: FloatingActionButton.extended(
              heroTag: null,
              onPressed: () {
                Navigator.pushReplacementNamed(context, _nextMonth);
              },
              icon: null,
              label: Text(
                ">",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.redAccent,
            ),
          ),
        ],
      ),
    );
  }
}
