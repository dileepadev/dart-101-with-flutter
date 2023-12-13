/*

  Dynamic -> var (Use it when you don't know the type of the variable)
  String -> String (Use it when you want to store a string)
  Integer -> int (Use it when you want to store an integer)
  Double -> double (Use it when you want to store a decimal number)
  Number -> num (Use it when you want to store a number)
  Boolean -> bool (Use it when you want to store a boolean)
  List -> List (Use it when you want to store a list of items)
  Map -> Map (Use it when you want to store in key-value pairs)

 */

var v = 12;
String name = 'String Name';
int a = 23;
double vat = 600.99;
num age = 24;
num price = 500.99;
bool isComplete = true;
List list = [1, 2, 3, 4, 5];
Map map = {'name': 'John Doe', 'age': 24};

void main() {
  print('var: ' + v.toString());
  print('String: ' + name);
  print('int: ' + a.toString());
  print('double: ' + vat.toString());
  print('num: ' + age.toString());
  print('num: ' + price.toString());
  print('bool: ' + isComplete.toString());
  print('List: ' + list.toString());
  print('Map: ' + map.toString());
}
