import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'app/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(375, 812),
      // Typical iPhone size; adjust as per your design
      minTextAdapt: true,
      builder: (context, child) {
        return
        GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Application",
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          theme: ThemeData(
            fontFamily: 'poppins',
            scaffoldBackgroundColor: Colors.white,
            useMaterial3: true, // Optional if using Material 3
          ),
        );
      },
    );
  }
}
