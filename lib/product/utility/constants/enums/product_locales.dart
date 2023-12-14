import 'package:flutter/material.dart';

/// Project Locale Enums
enum ProductLocales {
  /// tr locale
  tr(Locale('tr', 'TR')),

  /// en locale
  en(Locale('en', 'US'));

  /// Locale value
  final Locale locale;

  const ProductLocales(this.locale);
}
