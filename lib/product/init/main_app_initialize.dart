import 'dart:async';

import 'package:clean_arc/product/init/config/app_environment.dart';
import 'package:clean_arc/product/init/config/env_dev.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:easy_logger/easy_logger.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:kartal/kartal.dart';
import 'package:logger/logger.dart';

/// The code snippet defines a class named `MainAppInitialize` with a `setup` method.
final class MainAppInitialize {
  /// The function sets up a zone and initializes a logger with a pretty printer.
  Future<void> setup() async {
    await runZonedGuarded<Future<void>>(_initialize, (error, stack) {
      Logger(printer: PrettyPrinter());
    });
  }

  Future<void> _initialize() async {
    BindingBase.debugZoneErrorsAreFatal = false;
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
    EasyLocalization.logger.enableLevels = [LevelMessages.error];
    await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    await DeviceUtility.instance.initPackageInfo();
    FlutterError.onError = (details) {
      // Catching the errors here to avoid app crash
      Logger().e(details.exceptionAsString());
    };

    AppEnvironment.setup(configuration: DevEnv());
  }
}
