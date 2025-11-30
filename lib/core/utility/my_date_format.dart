import 'package:get/get.dart';
import 'package:intl/intl.dart';

String myDateFormat(DateTime date, {bool short = false}) {
  return !short
      ? DateFormat('d MMM, yyyy').format(date)
      : DateFormat('d MMM').format(date);
}

String myTimeAgo(DateTime date) {
  final now = DateTime.now();
  final diff = now.difference(date);

  if (diff.inSeconds < 60) {
    return "now".tr;
  } else if (diff.inMinutes < 60) {
    return "${diff.inMinutes}${"m".tr} ${"ago".tr}";
  } else if (diff.inHours < 24) {
    return "${diff.inHours}${"h".tr} ${"ago".tr}";
  } else if (diff.inDays == 1) {
    return "yesterday".tr;
  } else if (diff.inDays < 7) {
    return "${diff.inDays}${"d".tr} ${"ago".tr}";
  } else if (diff.inDays < 30) {
    return "${(diff.inDays / 7).floor()}${"w".tr} ${"ago".tr}";
  } else if (diff.inDays < 365) {
    return "${(diff.inDays / 30).floor()}${"m".tr} ${"ago".tr}";
  } else {
    return "${(diff.inDays / 365).floor()}${"y".tr} ${"ago1".tr}";
  }
}
