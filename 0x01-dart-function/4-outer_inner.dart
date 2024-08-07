void outer(String name, String id) {
  String inner() {
    String firstName = name.split(' ')[0];
    String lastName = name.split(' ')[1];
    return 'Hello Agent ${lastName[0]}.${firstName} your id is ${id}';
  }

  print(inner());
}
