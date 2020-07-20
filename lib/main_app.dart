import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'custom_audioplayer.dart';

// shout out Jossef Harush https://stackoverflow.com/questions/50081213/how-do-i-use-hexadecimal-color-strings-in-flutter
class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: HexColor("#6441a5"),
          title: Center(child: Text("Twitch Meme board")),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("3"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("3"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("3"),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("1"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("2"),
                ),
                Padding(
                  padding: const EdgeInsets.all(60.0),
                  child: Text("3"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
