import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

final class MainAppInitialize {
  Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
