// Concept of Callable Classes in Dart

class Parser {
  String call(String input) => 'Parser $input';
}

String parseCallback(String input) => 'parseCallback $input';

void execute() {
  var parser = Parser();
  var parserResult = parser('json');
  print(parserResult);

  var parseCallbackResult = parseCallback.call('json');
  print(parseCallbackResult);
}



// https://www.geeksforgeeks.org/concept-of-callable-classes-in-dart/