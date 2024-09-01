import '3-util.dart';
import 'dart:convert';

Future<String> greetUser() async {
  try {
    String userData = await fetchUserData();

    Map userMap = jsonDecode(userData);

    return 'Hello ${userMap['username']}';
  } catch (error) {
    return 'error caught: $error';
  }
}

Future<String> loginUser() async {
  try {
    bool hasValidCredential = await checkCredentials();

    if (hasValidCredential) {
      print("There is a user: true");

      return (await greetUser());
    } else {
      print("There is a user: false");

      return 'Wrong credentials';
    }
  } catch (error) {
    return 'error caught: $error';
  }
}
