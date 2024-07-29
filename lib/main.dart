import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:watch_store/components/themes.dart';
import 'package:watch_store/routes/routes.dart';
import 'package:watch_store/routes/routes_names.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 857),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Watch Store',
          theme: lightTheme,
          initialRoute: RoutesNames.root,
          routes: routes,
        );
      },
      // child: RegisterScreen(),
    );
  }
}
