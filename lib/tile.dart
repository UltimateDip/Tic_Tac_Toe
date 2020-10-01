import 'package:flutter/material.dart';
import 'package:tic_tac_toe/WinScreen.dart';
import 'CheckWin.dart';
import 'data.dart';

class Tile extends StatefulWidget {
  final int tileNumber;

  Tile({Key key, @required this.tileNumber}) : super(key: key);

  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  void switchPlayer() {
    if (player == 0) {
      player = 1;
    } else if (player == 1) {
      player = 0;
    }
  }

  Future<void> action() async {
    if (player == 0) {
      image = 0;
    } else if (player == 1) {
      image = 1;
    }
    tileDetails[widget.tileNumber] = [widget.tileNumber, image];
    setState(() {});
    int win = CheckWin()["win"];
    if (win == 1) {
      print('player$player won');

      await Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) {
            return WinScreen();
          },
        ),
      );
      //for checking
      // print('after push');
    }
    switchPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      color: Colors.white,
      child: FlatButton(
        padding: EdgeInsets.all(0.0),
        onPressed: () {
          if (tileDetails[widget.tileNumber][2]) {
            action();
          }
        },
        child: Image.asset(
          'images/image$image.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
