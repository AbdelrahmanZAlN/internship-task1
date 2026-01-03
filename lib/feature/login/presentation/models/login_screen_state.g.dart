// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_screen_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginStateCWProxy {
  LoginState email(String email);

  LoginState password(String password);

  LoginState isLoading(bool isLoading);

  LoginState error(String error);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginState call({
    String email,
    String password,
    bool isLoading,
    String error,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoginState.copyWith(...)` or call `instanceOfLoginState.copyWith.fieldName(value)` for a single field.
class _$LoginStateCWProxyImpl implements _$LoginStateCWProxy {
  const _$LoginStateCWProxyImpl(this._value);

  final LoginState _value;

  @override
  LoginState email(String email) => call(email: email);

  @override
  LoginState password(String password) => call(password: password);

  @override
  LoginState isLoading(bool isLoading) => call(isLoading: isLoading);

  @override
  LoginState error(String error) => call(error: error);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginState call({
    Object? email = const $CopyWithPlaceholder(),
    Object? password = const $CopyWithPlaceholder(),
    Object? isLoading = const $CopyWithPlaceholder(),
    Object? error = const $CopyWithPlaceholder(),
  }) {
    return LoginState(
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

extension $LoginStateCopyWith on LoginState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoginState.copyWith(...)` or `instanceOfLoginState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoginStateCWProxy get copyWith => _$LoginStateCWProxyImpl(this);
}
