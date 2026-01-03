import 'package:mvi/mvi.dart';
import '../models/register_effect.dart';
import '../models/register_screen_state.dart';
import '../models/register_screen_events.dart';

final class RegisterViewModel
    extends ViewModel<RegisterState, RegisterEvent, RegisterEffect>{
  RegisterViewModel() : super(const RegisterState(), debugLabel: 'RegisterViewModel');

  @override
  void onEvent(RegisterEvent event) => switch (event) {
    OnEmailChange() => _onEmailChange(event.email),
    OnPasswordChange() => _onPasswordChange(event.password),
    OnRegisterClicked() => _onRegisterClicked(),
  };

  void _onEmailChange(String email) {
    updateState(state.value.copyWith(email: email));
  }

  void _onPasswordChange(String password) {
    updateState(state.value.copyWith(password: password));
  }

  Future<void> _onRegisterClicked() async{
    updateState(state.value.copyWith(isLoading: true));

    /// Simulate a HTTP request
    /// Replace it with the actual HTTP request
    await Future<void>.delayed(const Duration(seconds: 2));

    updateState(state.value.copyWith(isLoading: false));

    if (state.value.email == 'admin@admin.com' &&
        state.value.password == '123456') {
      addEffect(RegisterSuccess());
      return;
    }

    addEffect(RegisterError());
  }

}

