class Password {
  String _password = '';

  Password({required String password}) : _password = password;

  bool isValid() {
  if (_password.length < 8 || _password.length > 16) {
    return false;
  }
  
  final pattern = RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])');
  return pattern.hasMatch(_password);
}

   String toString() {
        return (
            'Password ${_password}'
        );
    }

  String get password => _password;

  set password(String value) {
    _password = value;
  }
}
