// and(&&), or(||), not(!)
var a = 1;
var b = 2;
var c = 3;

void main() {
  if (a == a) {
    print(a == a);
  }
  if (a < b && b < c) {
    print('a < b < c');
  }
  if (a < b || b < c) {
    print(a < b || b < c);
  }
  if (!(a == b) || (b < c)) {
    print(!(a == b) || (b < c));
  }
}
