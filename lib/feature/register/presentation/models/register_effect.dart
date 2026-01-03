import 'package:mvi/mvi.dart';

sealed class RegisterEffect extends BaseEffect {}

final class RegisterSuccess extends RegisterEffect {
  @override
  String toString() => 'RegisterSuccess';
}

final class RegisterError extends RegisterEffect {
  @override
  String toString() => 'RegisterError';
}
