main() {
  print('111');

  int a = 10;
  int b = 2;
  int c = a ~/ b;

  var d = 2.2 % 2;

  print(d);

  var arr = [1, 2].map((e) => e + 1);
  // arr.addAll(arr.)

  var f1 = add;

  return 1;
}

typedef Add = int Function(int, int);

int add(int a, int b) {
  return a + b;
}

add1(int a, int b) {
  return a + b;
}
