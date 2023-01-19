void main() async {
  try {
    final number = await retrieveNumber();
    final result = await retrieveRandomString(number);
    print(result);
  } on AuthenticationException catch (exception) {
    print(exception);
  } on PageNotFoundException catch (exception) {
    print(exception);
  } catch (exception) {
    print(exception);
  }

  // retrieveNumber().then((value) {
  //   retrieveRandomString(value).then((stringValue) {
  //     print(stringValue);
  //   }).catchError((error) {
  //     print('Oups, voici une erreur: $error');
  //   });
  // }).catchError((error) {
  //   print('Oups, voici une erreur: $error');
  // });
}

Future<int> retrieveNumber() {
  return Future.delayed(const Duration(seconds: 1), () {
    throw AuthenticationException();
    return 42;
  });
}

Future<String> retrieveRandomString(int value) {
  return Future.delayed(const Duration(seconds: 1), () {
    return 'Le résultat est : $value';
  });
}

class MyAppException implements Exception {}

class AuthenticationException extends MyAppException {}

class PageNotFoundException extends MyAppException {}
