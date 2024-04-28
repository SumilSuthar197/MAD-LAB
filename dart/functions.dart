// normal function
void greet() {
  print('Hello, World!');
}

// function with parameters
void greetWithName(String name) {
  print('Hello, $name!');
}

// function with return type
int sum(int a, int b) {
  return a + b;
}

// function with optional parameters
void greetWithOptionalName([String name = 'World']) {
  print('Hello, $name!');
}

// function with named parameters
void greetWithNamedParameters({String name = 'World', int age = 18}) {
  print('Hello, $name! You are $age years old.');
}

// Arrow function
int multiply(int a, int b) => a * b;

// lambda function
var multiplyLambda = (int a, int b) {
  return a * b;
};

// higher-order function
void applyFunction<T>(List<T> items, void Function(T) func) {
  for (T item in items) {
    func(item);
  }
}

void main() {
  greet();
  greetWithName('John');
  print('Sum: ${sum(5, 3)}');
  greetWithOptionalName();
  greetWithOptionalName('Alice');
  greetWithNamedParameters(name: 'Bob', age: 25);
  greetWithNamedParameters(age: 30);
  print('Product: ${multiply(5, 3)}');
  print('Product: ${multiplyLambda(5, 3)}');

  List<int> numbers = [1, 2, 3, 4, 5];
  applyFunction(numbers, (num) => print(num));
  
}
