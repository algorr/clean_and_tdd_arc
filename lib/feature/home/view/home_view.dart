import 'package:clean_arc/product/init/language/locale_keys.g.dart';
import 'package:clean_arc/product/init/product_localization.dart';
import 'package:clean_arc/product/utility/constants/enums/product_locales.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:gen/gen.dart';

/// The `HomeView` class represents a view in a Dart application that displays
/// a title, a lottie
/// animation, and a button to change the language.
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.home_title).tr(),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.lotties.lottieCode.lottie(
              package: 'gen',
            ),
            const Text(LocaleKeys.home_columnTitle).tr(),
            ElevatedButton(
              onPressed: () {
                ProductLocalization.updateLanguage(
                  context: context,
                  value: ProductLocales.tr,
                );
              },
              child: const Text(LocaleKeys.home_columnTitle).tr(),
            ),
          ],
        ),
      ),
    );
  }
}
