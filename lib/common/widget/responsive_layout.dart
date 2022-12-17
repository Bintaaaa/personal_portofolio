import 'package:flutter/material.dart';
import 'package:personal_web/utils/responsive_manager/sizer_manager.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget? webOrDesktop;
  final Widget? tablet;
  final SizerManager sizerManager;
  const ResponsiveLayout({
    super.key,
    required this.mobile,
    required this.sizerManager,
    this.webOrDesktop,
    this.tablet,
  });

  Widget _defaultWidget(Widget? platform) => platform ?? mobile;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, cons) {
        if (sizerManager.isMobile(context)) {
          return _defaultWidget(mobile);
        } else if (sizerManager.isTablet(context)) {
          return _defaultWidget(tablet);
        } else if (sizerManager.isWebOrDesktop(context)) {
          return _defaultWidget(webOrDesktop);
        } else {
          return _defaultWidget(mobile);
        }
      },
    );
  }
}
