import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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
          height: 70.h,
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 50.w,
                vertical: 10.h,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: Wrap(
                      direction: Axis.vertical,
                      children: [
                        Text(
                          'Hi, this is Bijantyum',
                          style: fontUtils.anekOdia.size13.bold(context),
                        ),
                        Text(
                          "I am a  child, who aspires to be a programmer\nwho is good and can be imitated by many\npeople",
                          style: fontUtils.anekOdia.size6.light(context),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Image.asset(
                      "assets/pict_me.png",
                      width: 400.w,
                      height: 400.h,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 50.w,
                left: 50.w,
                top: 100.h,
                bottom: 30.h,
              ),
              child: Text(
                'Daily Mood',
                style: fontUtils.anekOdia.size10.bold(context),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_1.png",
                          width: 100.w,
                          height: 100.h,
                        ),
                        Text(
                          'Glad something\nhappened',
                          style: fontUtils.anekOdia.size4.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_4.png",
                          width: 100.w,
                          height: 100.h,
                        ),
                        Text(
                          'Easy to laugh\nand cringe',
                          style: fontUtils.anekOdia.size4.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_3.png",
                          width: 100.w,
                          height: 100.h,
                        ),
                        Text(
                          'Appreciation for\nmyself',
                          style: fontUtils.anekOdia.size4.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_2.png",
                          width: 100.w,
                          height: 100.h,
                        ),
                        Text(
                          'Angry bcs can???t to\n solve the problem',
                          style: fontUtils.anekOdia.size4.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                right: 50.w,
                left: 50.w,
                top: 100.h,
                bottom: 30.h,
              ),
              child: Text(
                'Little Touch',
                style: fontUtils.anekOdia.size10.bold(context),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 50.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 350.h,
                    width: 70.w,
                    padding: EdgeInsets.all(8.0.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/little_touch_1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Hummed',
                          style: fontUtils.anekOdia.size8.bold(context),
                        ),
                        Wrap(
                          spacing: 2.w,
                          children: [
                            Image.asset(
                              'assets/icon_play.png',
                              width: 6.w,
                            ),
                            Text(
                              "0 Session",
                              style: fontUtils.anekOdia.size4.light(context),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 6.w,
                  ),
                  Container(
                    height: 350.h,
                    width: 100.w,
                    padding: EdgeInsets.all(8.0.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/little_touch_3.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Would you like to\nknow me further?',
                          style: fontUtils.anekOdia.size8.bold(context),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 8.w,
                  ),
                  Container(
                    height: 350.h,
                    width: 70.w,
                    padding: EdgeInsets.all(4.0.w),
                    decoration: BoxDecoration(
                      color: ColorName.otherOrange,
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Comfortable\nwith Social\n Media?',
                          style: fontUtils.anekOdia.size8.bold(context),
                        ),
                        const Spacer(),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Image.asset(
                            'assets/icon_arrow_touch.png',
                            width: 20.w,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
