import 'package:flutter/material.dart';
import 'package:note_app/core/utility/app_responsive.dart';
import 'widgets/add_note_button_widget.dart';
import 'widgets/buttom_nav_bar_widget.dart';
import 'widgets/notes_list_widget.dart';
import 'widgets/search_widget.dart';
import 'widgets/title_home_widget.dart';

class HomeSecreen extends StatelessWidget {
  const HomeSecreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: context.screenHeight,
        width: context.screenWidth,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: context.responsiveWidth(mobile: 20)),
              child: const SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    TitleHomeWidget(), //
                    SearchWidget(),
                    NotesListWidget(),
                  ],
                ),
              ),
            ),
            const ButtomNavBarWidget(),
            const AddNoteButtonWidget(),
          ],
        ),
      ),
    );
  }
}
