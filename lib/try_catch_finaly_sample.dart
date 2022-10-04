void execute() {
  int v = _calculate();
  print('value $v');
}

int _getValue() {
  final List<int> f = [2];
  return f.first;
}

int _calculate() {
  try {
    print('try');
    final f = _getValue();
    return f;
  } catch (e) {
    print('$e');
  }
  return 11;
}
