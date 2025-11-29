import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import '../../core/widgets/float_action_button_widget.dart';
import 'widgets/app_bar_note_screen_widget.dart';
import 'widgets/bottom_sheet_widget.dart';
import 'widgets/date_widget.dart';
import 'widgets/description_note_widget.dart';
import 'widgets/title_note_widget.dart';
import 'widgets/save_button_widget.dart';

class NoteDetailesScreen extends StatelessWidget {
  const NoteDetailesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatActionButtonWidget(
          icon: Icons.color_lens,
          onTap: () {
            Get.bottomSheet(
              const BottomSheetWidget(),
            );
          }),
      appBar: const AppBarNoteScreenWidget(),
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: context.responsiveWidth(mobile: 20)),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 8),
                DateWidget(),
                TitleNoteWidget(),
                DescriptionNoteWidget(),
              ],
            ),
          ),
          const SaveButtonWidget()
        ],
      ),
    );
  }
}
