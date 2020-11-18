import 'dart:io';
import 'util/constants.dart';

class AdManager {
  static final bool isTest = true;

  static String get appId {
    if (Platform.isAndroid) {
      return isTest
          ? Constants.ANDROID_ADMOB_APP_ID_TEST
          : Constants.ANDROID_ADMOB_APP_ID;
    } else if (Platform.isIOS) {
      return "ca-app-pub-8465643952843744~3051798507"; //TODO create a new add account for ios
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get bannerAdUnitId {
    if (Platform.isAndroid) {
      return isTest
          ? Constants.ANDROID_BANNER_AD_UNIT_ID_TEST
          : Constants.ANDROID_BANNER_AD_UNIT_ID;
    } else if (Platform.isIOS) {
      return "ca-app-pub-8465643952843744/5211057982"; //TODO create a new banner ad for ios
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }

  static String get nativeAdUnitId {
    if (Platform.isAndroid) {
      return isTest
          ? Constants.ANDROID_NATIVE_AD_UNIT_ID_TEST
          : Constants.ANDROID_NATIVE_AD_UNIT_ID;
    } else if (Platform.isIOS) {
      return "ca-app-pub-8465643952843744/9780858381"; //TODO create a new native ad for ios
    } else {
      throw new UnsupportedError("Unsupported platform");
    }
  }
}
