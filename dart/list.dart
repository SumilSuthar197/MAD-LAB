// Function to Sum All Even Numbers in a List
int sumEvenNumbers(List<int> numbers) {
  int sum = 0;
  for (int num in numbers) {
    if (num % 2 == 0) {
      sum += num;
    }
  }
  return sum;
}

// Function to Return a List with Only Unique Values (No Duplicates)
List<int> uniqueValues(List<int> numbers) {
  Set<int> uniqueSet = {};
  for (int num in numbers) {
    uniqueSet.add(num);
  }
  return uniqueSet.toList();
}

// Loop to Iterate Over a Map and Print Key-Value Pairs
void printKeyValuePairs(Map<String, String> map) {
  for (var entry in map.entries) {
    print('${entry.key}: ${entry.value}');
  }
}

//  Higher-Order Function to Apply a Function to Each Element in a List
void applyFunction<T>(List<T> items, void Function(T) func) {
  for (T item in items) {
    func(item);
  }
}

void main() {
  List<int> numbers = [1, 1, 2, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  print('Sum of even numbers: ${sumEvenNumbers(numbers)}');
  print('Unique values: ${uniqueValues(numbers)}');

  Map<String, String> capitals = {
    'USA': 'Washington D.C.',
    'UK': 'London',
    'Japan': 'Tokyo'
  };
  printKeyValuePairs(capitals);

  void printSquare(int number) {
    print('Square of $number is ${number * number}');
  }

  applyFunction(numbers, printSquare);
}
