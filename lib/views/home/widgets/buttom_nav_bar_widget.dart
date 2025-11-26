import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class ButtomNavBarWidget extends StatelessWidget {
  const ButtomNavBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: 0,
        child: Container(
          padding: EdgeInsets.symmetric(
              horizontal: context.responsiveWidth(mobile: 52)),
          height: context.responsiveHeight(mobile: 88),
          width: context.screenWidth,
          decoration:
              BoxDecoration(color: Theme.of(context).colorScheme.surface),
          child: Row(
            children: [
              InkWell(
                onTap: () {
                  Scaffold.of(context).openDrawer();
                },
                child: Icon(
                  Icons.list_outlined,
                  size: context.responsive(mobile: 30),
                  color: Theme.of(context).colorScheme.primary,
                ),
              ),
            ],
          ),
        ));
  }
}
