String title = "Flutter Developer";
String country = "Sri Lanka";

String occupation() {
  return "$title from $country";
}

void main() {
  String firstName = "Dileepa";
  String lastName = "Bandara";
  int age = 26;

  print("$firstName $lastName is $age years old and he is a ${occupation()}");
}
