import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../core/shared_provider/shared_providers.dart';

final isLoginProvider = StateNotifierProvider<LoginProvider, bool>((ref) {
  return LoginProvider(ref);
});

class LoginProvider extends StateNotifier<bool> {
  LoginProvider(this.ref) : super(_getInitialState(ref));

  final Ref ref;

  static bool _getInitialState(Ref ref) {
    return ref
        .read(sharedPrefHelperProvider)
        .isLoggedIn;
  }

  void login({required String id, required String name}) {
    state = true;
    ref.read(sharedPrefHelperProvider).saveIsLoggedIn(true);
  }

  void logout() {
    state = false;
    ref.read(sharedPrefHelperProvider).saveIsLoggedIn(false);
  }
}