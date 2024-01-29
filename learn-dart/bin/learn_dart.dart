import 'package:learn_dart/basic.dart';
import 'package:learn_dart/game.dart';

void main() {
  String divide = "********************";
  var test1 = findSubmultiple(12);
  print(test1);
  print(divide);

  List<int> arr1 = [1, 1, 2, 3, 5, 8, 89, 13, 21, 34, 55];
  List<int> arr2 = [1, 2, 3, 4, 5, 6, 10, 7, 8, 9, 11, 12, 13];
  var test2 = filterRepeatNumbers(arr1, arr2);
  print(test2);
  print(divide);

  bool isPrime = isPrimeNumber(12);
  print('12 is ${isPrime ? '' : 'not'} a prime number');
  print(divide);

  bool isValid = validatePassword("hello12A1@");
  print('Your password input is ${isValid ? "valid" : "invalid"}');

  misteryWords("MEAN", 'Guess');

  printTicTacToe(5);

  guessNumber();

  rockPaperScissors();

  cowsAndBulls();

 
}
