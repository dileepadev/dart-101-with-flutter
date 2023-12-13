var outsideVar = "Outside Variable"; // Top Level Variable

main() {
  var insideVar = "Inside Variable";
  print(outsideVar);
  print(insideVar);

  insideFunction() {
    var insideFuncInVar = "Inside Function Inside Variable";
    print(insideFuncInVar);
    print(outsideVar);

    insideInnerFunction() {
      var insideInnerFuncInVar = "Inside Inner Function Inside Variable";
      print(insideInnerFuncInVar);
    }

    insideInnerFunction();
  }

  insideFunction();
  outsideFunction();
}

void outsideFunction() {
  print(outsideVar);
}
