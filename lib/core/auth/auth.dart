import 'dart:convert';

import 'package:encrypt/encrypt.dart';
import 'package:kuwot/core/auth/auth_model.dart';
import 'package:kuwot/core/env.dart';
import 'package:kuwot/core/time.dart';
import 'package:pointycastle/asymmetric/api.dart';
import 'package:uuid/uuid.dart';

abstract class Auth {
  String get getAccessToken;
}

class AuthImpl implements Auth {
  final Env env;
  final Time time;

  AuthImpl({required this.env, required this.time});

  @override
  String get getAccessToken {
    final keyBytes = base64.decode(env.authPublicKey);
    final keyParser = RSAKeyParser();
    final publicKey = keyParser.parse(utf8.decode(keyBytes)) as RSAPublicKey;
    final encrypter = Encrypter(RSA(publicKey: publicKey));

    final uuid = const Uuid().v4();
    final issuedAt = time.getUnixTimestamp();
    final authData = AuthModel(token: uuid, issuedAt: issuedAt);

    final encryptedToken = encrypter.encrypt(jsonEncode(authData));
    return encryptedToken.base64;
  }
}
