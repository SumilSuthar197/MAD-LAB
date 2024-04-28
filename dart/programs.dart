// 1. To read a list of integer numbers and print all even numbers in the output.
import "dart:io";

void question1() {
  stdout.write("Enter the number of elements: ");
  int n = int.parse(stdin.readLineSync()!); // \! is used to remove the null
  List<int> list = [];
  for (int i = 0; i < n; i++) {
    stdout.write("Enter element ${i + 1}: ");
    list.add(int.parse(stdin.readLineSync()!));
  }

  print("Even numbers in the list are:");
  for (int i in list) {
    if (i % 2 == 0) {
      print(i);
    }
  }
}

// 2. To accept an integer number as input and print the factors or divisor of the number.

void question2() {
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Factors of $n are:");
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      print(i);
    }
  }
}
// 3. To accept an integer number as input and print its equivalent number in words.

void question3() {
  print("Enter a number: ");
  int n = int.parse(stdin.readLineSync()!);

  List<String> words = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine"
  ];

  List<int> digits = [];
  while (n > 0) {
    digits.add(n % 10);
    n ~/= 10; // ~/ is used to get the integer value
    print('n: $n and digits: $digits');
  }

  for (int i = digits.length - 1; i >= 0; i--) {
    print(words[digits[i]]);
  }
}

// 5. To take a integer as input and print the fibonacci series uptill the given input number.
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// 6. To create a function for calculating LCM and GCD of given integer numbers.
int gcd(int a, int b) {
  if (b == 0) {
    return a;
  }
  return gcd(b, a % b);
}

int lcm(int a, int b) {
  return ((a * b) / gcd(a, b)).floor();
}

void main() {
  // question1();
  // question2();
  // question3();
  // print(fibonacci(4));
  print(gcd(12, 18));
  print(lcm(12, 18));
}
