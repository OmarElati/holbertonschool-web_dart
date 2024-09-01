
class Password {
  String? _password;

  Password({String? password}) : _password = password;

  String? get password => _password;

  set password(String? value) {
    _password = value;
  }

  bool isValid() {
    if (_password == null) return false;
    if (_password!.length < 8 || _password!.length > 16) return false;
    if (!_password!.contains(RegExp(r'[A-Z]'))) return false;
    if (!_password!.contains(RegExp(r'[a-z]'))) return false;
    if (!_password!.contains(RegExp(r'[0-9]'))) return false;
    return true;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password ?? ""}';
  }
}
