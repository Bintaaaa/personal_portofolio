import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SizerManager {
  const SizerManager();

  /// Check platform base on screen size (width)
  bool isWebOrDesktop(BuildContext context) =>
      MediaQuery.of(context).size.width > 1025;

  /// Check platform base on screen size (width)
  bool isTablet(BuildContext context) =>
      MediaQuery.of(context).size.width < 1025;

  /// Check platform base on screen size (width)
  bool isMobile(BuildContext context) =>
      MediaQuery.of(context).size.width < 600;
  
  double getTextSize(
    BuildContext context,
    double mobile, {
    double? webOrDesktop,
    double? tablet,
    bool isFixed = false,
  }) {
    if (isMobile(context)) {
      if (isFixed) {
        return mobile;
      }
      return mobile.sp;
    } else if (isTablet(context)) {
      if (isFixed) {
        return tablet ?? mobile;
      }
      return tablet?.sp ?? mobile.sp;
    } else if (isWebOrDesktop(context)) {
      if (isFixed) {
        return webOrDesktop ?? mobile;
      }
      return webOrDesktop?.sp ?? mobile.sp;
    } else {
      return mobile;
    }
  }
}
