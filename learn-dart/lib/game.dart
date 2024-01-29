import 'dart:io';
import 'dart:math';

/* helper */
int randomNumer(int start, int end) {
  Random random = Random();
  int number = random.nextInt(end - start) + start;
  return number;
}

/* Game 1 */
void rockPaperScissors() {
  print("Welcome to Rock, Paper, Scissors. \nType 'exit' to stop the game");
  List<String> options = ["rock", "paper", "sccissors"];
  int totalScore = 0;

  while (true) {
    int indexMachineOption = randomNumer(0, 3);
    String machineSide = options[indexMachineOption];

    stdout.write('Please choose Rock, Paper or Scissors: ');
    String userInput = stdin.readLineSync() ?? '';
    String userSide = userInput.toLowerCase();

    if (userSide == 'exit') {
      print('Exiting the program.');
      break;
    }

    if (!options.contains(userSide)) {
      print('Invalid input. Please enter rock/paper/sccissors.');
    }

    if (machineSide == 'rock' && userSide == 'paper' ||
        machineSide == "paper" && userSide == "sccissors" ||
        machineSide == "sccissors" && userSide == "rock") {
      print("->You win.");
      totalScore++;
    }
  }
  print('Total score: $totalScore');
}

/* Game 2 */
void guessNumber() {
  int misteryNumber = randomNumer(0, 100);
  int count = 0;
  print("Type exit to quit the game");

  while (true) {
    stdout.write('Please choose a number between 0 and 100: ');
    String userInput = stdin.readLineSync() ?? '';
    if (userInput.toLowerCase() == 'exit') {
      print('Exiting the program.');
      break;
    } else {
      try {
        count++;
        int numberInput = int.parse(userInput);
        if (numberInput == misteryNumber) {
          print('Bingo! You tried $count times.');
          break;
        } else if (numberInput > misteryNumber) {
          print("-> You are higher");
        } else {
          print("-> You are lower");
        }
      } catch (e) {
        print('Invalid input. Please enter a number.');
      }
    }
  }
}

/* Game 3 */
void cowsAndBulls() {
  String misteryNumber = randomNumer(1000, 9999).toString();
  print(misteryNumber);
  int cows = 0, bulls = 0;

  print("Welcome to Cows and Bulls \n Type 'exit' to stop the game");
  while (true) {
    stdout.write("Please choose a four digit number: ");
    String userInput = stdin.readLineSync() ?? '';

    if (userInput.toLowerCase() == 'exit') {
      print('Exiting the program.');
      break;
    }

    int? parsedNumber = int.tryParse(userInput);
    if (parsedNumber == null) {
      print('=> Invalid input. Please enter a number.');
    } else if (userInput.length != 4) {
      print('=> Incorrect number. Make sure to give a 4-digit number.');
    } else {
      print(parsedNumber);
      for (int i = 0; i < userInput.length; i++) {
        var character = userInput[i];
        if (character == misteryNumber[i]) {
          cows++;
        } else if (misteryNumber.contains(character)) {
          bulls++;
        }
      }
      print("=> Cows: $cows, Bulls: $bulls");
    }
  }
}

/* Game 4 */
void misteryWords(String words, String hint) {
  var uppercaseWords = words.toUpperCase();
  print('----HINT: $hint----');
  const underline = "___ ";
  List<String> openWords = List<String>.filled(words.length, underline);

  do {
    print(openWords);
    stdout.write('Please guess a letter: ');
    String userInput = stdin.readLineSync() ?? '';
    String uppercaseUserInput = userInput.toUpperCase();

    int index = uppercaseWords.indexOf(uppercaseUserInput);
    if (index != -1) {
      openWords[index] = userInput;
    }
  } while (openWords.contains(underline));
  print(openWords);
}
