/*Future<void> fetchUserOrder() {
  return Future.delayed(Duration(seconds: 2), () => print('Large Latte'));
}

main() {
  fetchUserOrder();
  print('Fetching User order...');
}*/

/*Future<void> fetchUserOrder() {
  return Future
  .delayed(Duration(seconds: 2), () => throw Exception('Logout failed, invalide user info'));
}

main() {
  fetchUserOrder();
  print('Fetching...');
}*/

/*Future<String> userOrderMessage() async {
  print('Awaiting user order..');
  var order = await fetchUserOrder();
  return 'Your order is: $order';
}

Future<String> fetchUserOrder() =>
  Future.delayed(Duration(seconds: 2), () => 'Large Latte');


void main() async {
  countSeconds(4);
  await userOrderMessage();
}


void countSeconds(int s) {
  for (var i = 1; i <= s; i++) {
    Future.delayed(Duration(seconds: i), () => print(i));
  }
}*/


Future<String> fetchRole() async {
  // Simulate fetching the user's role asynchronously
  await Future.delayed(Duration(seconds: 2));
  return 'administrator'; // Assuming the user's role is 'administrator'
}

Future<int> fetchLoginAmount() async {
  // Simulate fetching the number of logins asynchronously
  await Future.delayed(Duration(seconds: 2));
  return 42; // Assuming the total number of logins is 42
}

Future<String> reportUserRole() async {
  final userRole = await fetchRole();
  return 'User role: $userRole';
}

Future<String> reportLogins() async {
  final logins = await fetchLoginAmount();
  return 'Total number of logins: $logins';
}

void main() async {
  print('Testing...');
  List<String> messages = [];
  const passed = 'PASSED';
  const testFailedMessage = 'Test failed for the function:';
  const typoMessage = 'Test failed! Check for typos in your return value';
  try {
    messages
      ..add(_makeReadable(
          testLabel: 'Part 1',
          testResult: await _asyncEquals(
            expected: 'User role: administrator',
            actual: await reportUserRole(),
            typoKeyword: 'User role:',
          ),
          readableErrors: {
            typoMessage: typoMessage,
            'null':
                'Test failed! Did you forget to implement or return from reportUserRole?',
          }))
      ..add(_makeReadable(
          testLabel: 'Part 2',
          testResult: await _asyncEquals(
            expected: 'Total number of logins: 42',
            actual: await reportLogins(),
            typoKeyword: 'Total number of logins:',
          ),
          readableErrors: {
            typoMessage: typoMessage,
            'null':
                'Test failed! Did you forget to implement or return from reportLogins?',
          }))
      ..removeWhere((m) => m.contains(passed))
      ..toList();

    if (messages.isEmpty) {
      print('Success. All tests passed!');
    } else {
      messages.forEach(print);
    }
  } on UnimplementedError {
    print(
        'Test failed! Did you forget to implement or return from reportUserRole?');
  } catch (e) {
    print('Tried to run solution, but received an exception: $e');
  }
}

String _makeReadable({
  required String testResult,
  required Map<String, String> readableErrors,
  required String testLabel,
}) {
  if (readableErrors.containsKey(testResult)) {
    var readable = readableErrors[testResult];
    return '$testLabel $readable';
  } else {
    return '$testLabel $testResult';
  }
}

Future<String> _asyncEquals({
  required String expected,
  required dynamic actual,
  required String typoKeyword,
}) async {
  var strActual = actual is String ? actual : actual.toString();
  try {
    if (expected == actual) {
      return 'PASSED';
    } else if (strActual.contains(typoKeyword)) {
      return 'Test failed! Check for typos in your return value';
    } else {
      return strActual;
    }
  } catch (e) {
    return e.toString();
  }
}
