class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
    if (_password.length < 8 || _password.length > 16) return false;

    bool hasUppercase = false;
    bool hasLowercase = false;
    bool hasNumber = false;

    for (int i = 0; i < _password.length; i++) {
      if (_password[i].toUpperCase() != _password[i]) hasLowercase = true;
      if (_password[i].toLowerCase() != _password[i]) hasUppercase = true;
      if (int.tryParse(_password[i]) != null) hasNumber = true;
    }

    return hasUppercase && hasLowercase && hasNumber;
  }

  @override
  String toString() {
    return 'Your Password is: ${_password}';
  }

  String get password => _password;

  set password(String newPassword) {
    _password = newPassword;
  }
}