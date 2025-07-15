import 'package:flutter/material.dart';
import 'package:ifood/core/resources/app_router.dart';
import 'package:ifood/core/resources/app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // ignore: deprecated_member_use
      //  useInheritedMediaQuery: true,
      //  locale: DevicePreview.locale(context),
      //  builder: DevicePreview.appBuilder,
      routerConfig: AppRouter.approuter,
      theme: AppTheme.appTheme,
    );
  }
}
