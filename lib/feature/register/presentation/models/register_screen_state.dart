import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:mvi/mvi.dart';

part 'register_screen_state.g.dart';

@CopyWith()
final class RegisterState extends BaseState with EquatableMixin {
  const RegisterState({
    this.email = '',
    this.password = '',
    this.isLoading = false,
    this.error = '',
  });
  final String email;
  final String password;
  final bool isLoading;
  final String error;

  @override
  List<Object?> get props => [email, password, isLoading, error];

  @override
  String toString() =>
      'RegisterState(email: $email, password: $password, isLoading: $isLoading, error: $error)';
}
