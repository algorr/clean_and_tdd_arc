import 'package:flutter/foundation.dart';
import 'package:gen/gen.dart';

/// The code defines a class called `AppEnvironment` that is responsible for
/// configuration settings of the application.
final class AppEnvironment {
  /// The `AppEnvironment.setup` method is a constructor that takes an instance
  /// a parameter. It is responsible for setting the `_configuration` variable
  /// class to the provided configuration. The `required` keyword indicates that
  /// parameter is mandatory and must be provided when creating an instance of
  AppEnvironment.setup({required AppConfiguration configuration}) {
    _configuration = configuration;
  }

  /// The `AppEnvironment.general()` method is a constructor that is responsible
  /// `_configuration` variable of the `AppEnvironment` class based on the current
  AppEnvironment.general() {
    _configuration = kDebugMode ? DevEnv() : ProdEnv();
  }

  static late final AppConfiguration _configuration;
}

enum AppEnvironmentItems {
  /// network base url
  baseUrl,

  /// api Key
  apiKey;

  /// Get AppEnvironment Items
  String get value {
    try {
      switch (this) {
        case AppEnvironmentItems.baseUrl:
          return AppEnvironment._configuration.baseUrl;
        case AppEnvironmentItems.apiKey:
          return AppEnvironment._configuration.apiKey;
      }
    } catch (e) {
      throw Exception('AppEnvironment is not initialized');
    }
  }
}
