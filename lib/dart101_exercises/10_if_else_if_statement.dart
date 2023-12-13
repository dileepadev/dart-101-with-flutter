var name = "Dileepa";
var age = 26;
var country = "Sri Lanka";

void main() {
  if (name is! String) {
    print("Name is not a INTEGER");
  } else if (age is int) {
    print("Age is a INTEGER");
  } else if (age + 1 is int) {
    print("Current age is ${age + 1}");
  } else {
    print("Nothing is correct!");
  }
}
