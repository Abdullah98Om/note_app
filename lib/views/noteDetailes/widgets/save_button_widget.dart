import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/widgets/my_buttont.dart';

class SaveButtonWidget extends StatelessWidget {
  const SaveButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 110,
        left: 0,
        right: 0,
        child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: MyButtont(name: "save".tr)));
  }
}
