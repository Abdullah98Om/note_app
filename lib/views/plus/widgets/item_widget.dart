import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';

class ItemWidget extends StatelessWidget {
  const ItemWidget(
      {super.key, required this.title, required this.image, this.padding = 46});

  final String title, image;
  final double padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.only(bottom: context.responsiveHeight(mobile: padding)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset(image),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: context.responsiveWidth(mobile: 16)),
                child: Text(
                  title,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context)
                          .colorScheme
                          .primary
                          .withOpacity(0.8),
                      fontSize: context.responsive(mobile: 20)),
                ),
              ),
            ],
          ),
          Icon(
            Icons.arrow_forward_ios,
            color: const Color(0xff888888),
            size: context.responsiveWidth(mobile: 16),
          )
        ],
      ),
    );
  }
}
