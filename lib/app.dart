import 'package:flutter/material.dart';
import 'package:fly_mac/routes/app_pages.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key, required this.initialRoute});
  final String initialRoute;

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "Fly Mac",
      supportedLocales: const [
        Locale("fr"),
        Locale("en"),
      ],
      // themeMode: ThemeMode.system,
      themeMode: ThemeMode.light,
      theme: ThemeData.light(useMaterial3: true),
      locale: Get.deviceLocale,
      fallbackLocale: const Locale("fr"),
      initialRoute: initialRoute,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}
