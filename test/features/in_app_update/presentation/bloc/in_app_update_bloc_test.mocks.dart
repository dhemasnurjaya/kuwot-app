// Mocks generated by Mockito 5.4.4 from annotations
// in kuwot/test/features/in_app_update/presentation/bloc/in_app_update_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i4;

import 'package:in_app_update/in_app_update.dart' as _i2;
import 'package:kuwot/core/app_updater.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;

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

class _FakeAppUpdateInfo_0 extends _i1.SmartFake implements _i2.AppUpdateInfo {
  _FakeAppUpdateInfo_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [AppUpdater].
///
/// See the documentation for Mockito's code generation for more information.
class MockAppUpdater extends _i1.Mock implements _i3.AppUpdater {
  MockAppUpdater() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i4.Future<_i2.AppUpdateInfo> checkForUpdate() => (super.noSuchMethod(
        Invocation.method(
          #checkForUpdate,
          [],
        ),
        returnValue: _i4.Future<_i2.AppUpdateInfo>.value(_FakeAppUpdateInfo_0(
          this,
          Invocation.method(
            #checkForUpdate,
            [],
          ),
        )),
      ) as _i4.Future<_i2.AppUpdateInfo>);

  @override
  _i4.Future<_i2.AppUpdateResult> update() => (super.noSuchMethod(
        Invocation.method(
          #update,
          [],
        ),
        returnValue:
            _i4.Future<_i2.AppUpdateResult>.value(_i2.AppUpdateResult.success),
      ) as _i4.Future<_i2.AppUpdateResult>);
}
