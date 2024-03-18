import 'dart:convert';
import '3-util.dart';

Future<String> greetUser() async {
  String userDataJson = await fetchUserData();

  Map<String, dynamic> userData = json.decode(userDataJson);

  String username = userData['username'];
  try {
    return 'Hello $username';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    var isTrue = await checkCredentials();
    if (isTrue) {
      print('There is a user: true');
      return await greetUser();
  } else {
      print('There is a user: false');
      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
