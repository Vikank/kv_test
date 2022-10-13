import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:kv_test/View/register/geustRegister.dart';
import 'package:kv_test/View/register/tenantResgiter.dart';
import 'package:kv_test/const/colors.dart';

import '../widgets/loginCard.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
        backgroundColor: AppColor.bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Icon(
                    Icons.home_repair_service_outlined,
                    size: 50,
                    color: AppColor.whiteText,
                  ),
                ),
                Text(
                  "Welcome to \nFNF Coliving",
                  textAlign: TextAlign.start,
                  style: theme.headline1,
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Logging in as",
                  style: theme.headline2,
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(GuestRegister());
                  },
                  child: loginCard(Icons.person, "Guest", theme),
                ),
                SizedBox(
                  height: 20,
                ),
                GestureDetector(
                  onTap: (){
                    Get.to(TenantRegister());
                  },
                  child: loginCard(Icons.home, "Tenant", theme),
                ),
              ],
            ),
          ),
        ));
  }
}
