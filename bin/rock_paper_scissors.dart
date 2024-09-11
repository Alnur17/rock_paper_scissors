import 'dart:io';

enum Move { rock, paper, scissors }

void main() {
  while (true) {
    print('Rock, Paper, Scissors? (r/p/s)'); // also work for stdout.write();
    final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playerMove;
      if (input == 'r') {
        playerMove = Move.rock;
      } else if (input == 'p') {
        playerMove = Move.paper;
      } else {
        playerMove = Move.scissors;
      }
      print('Selected: $input');
    } else if (input == 'q') {
      break;
    } else {
      print('Invalid input');
    }
  }
}
