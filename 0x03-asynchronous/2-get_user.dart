import '2-util.dart';

Future<void> getUser() async {
  try {
    String user = await fetchUser();
  } catch (error) {
    print('error caught: $error');
  }
}