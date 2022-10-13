import 'package:flutter/material.dart';
import 'package:kv_test/const/colors.dart';


Widget loginCard(IconData icon, String text, TextTheme textTheme){
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
    ),
    elevation: 10,
    child: Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppColor.whiteText,
        borderRadius: BorderRadius.all(Radius.circular(16)),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 50,
            backgroundColor: AppColor.bgColor,
            child: Icon(icon,color: AppColor.whiteText, size: 60,),
          ),
          Text(text, style: textTheme.headline3!.copyWith(color: AppColor.bgColor),)
        ],
      ),
    ),
  );
}