import 'package:flutter/material.dart';
import 'package:personal_web/common/style.dart';

enum HoveringMouse { softBlack, softOrange }

extension HoveringMouseExtension on HoveringMouse {
  Color get values {
    switch (this) {
      case HoveringMouse.softBlack:
        return ColorName.softBlack;
      case HoveringMouse.softOrange:
        return ColorName.sofOrange;
      default:
        return ColorName.softBlack;
    }
  }
}
