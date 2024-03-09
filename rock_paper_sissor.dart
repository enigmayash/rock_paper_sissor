import 'dart:io';
import 'dart:math';

enum move { rock, paper, scissor }

void main() {
 
  final rng = Random();
  while (true) {
     stdout.write('rock , paper , scissor ? (r/p/s)');
      final input = stdin.readLineSync();
    if (input == 'r' || input == 'p' || input == 's') {
      var playermove;
      if (input == 'r')
        playermove = move.rock;
      else if (input == 'p')
        playermove = move.paper;
      else
        playermove = move.scissor;
      final random = rng.nextInt(3);
      final aimove = move.values[random];
      print('ypu played : $playermove');
      print('ai played : $aimove');
      if (playermove == aimove)
        print('its a draw');
      else if (playermove == move.rock && aimove == move.scissor ||
          playermove == move.paper && aimove == move.rock ||
          playermove == move.scissor && aimove == move.paper) {
        print('you win');
      } else {
        print('you lose');
      }
    } else if (input == 'q')
      break;
    else
      print('invalid input');
  }
}
