import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_web/common/style.dart';
import 'package:personal_web/utils/responsive_manager/base_on_mixin.dart';

import '../../../common/widget/hovering/component/text_hovering.dart';

class HomePageMobile extends StatelessWidget with BaseOnMixin {
  HomePageMobile({super.key});
  final GlobalKey<ScaffoldState> _key = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        backgroundColor: ColorName.white,
        leading: Container(),
        actions: [
          IconButton(
            onPressed: () {
              _key.currentState!.openDrawer();
            },
            icon: const Icon(
              Icons.menu,
              color: ColorName.sofOrange,
            ),
          )
        ],
      ),
      drawer: Drawer(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20.0.w, vertical: 20.h),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              TextHovering(
                key: const ValueKey(1),
                colorHovering: ColorName.sofOrange,
                colorExit: ColorName.softBlack,
                title: 'About Me',
                index: 0,
              ),
              SizedBox(
                height: 24.0.w,
              ),
              TextHovering(
                key: const ValueKey(2),
                colorHovering: ColorName.sofOrange,
                colorExit: ColorName.softBlack,
                title: 'Journey',
                index: 1,
              ),
              SizedBox(
                height: 24.0.w,
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.w,
                vertical: 10.h,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    "assets/pict_me.png",
                    width: 250.w,
                    height: 250.h,
                  ),
                  Wrap(
                    direction: Axis.vertical,
                    children: [
                      Text(
                        'Hi, this is Bijantyum',
                        style: fontUtils.anekOdia.size24.bold(context),
                      ),
                      Text(
                        "I am a  child, who aspires to be a programmer\nwho is good and can be imitated by many\npeople",
                        style: fontUtils.anekOdia.size16.light(context),
                      )
                    ],
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                  right: 30.w,
                  left: 30.w,
                  top: 20.h,
                  bottom: 10.h,
                ),
                child: Text(
                  'Daily Mood',
                  style: fontUtils.anekOdia.size20.bold(context),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 20.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    flex: 1,
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_1.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          'Glad something\nhappened',
                          style: fontUtils.anekOdia.size10.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_4.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          'Easy to laugh\nand cringe',
                          style: fontUtils.anekOdia.size10.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_3.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          'Appreciation for\nmyself',
                          style: fontUtils.anekOdia.size10.light(
                            context,
                          ),
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                  const Spacer(),
                  Expanded(
                    flex: 2,
                    child: Wrap(
                      direction: Axis.vertical,
                      crossAxisAlignment: WrapCrossAlignment.center,
                      children: [
                        Image.asset(
                          "assets/mood_2.png",
                          width: 50.w,
                          height: 50.h,
                        ),
                        Text(
                          'Angry bcs can’t to\n solve the problem',
                          style: fontUtils.anekOdia.size10.light(
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
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                margin: EdgeInsets.only(
                  right: 30.w,
                  left: 30.w,
                  top: 30.h,
                  bottom: 10.h,
                ),
                child: Text(
                  'Little Touch',
                  style: fontUtils.anekOdia.size20.bold(context),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 30.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 110.h,
                    width: 75.w,
                    padding: EdgeInsets.all(8.0.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/little_touch_1.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(15.0),
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
                  Container(
                    height: 110.h,
                    width: 135.w,
                    padding: EdgeInsets.all(8.0.w),
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/little_touch_3.png',
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(18.0),
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
                  Container(
                    height: 110.h,
                    width: 75.w,
                    padding: EdgeInsets.all(8.0.w),
                    decoration: BoxDecoration(
                      color: ColorName.otherOrange,
                      borderRadius: BorderRadius.circular(18.0),
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
