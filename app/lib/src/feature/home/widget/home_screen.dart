import 'package:flutter/material.dart';

/// {@template home_screen}
/// HomeScreen widget.
/// {@endtemplate}
class HomeScreen extends StatelessWidget {
  /// {@macro home_screen}
  const HomeScreen({
    super.key, // ignore: unused_element_parameter
  });

  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: Scaffold(body: Center(child: Text('Hello World!'))),
  );
}
