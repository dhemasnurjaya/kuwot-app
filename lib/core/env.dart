// ignore_for_file: public_member_api_docs

abstract class Env {
  String get authPublicKey;

  String get sentryDsn;
}

class EnvImpl implements Env {
  @override
  String get authPublicKey => const String.fromEnvironment('AUTH_PUBLIC_KEY');

  @override
  String get sentryDsn => const String.fromEnvironment(
        'SENTRY_DSN',
        defaultValue: '',
      );
}
