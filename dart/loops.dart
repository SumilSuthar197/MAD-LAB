void main() {
  // for loop
  print("------------- For Loop -------------");
  for (int i = 0; i < 5; i++) {
    print('Hello ${i + 1}');
  }

  // while loop
  print("------------- While Loop -------------");
  int i = 0;
  while (i < 5) {
    print('Hello ${i + 1}');
    i++;
  }

  // do-while loop
  print("------------- Do-While Loop -------------");
  i = 0;
  do {
    print('Hello ${i + 1}');
    i++;
  } while (i < 5);

  // for-in loop
  print("------------- For-In Loop -------------");
  List<int> numbers = [1, 2, 3, 4, 5];
  for (int num in numbers) {
    print(num);
  }

  // for-each loop
  print("------------- For-Each Loop -------------");
  numbers.forEach((num) => print(num));
}
