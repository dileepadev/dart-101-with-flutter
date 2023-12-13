String funcName = "Function 07";

void main() {
  function01();
  function02();
  function03("Function 03");
  function04();
  print(function05.call());
  print(function06());
  print(function07());
  _function08();
  function09();
  function10();
  function11();
}

void function01() {
  print("Function 01");
}

function02() {
  print("Function 02");
}

function03(String value) {
  print(value);
}

function04() {
  return print("Function 04");
}

String function05() {
  return "Function 05";
}

String function06() {
  return "Function 06";
}

function07() {
  return funcName;
}

_function08() {
  print("Function 08");
}

function09() {
  var name = "Function";
  if (name.contains("F")) {
    print("Function 09");
  } else {
    print("Error with Function 09");
  }
}

String function10() {
  print("Function 10");
  return "Function 10";
}

function11() => print("Function 11"); // => expr == {return expression;}

// function12() {
//   var insideVal = "Function 13";

//   function13() {
//     print(insideVal);
//   }
// }
