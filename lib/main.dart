import 'package:clean_arc/feature/home/view/home_view.dart';
import 'package:clean_arc/product/init/main_app_initialize.dart';
import 'package:clean_arc/product/init/product_localization.dart';
import 'package:clean_arc/product/init/theme/app_color_scheme.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

Future<void> main() async {
  await MainAppInitialize().setup();
  runApp(ProductLocalization(child: const _MyApp()));
}

class _MyApp extends StatelessWidget {
  const _MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Clean_Arc & Tdd_Arc',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const HomeView(),
    );
  }
}
