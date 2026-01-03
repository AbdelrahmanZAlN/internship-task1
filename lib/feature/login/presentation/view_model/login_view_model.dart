import 'package:mvi/mvi.dart';
import '../models/login_effect.dart';
import '../models/login_screen_state.dart';
import '../models/login_screen_events.dart';

final class LoginViewModel
    extends ViewModel<LoginState, LoginEvent, LoginEffect>{
  LoginViewModel() : super(const LoginState(), debugLabel: 'LoginViewModel');

  @override
  void onEvent(LoginEvent event) => switch (event) {
    OnEmailChange() => _onEmailChange(event.email),
    OnPasswordChange() => _onPasswordChange(event.password),
    OnLoginClicked() => _onLoginClicked(),
  };

  void _onEmailChange(String email) {
    updateState(state.value.copyWith(email: email));
  }

  void _onPasswordChange(String password) {
    updateState(state.value.copyWith(password: password));
  }

  Future<void> _onLoginClicked() async{
    updateState(state.value.copyWith(isLoading: true));

    /// Simulate a HTTP request
    /// Replace it with the actual HTTP request
    await Future<void>.delayed(const Duration(seconds: 2));

    updateState(state.value.copyWith(isLoading: false));

    if (state.value.email == 'admin@admin.com' &&
        state.value.password == '123456') {
      addEffect(LoginSuccess());
      return;
    }

    addEffect(LoginError());
  }

}

