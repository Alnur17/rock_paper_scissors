import 'dart:io';
import 'dart:math';

enum Move { rock, paper, scissors }

void main() {
  final randomNumGenarator = Random();
  while (true) {
    print('Rock, Paper, Scissors? (r/p/s)'); // also work for stdout.write();
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      Move playerMove; // also use var or enum
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      final random = randomNumGenarator.nextInt(3);
      final aiMove = Move.values[random];
      print('You played: $playerMove');
      print('AI played $aiMove');
      if (playerMove == aiMove) {
        print('It\'s a draw.');
      } else if (playerMove == Move.rock && aiMove == Move.scissors ||
          playerMove == Move.paper && aiMove == Move.rock ||
          playerMove == Move.scissors && aiMove == Move.paper) {
        print('You win');
      } else {
        print('You lose');
      }
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
