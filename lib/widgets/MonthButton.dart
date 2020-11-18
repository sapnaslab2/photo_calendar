import 'package:flutter/material.dart';
import 'LoadMonth.dart';

class MonthButton extends StatelessWidget {
  int monthNum;

  MonthButton(this.monthNum);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return monthButton(monthNum);
  }

  Widget monthButton(int monthNum) {
    if (monthNum == 0) {
      return LoadMonth('/Jan', 0);
    }
    if (monthNum == 1) {
      return LoadMonth('/Feb', 1);
    }
    if (monthNum == 2) {
      return LoadMonth('/March', 2);
    }
    if (monthNum == 3) {
      return LoadMonth('/April', 3);
    }
    if (monthNum == 4) {
      return LoadMonth('/May', 4);
    }
    if (monthNum == 5) {
      return LoadMonth('/June', 5);
    }
    if (monthNum == 6) {
      return LoadMonth('/July', 6);
    }
    if (monthNum == 7) {
      return LoadMonth('/Aug', 7);
    }
    if (monthNum == 8) {
      return LoadMonth('/Sep', 8);
    }
    if (monthNum == 9) {
      return LoadMonth('/Oct', 9);
    }
    if (monthNum == 10) {
      return LoadMonth('/Nov', 10);
    } else {
      return LoadMonth('/Dec', 11);
    }
  }
}
