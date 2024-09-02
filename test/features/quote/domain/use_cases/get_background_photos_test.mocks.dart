// Mocks generated by Mockito 5.4.4 from annotations
// in kuwot/test/features/quote/domain/use_cases/get_background_photos_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i3;

import 'package:fpdart/fpdart.dart' as _i4;
import 'package:kuwot/core/data/local/translation_target_config.dart' as _i9;
import 'package:kuwot/core/error/failure.dart' as _i5;
import 'package:kuwot/features/quote/domain/entities/background_image.dart'
    as _i6;
import 'package:kuwot/features/quote/domain/entities/quote.dart' as _i8;
import 'package:kuwot/features/quote/domain/repositories/quote_repository.dart'
    as _i2;
import 'package:mockito/mockito.dart' as _i1;
import 'package:mockito/src/dummies.dart' as _i7;

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

/// A class which mocks [QuoteRepository].
///
/// See the documentation for Mockito's code generation for more information.
class MockQuoteRepository extends _i1.Mock implements _i2.QuoteRepository {
  MockQuoteRepository() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i3.Future<
      _i4.Either<_i5.Failure,
          List<_i6.BackgroundImage>>> getBackgroundImages() =>
      (super.noSuchMethod(
        Invocation.method(
          #getBackgroundImages,
          [],
        ),
        returnValue: _i3
            .Future<_i4.Either<_i5.Failure, List<_i6.BackgroundImage>>>.value(
            _i7.dummyValue<_i4.Either<_i5.Failure, List<_i6.BackgroundImage>>>(
          this,
          Invocation.method(
            #getBackgroundImages,
            [],
          ),
        )),
      ) as _i3.Future<_i4.Either<_i5.Failure, List<_i6.BackgroundImage>>>);

  @override
  _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>> getQuote(
          _i9.TranslationTarget? translationTarget) =>
      (super.noSuchMethod(
        Invocation.method(
          #getQuote,
          [translationTarget],
        ),
        returnValue: _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>>.value(
            _i7.dummyValue<_i4.Either<_i5.Failure, _i8.Quote>>(
          this,
          Invocation.method(
            #getQuote,
            [translationTarget],
          ),
        )),
      ) as _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>>);

  @override
  _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>> getTranslatedQuote(
    int? id,
    _i9.TranslationTarget? translationTarget,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #getTranslatedQuote,
          [
            id,
            translationTarget,
          ],
        ),
        returnValue: _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>>.value(
            _i7.dummyValue<_i4.Either<_i5.Failure, _i8.Quote>>(
          this,
          Invocation.method(
            #getTranslatedQuote,
            [
              id,
              translationTarget,
            ],
          ),
        )),
      ) as _i3.Future<_i4.Either<_i5.Failure, _i8.Quote>>);
}
