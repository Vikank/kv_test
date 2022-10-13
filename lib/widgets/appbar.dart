import 'package:flutter/material.dart';
import 'package:kv_test/const/colors.dart';

AppBar appBar(IconData actionIcon, String actionText, TextTheme textTheme){
  return AppBar(
    backgroundColor: AppColor.bgColor,
    leading: Icon(
      Icons.home_repair_service_outlined, size: 20,
    ),
    actions: [
      Container(
        margin: EdgeInsets.all(10),
        width: 100,
        decoration: BoxDecoration(
          color: AppColor.whiteText,
          borderRadius: BorderRadius.all(Radius.circular(16)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundColor: AppColor.bgColor,
              radius: 10,
              child: Icon(actionIcon,color: AppColor.whiteText, size: 15,),
            ),
            SizedBox(
              width:
              15,
            ),
            Text(actionText, style: textTheme.subtitle1!.copyWith(color: AppColor.bgColor, fontSize: 15),)
          ],
        ),
      )
    ],
  );
}