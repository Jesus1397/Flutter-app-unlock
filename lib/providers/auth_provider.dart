import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

class AuthProvider extends ChangeNotifier {
  final LocalAuthentication _localAuth = LocalAuthentication();
  bool _isAuthenticated = false;
  final List<String> _enteredPin = [];

  bool get isAuthenticated => _isAuthenticated;
  List<String> get enteredPin => _enteredPin;

  void addPinDigit(String digit) {
    if (_enteredPin.length < 6) {
      _enteredPin.add(digit);
      notifyListeners();

      if (_enteredPin.length == 6) {
        _authenticateWithDevice();
      }
    }
  }

  void deletePinDigit() {
    if (_enteredPin.isNotEmpty) {
      _enteredPin.removeLast();
      notifyListeners();
    }
  }

  Future<void> _authenticateWithDevice() async {
    try {
      _isAuthenticated = await _localAuth.authenticate(
        localizedReason: 'Please authenticate to access the app',
        options: const AuthenticationOptions(
          useErrorDialogs: true,
          stickyAuth: true,
        ),
      );
    } catch (e) {
      _isAuthenticated = false;
    }
    notifyListeners();
  }

  void logout() {
    _isAuthenticated = false;
    _enteredPin.clear();
    notifyListeners();
  }
}
