import 'package:tic_tac_toe/data.dart';

bool CheckDraw() {
  var isDraw = true, i = 0;

  do {
    if (tileDetails[i][1] > 11) {
      isDraw = false;
    } else
      isDraw = true;
    i++;
  } while (isDraw && i < 9);

  return isDraw;
}
