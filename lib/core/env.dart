// ignore_for_file: public_member_api_docs

import 'package:envied/envied.dart';

part 'env.g.dart';

abstract class Env {
  String get authPublicKey;
}

@Envied(path: '.env')
class EnvImpl implements Env {
  @EnviedField(varName: 'AUTH_PUBLIC_KEY', obfuscate: true)
  static final String _authPublicKey = _EnvImpl._authPublicKey;

  @override
  String get authPublicKey => _authPublicKey;
}
