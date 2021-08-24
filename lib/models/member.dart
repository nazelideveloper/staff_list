class Member {
  late final String name;
  late final String surname;
  late final String email;
  late final String speciality;
  late bool isFavourite;

  Member(
      {required this.name,
      required this.surname,
      required this.email,
      required this.speciality,
      this.isFavourite = false});

  void toggleDone() {
    isFavourite = !isFavourite;
  }
}
