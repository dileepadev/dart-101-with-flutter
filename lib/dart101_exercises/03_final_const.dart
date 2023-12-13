var dynamicIP = '192.48.22.14';
const constantIP = '127.0.0.1';
final id = 0001;

// const - we use this keyword when we want the value/variable to be a constant at compile time
// final - if we want a value/variable to always to be constant (never change)

// const - compile-time
// final - run-time

void changeIP() {
  dynamicIP = '152.67.93.12';
  //constantIP = '152.67.93.12';
}

void main() {
  changeIP();

  print('dynamic var: ' + dynamicIP);
  print('const var: ' + constantIP);
  print('final var: ' + id.toString());
}
