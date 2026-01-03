import 'package:mvi/mvi.dart';

sealed class RegisterEvent extends BaseEvent {}

final class OnEmailChange extends RegisterEvent {
  OnEmailChange(this.email);
  final String email;

  @override
  String toString() => 'EmailChanged(email: $email)';
}

final class OnPasswordChange extends RegisterEvent {
  OnPasswordChange(this.password);
  final String password;

  @override
  String toString() => 'PasswordChanged(password: $password)';
}

final class OnRegisterClicked extends RegisterEvent {
  @override
  String toString() => 'RegisterClicked';
}