import 'package:mvi/mvi.dart';

sealed class LoginEvent extends BaseEvent {}

final class OnEmailChange extends LoginEvent {
  OnEmailChange(this.email);
  final String email;

  @override
  String toString() => 'EmailChanged(email: $email)';
}

final class OnPasswordChange extends LoginEvent {
  OnPasswordChange(this.password);
  final String password;

  @override
  String toString() => 'PasswordChanged(password: $password)';
}

final class OnLoginClicked extends LoginEvent {
  @override
  String toString() => 'LoginClicked';
}