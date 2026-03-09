import 'package:flutter/material.dart';
import 'package:novaforge_starter/src/common/util/app_zone.dart';

void main() => appZone(() async {
  runApp(const MainApp());
});

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Hello World!'))),
    );
  }
}
