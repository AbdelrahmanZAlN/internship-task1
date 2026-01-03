import 'package:blurry_modal_progress_hud/blurry_modal_progress_hud.dart';
import 'package:flutter/material.dart';
import 'package:internship_task_one/feature/register/presentation/screen/register_screen_root.dart';
import 'package:internship_task_one/feature/register/presentation/view_model/register_view_model.dart';
import 'package:mvi/mvi.dart';
import '../../../../core/utils/assets.dart';
import '../models/register_effect.dart';
import '../models/register_screen_events.dart';
import '../models/register_screen_state.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({required this.viewModel, super.key});

  final ViewModelCreator<RegisterViewModel> viewModel ;

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen>
    with
        ViewModelMixin<
            RegisterScreen,
            RegisterState,
            RegisterEvent,
            RegisterEffect,
            RegisterViewModel
        > {
  @override

  RegisterViewModel createViewModel() => widget.viewModel();


  late final _isLoading = viewModel.select(
        (state) => state.isLoading,
    debugLabel: 'isLoading',
  );

  @override
  // Handles side effects produced by the ViewModel
  // Effects represent one-time actions like navigation or showing dialogs
  void onEffect(covariant RegisterEffect effect, BuildContext context) =>
      switch (effect) {
        RegisterSuccess() => _onRegisterSuccess(context),
        RegisterError() => _onRegisterError(context),
      };

  void _onRegisterSuccess(BuildContext context) {
    // TODO: Navigate to the next screen
  }

  void _onRegisterError(BuildContext context) {
    // TODO: Show error dialog
    showDialog<void>(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text('Oops!'),
        content: Text('Authentication failed. Please try again.'),
      ),
    );
  }

  Future<void> _onRegister(BuildContext context) async {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
      await Future<void>.delayed(const Duration(milliseconds: 300));
    }

    addEvent(OnRegisterClicked());
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
            child: Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.1966, // 167.29251 / 851
                  child: Image.asset(
                    AssetsData.backgroundRectanglePng,
                    fit: BoxFit.cover, // fill width while keeping aspect ratio
                  ),
                ),
                RegisterScreenRoot(
                  state: viewModel.state.value, onEvent: addEvent),
            ]
            )
            ,
          );
        }
        );
  }
}
