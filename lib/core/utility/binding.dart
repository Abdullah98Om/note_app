import 'package:get/get.dart';

import '../../services/notes_services.dart';
import '../../viewmodels/notes_view_model.dart';

class MyBinding extends Bindings {
  @override
  void dependencies() {
    // حقن الخدمة
    // Get.lazyPut<SharedService>(() => SharedService());
    Get.lazyPut<NotesServices>(() => NotesServices());

    // حقن controllers
    Get.lazyPut(() => NotesViewModel(Get.find()), fenix: true);
  }
}
