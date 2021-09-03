import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:gestalt_gui/app_const.dart';
import 'package:gestalt_gui/screens/home_screen.dart';
import 'package:window_size/window_size.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle(AppConst.APP_TITLE);
    setWindowMinSize(AppConst.DESKTOP_SIZE);
    setWindowMaxSize(AppConst.DESKTOP_SIZE);
  }

  runZonedGuarded(() {
    runApp(GestaltGui());
  }, (ex, stacktrace) {
    print(ex);
    print(stacktrace);
  });
}

class GestaltGui extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppConst.APP_TITLE,
      theme: ThemeData(
        backgroundColor: Colors.amber,
        canvasColor: Colors.amber,
        primarySwatch: Colors.blue,
        accentColor: Colors.green
      ),
      home: HomeScreen(),
    );
  }
}
