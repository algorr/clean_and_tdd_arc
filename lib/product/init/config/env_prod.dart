import 'package:clean_arc/product/init/config/app_configuration.dart';
import 'package:envied/envied.dart';

part 'env_prod.g.dart';

@Envied(
  obfuscate: true,
  path: 'assets/env/.prod.env',
)
final class ProdEnv implements AppConfiguration {
  @EnviedField(varName: 'BASE_URL')
  static final String _baseUrl = _ProdEnv._baseUrl;
  @EnviedField(varName: 'API_KEY')
  static final String _apiKey = ProdEnv._apiKey;

  @override
  String get apiKey => _apiKey;

  @override
  // TODO: implement baseUrl
  String get baseUrl => _baseUrl;
}
