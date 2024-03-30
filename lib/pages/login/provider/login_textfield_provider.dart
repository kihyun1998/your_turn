import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:your_turn/pages/login/state/login_textfield_state.dart';

part 'login_textfield_provider.g.dart';

@riverpod
class LoginTextField extends _$LoginTextField {
  @override
  LoginTextfieldState build() {
    return LoginTextfieldState.init();
  }

  /// Dispose all textfield
  void disposeAll() {
    state.disposeAll();
  }
}
