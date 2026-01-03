// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register_screen_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$RegisterStateCWProxy {
  RegisterState email(String email);

  RegisterState password(String password);

  RegisterState isLoading(bool isLoading);

  RegisterState error(String error);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RegisterState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RegisterState(...).copyWith(id: 12, name: "My name")
  /// ```
  RegisterState call({
    String email,
    String password,
    bool isLoading,
    String error,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfRegisterState.copyWith(...)` or call `instanceOfRegisterState.copyWith.fieldName(value)` for a single field.
class _$RegisterStateCWProxyImpl implements _$RegisterStateCWProxy {
  const _$RegisterStateCWProxyImpl(this._value);

  final RegisterState _value;

  @override
  RegisterState email(String email) => call(email: email);

  @override
  RegisterState password(String password) => call(password: password);

  @override
  RegisterState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  RegisterState error(String error) => call(error: error);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `RegisterState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// RegisterState(...).copyWith(id: 12, name: "My name")
  /// ```
  RegisterState call({
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return RegisterState(
      email: email == const $CopyWithPlaceholder() || email == null
          ? _value.email
          // ignore: cast_nullable_to_non_nullable
          : email as String,
      password: password == const $CopyWithPlaceholder() || password == null
          ? _value.password
          // ignore: cast_nullable_to_non_nullable
          : password as String,
      isLoading: isLoading == const $CopyWithPlaceholder() || isLoading == null
          ? _value.isLoading
          // ignore: cast_nullable_to_non_nullable
          : isLoading as bool,
      error: error == const $CopyWithPlaceholder() || error == null
          ? _value.error
          // ignore: cast_nullable_to_non_nullable
          : error as String,
    );
  }
}

extension $RegisterStateCopyWith on RegisterState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfRegisterState.copyWith(...)` or `instanceOfRegisterState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$RegisterStateCWProxy get copyWith => _$RegisterStateCWProxyImpl(this);
}
