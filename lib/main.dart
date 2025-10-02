import 'package:appointment_app/core/routes/app_router.dart';
import 'package:appointment_app/core/routes/routes.dart';
import 'package:appointment_app/core/theme/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(MyApp(appRouter: AppRouter()));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key, required this.appRouter});
  final AppRouter appRouter;

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      // Use builder only if you need to use library outside ScreenUtilInit context
      builder: (_, child) {
        return MaterialApp(
          theme: lightTheme,
          debugShowCheckedModeBanner: false,
          title: 'Appointment App',
          onGenerateRoute: widget.appRouter.generateRoute,
          initialRoute: Routes.loginScreen,
        );
      },
    );
  }
}
