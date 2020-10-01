import 'data.dart';

Map CheckWin() {
  //print(tileDetails)

  if ((tileDetails[0][1] == tileDetails[1][1]) &&
      (tileDetails[1][1] == tileDetails[2][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [0, 1, 2]
    };

    return winMap;
  } else if ((tileDetails[2][1] == tileDetails[5][1]) &&
      (tileDetails[5][1] == tileDetails[8][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [2, 5, 8]
    };

    return winMap;
  } else if ((tileDetails[8][1] == tileDetails[7][1]) &&
      (tileDetails[7][1] == tileDetails[6][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [6, 7, 8]
    };

    return winMap;
  } else if ((tileDetails[6][1] == tileDetails[3][1]) &&
      (tileDetails[3][1] == tileDetails[0][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [0, 3, 6]
    };

    return winMap;
  } else if ((tileDetails[0][1] == tileDetails[4][1]) &&
      (tileDetails[4][1] == tileDetails[8][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [0, 4, 8]
    };

    return winMap;
  } else if ((tileDetails[6][1] == tileDetails[4][1]) &&
      (tileDetails[4][1] == tileDetails[2][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [2, 4, 6]
    };

    return winMap;
  } else if ((tileDetails[3][1] == tileDetails[4][1]) &&
      (tileDetails[4][1] == tileDetails[5][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [3, 4, 5]
    };

    return winMap;
  } else if ((tileDetails[1][1] == tileDetails[4][1]) &&
      (tileDetails[4][1] == tileDetails[7][1])) {
    Map winMap = {
      "win": 1,
      "tileNumbers": [1, 4, 7]
    };

    return winMap;
  } else {
    Map winMap = {
      "win": 0,
      "tileNumbers": [null, null, null]
    };
    return winMap;
  }
}
