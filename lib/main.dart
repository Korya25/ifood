import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // ignore: deprecated_member_use
      //  useInheritedMediaQuery: true,
      //  locale: DevicePreview.locale(context),
      //  builder: DevicePreview.appBuilder,
    );
  }
}
