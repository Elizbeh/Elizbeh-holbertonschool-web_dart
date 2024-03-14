void outer(String name, String id) {
  String inner() {
    List<String> formedName = name.split(' ');
    String initial = formedName[1][0];
    String otherName = formedName[0];
    return 'Hello Agent $initial.$otherName your id is $id';
  }
  print(inner());
}