import 'package:example/widgets/ui_kit/widget_groups.dart';
import 'package:flutter/material.dart';
import 'package:uikit/uikit.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    registerWidgetGroups();
    return MaterialApp(
      title: 'UIKit Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: UiKitPage(),
    );
  }
}
