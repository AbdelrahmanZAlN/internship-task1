import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:mvi/mvi.dart';
import '../../../../core/utils/assets.dart';
import '../models/login_effect.dart';
import '../models/login_screen_events.dart';
import '../models/login_screen_state.dart';
import '../view_model/login_view_model.dart';
import 'login_screen_root.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({required this.viewModel, super.key});

  final ViewModelCreator<LoginViewModel> viewModel ;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen>
    with
        ViewModelMixin<
            LoginScreen,
            LoginState,
            LoginEvent,
            LoginEffect,
            LoginViewModel
        > {
  @override

  LoginViewModel createViewModel() => widget.viewModel();


  late final _isLoading = viewModel.select(
        (state) => state.isLoading,
    debugLabel: 'isLoading',
  );

  @override
  // Handles side effects produced by the ViewModel
  // Effects represent one-time actions like navigation or showing dialogs
  void onEffect(covariant LoginEffect effect, BuildContext context) =>
      switch (effect) {
        LoginSuccess() => _onLoginSuccess(context),
        LoginError() => _onLoginError(context),
      };

  void _onLoginSuccess(BuildContext context) {
    // TODO: Navigate to the next screen
  }

  void _onLoginError(BuildContext context) {
    // TODO: Show error dialog
    showDialog<void>(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Oops!'),
        content: Text('Authentication failed. Please try again.'),
      ),
    );
  }

  Future<void> _onLogin(BuildContext context) async {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
      await Future<void>.delayed(const Duration(milliseconds: 300));
    }

    addEvent(OnLoginClicked());
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
        valueListenable: _isLoading,
        builder: (context, isLoading, child) {
          return BlurryModalProgressHUD(
            inAsyncCall: isLoading,
            blurEffectIntensity: 2.5,
            progressIndicator: CircularProgressIndicator(
              color: Colors.red,
              strokeWidth: 3,
            ),
            dismissible: false,
            opacity: 0.25,
            color: Colors.black,
            child: LoginScreenRoot(
              state: viewModel.state.value, onEvent: addEvent)
            ,
          );
        }
        );
  }
}
