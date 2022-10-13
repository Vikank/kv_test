import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../widgets/appbar.dart';


class GuestRegister extends StatelessWidget {
  const GuestRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).textTheme;
    return Scaffold(
      appBar: appBar(Icons.person, "Guest", theme),
      body: Column(
        children: [

        ],
      ),
    );
  }
}
