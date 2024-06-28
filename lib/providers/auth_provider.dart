import 'package:flutter/material.dart';
import 'package:local_auth/local_auth.dart';

const storedPin = '1997';

class AuthProvider extends ChangeNotifier {
  final LocalAuthentication _localAuth = LocalAuthentication();
  final List<String> _enteredPin = [];
  bool _isAuthenticated = false;

  bool get isAuthenticated => _isAuthenticated;
  List<String> get enteredPin => _enteredPin;

  void addPinDigit(String digit) {
    if (_enteredPin.length < 4) {
      _enteredPin.add(digit);
      notifyListeners();

      if (_enteredPin.length == 4) {
        authenticateWithPin();
      }
    }
  }

  void deletePinDigit() {
    if (_enteredPin.isNotEmpty) {
      _enteredPin.removeLast();
      notifyListeners();
    }
  }

  Future<void> authenticateWithFingerprint() async {
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

  Future<void> authenticateWithPin() async {
    try {
      if (_enteredPin.join('') == storedPin) {
        _isAuthenticated = true;
      } else {
        _isAuthenticated = false;
        _enteredPin.clear();
      }
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
