import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'package:note_app/core/utility/constant.dart';
import 'font_style_widget.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.screenHeight * 0.5,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color:
            Get.isDarkMode ? const Color(0xff272727) : const Color(0xffF3F3F3),
        borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
      ),
      child: ListView(
        children: [
          Image.asset(
            AppImage.bottomIcon,
            width: context.responsiveWidth(mobile: 48),
            height: context.responsiveWidth(mobile: 48),
          ),

          // Align && Size Font
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Align
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                      right: context.responsiveWidth(mobile: 16)),
                  decoration: const BoxDecoration(
                      border:
                          Border(right: BorderSide(color: Color(0xffD6D6D6)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      // align
                      InkWell(
                        onTap: () {},
                        child: Image.asset(AppImage.menuIcon,
                            width: 36, height: 36),
                      ),

                      // space
                      InkWell(
                        onTap: () {},
                        child: Image.asset(AppImage.lineSpacingIcon,
                            width: 36, height: 36),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Image.asset(AppImage.lineSpacingIcon,
                            width: 36, height: 36),
                      ),
                    ],
                  ),
                ),
              ),

              // Size Text
              Flexible(
                flex: 1,
                child: Container(
                  padding: EdgeInsets.only(
                      left: context.responsiveWidth(mobile: 16)),
                  decoration: const BoxDecoration(
                      border:
                          Border(left: BorderSide(color: Color(0xffD6D6D6)))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "H1",
                          style: TextStyle(
                            fontSize: context.responsive(mobile: 30),
                            fontWeight: FontWeight.w400,
                            color: Get.isDarkMode
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "H2",
                          style: TextStyle(
                            fontSize: context.responsive(mobile: 30),
                            fontWeight: FontWeight.w400,
                            color: Get.isDarkMode
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {},
                        child: Text(
                          "H3",
                          style: TextStyle(
                            fontSize: context.responsive(mobile: 30),
                            fontWeight: FontWeight.w400,
                            color: Get.isDarkMode
                                ? Theme.of(context).colorScheme.primary
                                : Theme.of(context).colorScheme.secondary,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          // Colors
          Container(
            margin: EdgeInsets.symmetric(
                vertical: context.responsiveHeight(mobile: 24)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.white),
                  ),
                ),
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.blue),
                  ),
                ),
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.red),
                  ),
                ),
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.green),
                  ),
                ),
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.yellow),
                  ),
                ),
                // Color
                InkWell(
                  onTap: () {},
                  child: Container(
                    width: context.responsiveWidth(mobile: 50),
                    height: context.responsiveWidth(mobile: 50),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.pink),
                  ),
                ),
              ],
            ),
          ),

          // font type
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FontStyleWidget(name: "Bold"),
              FontStyleWidget(name: "underline", bold: false, underline: true),
              FontStyleWidget(name: "Italian", bold: false, italic: true),
            ],
          ),
          SizedBox(height: context.responsiveHeight(mobile: 12)),
          // fonts
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FontStyleWidget(
                  name: "Avenir",
                  fontFamily: GoogleFonts.romanesco(
                      fontSize: 20, fontWeight: FontWeight.w400)),
              FontStyleWidget(
                  name: "Sansita",
                  fontFamily: GoogleFonts.sansita(
                      fontSize: 20, fontWeight: FontWeight.w400)),
              FontStyleWidget(
                  name: "tajawal",
                  fontFamily: GoogleFonts.tajawal(
                      fontSize: 20, fontWeight: FontWeight.w400)),
            ],
          ),
          SizedBox(height: context.responsiveHeight(mobile: 12)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FontStyleWidget(
                  name: "aBeeZee",
                  fontFamily: GoogleFonts.aBeeZee(
                      fontSize: 20, fontWeight: FontWeight.w400)),
              FontStyleWidget(
                  name: "abel",
                  fontFamily: GoogleFonts.abel(
                      fontSize: 20, fontWeight: FontWeight.w400)),
              FontStyleWidget(
                  name: "Aboreto",
                  fontFamily: GoogleFonts.aboreto(
                      fontSize: 20, fontWeight: FontWeight.w400)),
            ],
          ),
        ],
      ),
    );
  }
}
