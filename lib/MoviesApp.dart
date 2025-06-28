import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:movies_app/core/ThemeManager.dart';
import 'package:movies_app/core/extensions/extensions.dart';
import 'package:movies_app/core/routesManager.dart';
class Moviesapp extends StatelessWidget {
  const Moviesapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(context.width, context.height),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (context, child) => MaterialApp(
    debugShowCheckedModeBanner: false,
    onGenerateRoute: RoutesManager.router,
    initialRoute: RoutesManager.register,
    themeMode:ThemeMode.dark, darkTheme: ThemeManager.dark
    )
    );
  }
}
