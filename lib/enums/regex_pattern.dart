const emailPattern = r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]{2,6}";

enum RegexPattern {
  email,

}

extension RegexPatternExtension on RegexPattern {
  RegExp get pattern {
    switch (this) {
      case RegexPattern.email:
        return RegExp(emailPattern);

    }
  }
}
