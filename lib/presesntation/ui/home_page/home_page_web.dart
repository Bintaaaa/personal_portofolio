import 'package:flutter/material.dart';
import 'package:personal_web/common/style.dart';
import 'package:personal_web/common/widget/hovering/component/text_hovering.dart';
import 'package:personal_web/utils/responsive_manager/base_on_mixin.dart';

class HomePageWeb extends StatelessWidget with BaseOnMixin {
  HomePageWeb({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size(double.infinity, 70),
        child: Container(
          width: double.infinity,
          height: 70,
          decoration: const BoxDecoration(),
          child: Container(
            margin: const EdgeInsets.symmetric(
              horizontal: 128.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TextHovering(
                  key: const ValueKey(1),
                  colorHovering: ColorName.sofOrange,
                  colorExit: ColorName.softBlack,
                  title: 'About Me',
                  index: 0,
                ),
                const SizedBox(
                  width: 32.0,
                ),
                TextHovering(
                  key: const ValueKey(2),
                  colorHovering: ColorName.sofOrange,
                  colorExit: ColorName.softBlack,
                  title: 'Journey',
                  index: 1,
                ),
                const SizedBox(
                  width: 32.0,
                ),
                TextHovering(
                  key: const ValueKey(3),
                  colorHovering: ColorName.sofOrange,
                  colorExit: ColorName.softBlack,
                  title: 'Resume',
                  index: 2,
                ),
              ],
            ),
          ),
        ),
      ),
      body: Container(),
    );
  }
}
