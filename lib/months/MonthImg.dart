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
        backgroundColor: Color(0xff9D3D2F),
        title: Text(
          '$_monthName',
          style: TextStyle(fontSize: 25),
        ),
        centerTitle: true,
      ),
      body: Container(
        child: PhotoView(
          backgroundDecoration: BoxDecoration(
            color: Color(0xffB3B6B4),
          ),
          maxScale: PhotoViewComputedScale.contained * 4.0,
          minScale: PhotoViewComputedScale.contained * 1.0,
          imageProvider: AssetImage(_imageName),
        ),
      ),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          FloatingActionButton(
            heroTag: 'unq1',
            onPressed: () {
              Navigator.pushReplacementNamed(context, _prevMonth);
            },
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Color(0xff7D3A2F),
            child: const Icon(Icons.navigate_before_rounded, size: 36.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)), side: BorderSide(color: Color(0xff9D3D2F), width: 3.0)),
          ),
          AspectRatio(
            aspectRatio: 3 / 13,
          ),
          FloatingActionButton(
            heroTag: 'unq2',
            onPressed: () {
              Navigator.pushReplacementNamed(context, _nextMonth);
            },
            materialTapTargetSize: MaterialTapTargetSize.padded,
            backgroundColor: Color(0xff7D3D2F),
            child: const Icon(Icons.navigate_next_rounded, size: 36.0),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20.0)), side: BorderSide(color: Color(0xff9D3D2F), width: 3.0)),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerTop,
    );
  }
}
