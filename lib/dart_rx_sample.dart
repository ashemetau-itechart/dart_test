import 'package:rxdart/rxdart.dart';

execute() {
  Stream.fromIterable([1, 2, 3])
      .asyncMap((i) => Future.delayed(Duration(seconds: 4), () => i * 2))
      .doOnData((i) => print("@ $i"))
      .throttleTime(Duration(seconds: 5))
      .listen(print);
}
