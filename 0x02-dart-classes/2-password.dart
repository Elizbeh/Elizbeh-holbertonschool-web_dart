class Password {
  String password = '';

  bool isValid() {
    if (password.length < 8 || password.length > 16) return false;

    if (!password.contains(RegExp(r'[A-Z][a-z][0-9]'))) return false;
    
    return true;
  }
  @override 
  String toString() {
    return 'Your Password is: ${password}';
  }
}