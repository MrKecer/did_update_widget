import 'package:did_update_widget/enum.dart';

Future<String> getFrameworks(ProgrammingFrameworks frameworks) async {
  if (frameworks == ProgrammingFrameworks.flutter) {
    return "Dart";
  } else {
    return "JavaScript";
  }
}
