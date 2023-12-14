import 'package:clean_arc/product/utility/constants/enums/product_locales.dart';
import 'package:clean_arc/product/utility/constants/strings/localization_strings.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

/// The `ProductLocalization` class is a subclass of `EasyLocalization` that provides localization
/// support for the supported languages in the `supportedLanguages` list.
class ProductLocalization extends EasyLocalization {
  /// The `ProductLocalization` class is a subclass of `EasyLocalization` that provides localization
  /// support for the supported languages in the `supportedLanguages` list.
  ProductLocalization({
    required super.child,
    super.key,
  }) : super(
          supportedLocales: supportedLanguages,
          path: LocalizationStrings.localizationPath,
          useOnlyLangCode: true,
        );

  /// The `static final List<Locale> supportedLanguages` is a list of supported languages for
  /// localization in the `ProductLocalization` class. It includes the locales for Turkish
  /// (`ProductLocales.tr.locale`) and English (`ProductLocales.en.locale`). These locales represent the
  /// language and country code for each supported language.
  static final List<Locale> supportedLanguages = [
    ProductLocales.tr.locale,
    ProductLocales.en.locale,
  ];

  /// The function updates the language/locale of the app using the provided value.
  ///
  /// Args:
  ///   context (BuildContext): The context parameter is of type BuildContext and represents the current
  /// build context of the widget tree. It is used to access the current state of the application and
  /// perform actions such as updating the locale.
  ///   value (ProductLocales): The `value` parameter is of type `ProductLocales`, which is an object that
  /// contains information about the desired locale for the application. It likely has a property called
  /// `locale` that represents the specific locale to be set.
  static Future<void> updateLanguage({
    required BuildContext context,
    required ProductLocales value,
  }) =>
      context.setLocale(value.locale);
}
