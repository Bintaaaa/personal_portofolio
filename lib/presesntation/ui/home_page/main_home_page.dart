import 'package:flutter/material.dart';
import 'package:personal_web/common/widget/responsive_layout.dart';
import 'package:personal_web/presesntation/ui/home_page/home_page_web.dart';
import 'package:personal_web/utils/responsive_manager/base_on_mixin.dart';

class MainHomePage extends StatelessWidget with BaseOnMixin {
  MainHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      mobile: Container(),
      webOrDesktop:  HomePageWeb(),
      sizerManager: sizerManager,
    );
  }
}
