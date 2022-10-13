import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kv_test/View/welcome_screen.dart';

import 'const/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    TextSizeConst tSize = TextSizeConst();
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: theme.textTheme.headline1!
              .copyWith(fontSize: tSize.head1, fontWeight: FontWeight.bold,color: AppColor.whiteText,),
          headline2: theme.textTheme.headline2!.copyWith(
            fontSize: tSize.head2,
            fontWeight: FontWeight.w600,
            color: AppColor.whiteText,
          ),
          headline3: theme.textTheme.headline3!.copyWith(
              fontSize: tSize.head3,
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600),
          headline4: theme.textTheme.headline4!.copyWith(
              fontSize: tSize.head4,
              color: AppColor.whiteText,
              fontWeight: FontWeight.w600),
          headline5: theme.textTheme.headline5!.copyWith(
            fontSize: tSize.head5,
            fontWeight: FontWeight.w400,
            color: AppColor.whiteText,
          ),
          headline6: theme.textTheme.headline6!.copyWith(
            fontSize: tSize.head6,
            color: AppColor.whiteText,
            fontWeight: FontWeight.w400,
          ),
          subtitle1: theme.textTheme.subtitle1!.copyWith(
            fontSize: tSize.subTitle1,
            color: AppColor.whiteText,
            fontWeight: FontWeight.w400,
          ),
          subtitle2: theme.textTheme.subtitle2!.copyWith(
              fontSize: tSize.subTitle2,
              color: AppColor.whiteText,
              fontWeight: FontWeight.w400),
        ),
      ),
      home: const WelcomeScreen(),
    );
  }
}

class TextSizeConst {
  double head1 = 34;
  double head2 = 28;
  double head3 = 20;
  double head4 = 18;
  double head5 = 16;
  double head6 = 14;
  double subTitle1 = 12;
  double subTitle2 = 10;
}
