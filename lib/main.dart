import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:personal_web/common/widget/hovering/provider/hovering_provider.dart';
import 'package:personal_web/presesntation/ui/home_page/main_home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) => MaterialApp(
        title: 'Mohammad Bijantyum Sinatria',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: ChangeNotifierProvider(
          create: (context) => TextHoveringProvider(),
          child: MainHomePage(),
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
