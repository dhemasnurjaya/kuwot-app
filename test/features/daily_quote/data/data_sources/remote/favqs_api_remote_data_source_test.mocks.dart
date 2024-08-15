// Mocks generated by Mockito 5.4.4 from annotations
// in kuwot/test/features/daily_quote/data/data_sources/remote/favqs_api_remote_data_source_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:kuwot/core/network/network.dart' as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i4;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

/// A class which mocks [Network].
///
/// See the documentation for Mockito's code generation for more information.
class MockNetwork extends _i1.Mock implements _i2.Network {
  MockNetwork() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<String> get(
    Uri? uri, {
    Map<String, String>? headers,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [uri],
          {#headers: headers},
        ),
        returnValue: _i3.Future<String>.value(_i4.dummyValue<String>(
          this,
          Invocation.method(
            #get,
            [uri],
            {#headers: headers},
          ),
        )),
      ) as _i3.Future<String>);

  @override
  _i3.Future<String> post(
    Uri? uri, {
    Map<String, String>? headers,
    Object? body,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [uri],
          {
            #headers: headers,
            #body: body,
          },
        ),
        returnValue: _i3.Future<String>.value(_i4.dummyValue<String>(
          this,
          Invocation.method(
            #post,
            [uri],
            {
              #headers: headers,
              #body: body,
            },
          ),
        )),
      ) as _i3.Future<String>);
}
