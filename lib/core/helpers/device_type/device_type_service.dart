import 'package:flutter/services.dart';

class DeviceTypeService {
  DeviceTypeService._();

  static final DeviceTypeService instance = DeviceTypeService._();

  double _width = 0;
  DeviceTypeEnum _type = DeviceTypeEnum.phone;

  DeviceTypeEnum get type => _type;

  bool get isTablet => _type == DeviceTypeEnum.tablet;
  bool get isSemiTablet => _width >=500 &&  _width <= 850;


  void setDeviceInfo(
      {required double width, required double height}) {
    _width = width;
    if (width < 600) {
      _type = DeviceTypeEnum.phone;
    } else {
      _type = DeviceTypeEnum.tablet;
    }
    if (_type == DeviceTypeEnum.tablet) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.portraitUp,
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
    }
  }

  R whenTableOrElse<R>({
    required R Function() tablet,
    required R Function() orElse,
  }) {
    switch (_type) {
      case DeviceTypeEnum.tablet:
        return tablet();
      default:
        return orElse();
    }
  }


}

enum DeviceTypeEnum { phone, tablet }
