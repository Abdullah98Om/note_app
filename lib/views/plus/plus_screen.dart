import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import '../../core/widgets/float_action_button_widget.dart';
import 'widgets/items_widget.dart';
import 'widgets/title_widget.dart';

class PlusScreen extends StatelessWidget {
  const PlusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Padding(
        padding: EdgeInsets.only(
            right: context.responsiveWidth(mobile: 20),
            left: context.responsiveWidth(mobile: 20),
            bottom: context.responsiveWidth(mobile: 20),
            top: context.responsiveHeight(mobile: 120)),
        child: const Column(children: [TitleWidget(), ItemsWidget()]),
      ),
      FloatActionButtonWidget(
          icon: Icons.close,
          onTap: () {
            Get.back();
          })
    ]));
  }
}
