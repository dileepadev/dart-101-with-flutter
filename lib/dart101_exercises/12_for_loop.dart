const value = "Hello World!";
var loopNumber = 2;

void main() {
  if (loopNumber == 1) {
    for (var i = 0; i < 10; i++) {
      print('$i - ' + value);
    }
  }
  if (loopNumber == 2) {
    for (var i = 0; i < 10; i++) {
      if (i % 2 == 0) {
        print('$i is EVEN NUMBER');
      } else {
        print('$i is ODD Number');
      }
    }
  }
}
