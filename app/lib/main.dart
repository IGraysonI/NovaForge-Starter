import 'package:flutter/material.dart';
import 'package:novaforge_starter/src/common/util/app_zone.dart';
import 'package:novaforge_starter/src/feature/initialization/initialization.dart' deferred as initialization;

void main() => appZone(() async {
  final initializationProgress = ValueNotifier<({int progress, String message})>((progress: 0, message: ''));
  await initialization.loadLibrary();
  await initialization.$initializeApp(
    onProgress: (progress, message) => initializationProgress.value = (progress: progress, message: message),
    onSuccess: (dependencies) async => runApp(
      dependencies.inject(
        child: const MainApp(),
      ),
    ),
    onError: (error, stackTrace) async {},
  );
});

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) => const MaterialApp(
    home: Scaffold(body: Center(child: Text('Hello World!'))),
  );
}
