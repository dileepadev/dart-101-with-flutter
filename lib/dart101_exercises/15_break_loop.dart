int n = 0;
int count = 0;
bool isForLoop = true;

void main() {
  if (!isForLoop)
    while (n <= 5) {
      print(n);
      n++;
      if (n == 3) {
        break;
      }
    }

  if (isForLoop)
    for (count == 0; count < 10; count++) {
      if (count == 3) {
        break;
      }
      print(count);
    }
}
