import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ifood/core/resources/app_router.dart';

void main() {
  runApp(DevicePreview(builder: (context) => const MyApp()));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        //  ignore:
        //  useInheritedMediaQuery: true,
        //   locale: DevicePreview.locale(context),
        //  builder: DevicePreview.appBuilder,
        routerConfig: AppRouter.approuter,
      ),
    );
  }
}
