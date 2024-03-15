import '4-mutables.dart';
void main() {
  final password = Password(password: "Passwordecode");
  print(password.toString());
  print(password.isValid());
  password.password = "Youssef4321";
  print(password.toString());
  print(password.isValid());
}