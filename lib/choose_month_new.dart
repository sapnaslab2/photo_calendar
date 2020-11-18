import 'package:flutter/material.dart';
import 'package:firebase_admob/firebase_admob.dart';
import 'package:photo_calendar/ad_manager.dart';
import 'widgets/ads.dart';
import 'widgets/MonthButton.dart';

class ChooseMonthNew extends StatefulWidget {
  @override
  _ChooseMonthNewState createState() => _ChooseMonthNewState();
}

class _ChooseMonthNewState extends State<ChooseMonthNew> {
  // TODO: Add _bannerAd
  BannerAd _bannerAd;

  // TODO: Implement _loadBannerAd()
  void _loadBannerAd() {
    _bannerAd
      ..load()
      ..show(anchorType: AnchorType.bottom);
  }

  @override
  void initState() {
    super.initState();
    // TODO: Initialize _bannerAd
    _bannerAd = BannerAd(
      adUnitId: AdManager.bannerAdUnitId,
      size: AdSize.banner,
    );

    // TODO: Load a Banner Ad
    _loadBannerAd();
  }

  @override
  void dispose() {
    // TODO: Dispose BannerAd object
    _bannerAd?.dispose();
    super.dispose();
  }

  Future<void> _initAdMob() {
    // TODO: Initialize AdMob SDK
    return FirebaseAdMob.instance.initialize(appId: AdManager.appId);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'ଓଡିଆ କ୍ୟାଲେଣ୍ଡର ୨0୨୧',
            style: TextStyle(fontSize: 27, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
          backgroundColor: Color(0xff9D3D2F),
        ),
        body: Container(
          color: Colors.white,
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              MonthButton(0),
              MonthButton(1),
              MonthButton(2),
              MonthButton(3),
              MonthButton(4),
              MonthButton(5),
              MonthButton(6),
              MonthButton(7),
              MonthButton(8),
              MonthButton(9),
              MonthButton(10),
              MonthButton(11),
              Ads(),
            ],
          ),
        ));
  }
}
