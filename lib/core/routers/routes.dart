import 'package:get/get.dart';
import 'package:note_app/views/home/home_secreen.dart';
import 'package:note_app/views/noteDetailes/note_detailes_screen.dart';
import 'package:note_app/views/notesInner/notes_inner_screen.dart';
import 'package:note_app/views/plus/plus_screen.dart';

import 'routers_name.dart';

class AppRoutes {
  static final routes = [
    GetPage(
      name: RoutesName.home,
      page: () => const HomeSecreen(),
    ),
    GetPage(
      name: RoutesName.plus,
      page: () => const PlusScreen(),
    ),
    GetPage(
      name: RoutesName.notesInner,
      page: () => const NotesInnerScreen(),
    ),
    GetPage(
      name: RoutesName.noteDetailes,
      page: () => const NoteDetailesScreen(),
    ),
  ];
}
