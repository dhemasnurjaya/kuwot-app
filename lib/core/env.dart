// ignore_for_file: public_member_api_docs

import 'package:envied/envied.dart';

part 'env.g.dart';

abstract class Env {
  String get authPublicKey;
  String get sentryDsn;
}

@Envied(path: '.env')
class EnvImpl implements Env {
  @EnviedField(varName: 'AUTH_PUBLIC_KEY', obfuscate: true)
  static final String _authPublicKey = _EnvImpl._authPublicKey;

  @EnviedField(varName: 'SENTRY_DSN', defaultValue: '', obfuscate: true)
  static final String _sentryDsn = _EnvImpl._sentryDsn;

  @override
  String get authPublicKey => _authPublicKey;

  @override
  String get sentryDsn => _sentryDsn;
}
