import 'package:flutter/material.dart';
import 'package:tic_tac_toe/data.dart';
import 'package:tic_tac_toe/main.dart';

class DrawScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text('Draw'),
        ),
      ),
      body: SafeArea(
        child: GridView.count(
          primary: false,
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 3,
          children: <Widget>[
            //leave the following 3 containers null
            Container(padding: const EdgeInsets.all(8)),
            Container(padding: const EdgeInsets.all(8)),
            Container(padding: const EdgeInsets.all(8)),
            //Leave these top 3 containers null

            //below 9 containers are main tile
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(0),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(1),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(2),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(3),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(4),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(5),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(6),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(7),
            ),
            Container(
              padding: const EdgeInsets.all(8),
              color: Colors.white,
              child: lastScreen(8),
            ),
            //above 9 containers are main tile

            Container(padding: const EdgeInsets.all(8)), //null container

            Container(
              child: FlatButton(
                padding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 15.0),
                child: Material(
                  elevation: 5.0,
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(10.0),
                  child: MaterialButton(
                    minWidth: 200.0,
                    height: 42.0,
                    child: Text(
                      "New Game",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    onPressed: () async {
                      //for checking
                      // {print('In DrawScreen -->');
                      // print('1)player is $player');
                      // print('2)image is $image');
                      // print('3)tileDetails is $tileDetails');}

                      await RestartWidget.restartApp(context);
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Widget lastScreen(int tileNumber) => Image.asset(
      'images/image${tileDetails[tileNumber][1]}.png',
      fit: BoxFit.fill,
    );
