import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tic_tac_toe/tile.dart';
import 'package:flutter_phoenix/flutter_phoenix.dart';
import 'package:tic_tac_toe/data.dart';

void main() {
  runApp(
    RestartWidget(
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: true, home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Center(
          child: Text('Tic Tac Toe'),
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
            Container(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              padding: const EdgeInsets.all(8),
            ),
            Container(
              padding: const EdgeInsets.all(8),
            ),
            //Leave these top 3 containers null

            Container(child: Tile(tileNumber: 0)),
            Container(child: Tile(tileNumber: 1)),
            Container(child: Tile(tileNumber: 2)),
            Container(child: Tile(tileNumber: 3)),
            Container(child: Tile(tileNumber: 4)),
            Container(child: Tile(tileNumber: 5)),
            Container(child: Tile(tileNumber: 6)),
            Container(child: Tile(tileNumber: 7)),
            Container(child: Tile(tileNumber: 8)),
          ],
        ),
      ),
    );
  }
}

class RestartWidget extends StatefulWidget {
  RestartWidget({this.child});

  final Widget child;

  static void restartApp(BuildContext context) {
    context.findAncestorStateOfType<_RestartWidgetState>().restartApp();
  }

  @override
  _RestartWidgetState createState() => _RestartWidgetState();
}

class _RestartWidgetState extends State<RestartWidget> {
  Key key = UniqueKey();

  void restartApp() {
    setState(
      () {
        key = UniqueKey();
        player = playerCopy;
        image = imageCopy;
        tileDetails = tileDetailsCopy;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return KeyedSubtree(
      key: key,
      child: widget.child,
    );
  }
}
