enum ProgrammingFrameworks {
  reactNative,
  flutter,
}

extension Framework on ProgrammingFrameworks {
  String get title {
    switch (this) {
      case ProgrammingFrameworks.reactNative:
        return "React Native";
      case ProgrammingFrameworks.flutter:
        return "Flutter";
    }
  }
}
