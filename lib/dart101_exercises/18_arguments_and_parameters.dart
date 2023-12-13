int studentAge = 26;

main() {
  print(profile("Dileepa", 26));
  if (isStudent()) {
    print("Yes. Student!");
  } else {
    print("No. Not a student!");
  }
  portfolio(developerName: "Dileepa", credits: 20.0);
  skillPractice("Programming Skill");
  print(developerPosition("dileepadev"));
}

String profile(String name, int age) => "$name and $age years old";

bool isStudent() {
  if (studentAge <= 30) {
    return true;
  } else {
    return false;
  }
}

// Optional Parameters
void portfolio({String developerName = "", double credits = 0.0}) {
  print("Developer Name: $developerName | Credits: $credits");
}

void skillPractice(String skillName, [int skillID = 0]) {
  print("Skill ID: $skillID | Skill Name: $skillName");
}

String developerPosition(String devName, {double devCredits = 0.0}) {
  var developerProfile = "$devName has $devCredits credits";

  if (devCredits == 0.0) {
    developerProfile = "This developer has no credits";
  }

  return developerProfile;
}
