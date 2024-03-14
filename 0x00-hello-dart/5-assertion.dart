void main(List<String> args) {
  var numb = int.parse(args[0]);
  ((numb >= 80) ? () => print('You passed') : () => throw AssertionError('Uncaught Error: Assertion failed: "The score must be bigger or equal to 80'))();
}