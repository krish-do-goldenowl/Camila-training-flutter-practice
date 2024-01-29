import 'dart:io';

/* Test 1 */
List<int> findSubmultiple(int number) {
  List<int> result = [];
  for (var i = 1; i <= number; i++) {
    if (number % i == 0) {
      result.add(i);
    }
  }

  return result;
}

/* Test 2 */
Set<int> filterRepeatNumbers(List<int> array1, List<int> array2) {
  List<int> result = array2.where((item) => array1.contains(item)).toList();
  return result.toSet();
}

/* Test 3 */
bool isPrimeNumber(int number) {
  if (number <= 1) {
    return false;
  }

  for (var i = 2; i <= number / 2; i++) {
    if (number % i == 0) {
      return false;
    }
  }

  return true;
}

/* Test 4 */
bool validatePassword(String input) {
  RegExp regex = RegExp(r'^(?=.*[0-9])(?=.*[!@#$%^&*])(?=.*[a-zA-Z]).{6,}$');
  return regex.hasMatch(input);
}

/* Exercise 1 */
void printTicTacToe(int squareSize) {
  String horizontal = ' ---';
  String space = '   ';
  String vertical = '|';

  for (var i = 0; i <= squareSize * 2; i++) {
    if (i % 2 == 0) {
      for (var j = 0; j < squareSize; j++) {
        stdout.write(horizontal);
      }
    } else {
      for (var j = 0; j <= squareSize * 2; j++) {
        if (j % 2 != 0) {
          stdout.write(space);
        } else
          stdout.write(vertical);
      }
    }
    print('');
  }
}
