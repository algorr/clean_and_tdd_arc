import 'package:auto_route/auto_route.dart';
import 'package:clean_arc/product/init/language/locale_keys.g.dart';
import 'package:clean_arc/product/navigation/app_router.dart';
import 'package:clean_arc/product/widget/product_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

/// The `HomeView` class represents a view in a Dart application that displays
/// a title, a lottie
/// animation, and a button to change the language.
@RoutePage()
class HomeView extends StatelessWidget {
  /// Constructor
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
            const Expanded(
              flex: 10,
              child: ProductNetworkImage(
                url: 'https://picsum.photos/200/300',
              ),
            ),
            // Assets.lotties.lottieCode.lottie(package: 'gen',),
            Expanded(
              child: const Text(LocaleKeys.home_columnTitle).tr(),
            ),
            ElevatedButton(
              onPressed: () {
                context.router.push(HomeDetailRoute(id: '1'));
              },
              child: const Text(LocaleKeys.home_columnTitle).tr(),
            ),
            ElevatedButton(
              onPressed: () {
                'KONYA'.ext.launchMaps();
              },
              child: const Text(LocaleKeys.home_title).tr(),
            ),
          ],
        ),
      ),
    );
  }
}
