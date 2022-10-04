import 'dart:async';

import 'dart:io';

void execute1() {
  print('execute start');

  scheduleMicrotask(() {
    for (int i = 0; i < 10; i++) {
      _executeFuture(i).then((value) => print(value));
    }
    for (int i = 0; i < 10; i++) {
      print('execute_microtask $i');
    }
  });

  // sleep(Duration(seconds: 10));

  for (int i = 0; i < 10; i++) {
    print('execute $i');
  }

  print('execute end');
}

Future<String> _executeFuture(int i) {
  return Future.value('execute_future $i');
}

void execute2() {
  print('execute start');
//   SchedulerBinding.instance.addPostFrameCallback((_) {
//   print("SchedulerBinding");
// });

// WidgetsBinding.instance.addPostFrameCallback((_) {
//   print("WidgetsBinding");
// });

  Timer.run(() {
    print("Timer");
  });

  scheduleMicrotask(() {
    print("scheduleMicrotask");
  });

  Future<void>.microtask(() {
    print("Future Microtask");
  });

  Future<void>(() {
    print("Future");

    Future<void>.microtask(() {
      print("Microtask from Event");
    });
  });

  Future<void>.delayed(Duration.zero, () {
    print("Future.delayed");

    Future<void>.microtask(() {
      print("Microtask from Future.delayed");
    });
  });

  print('execute end');
}




// https://medium.com/flutter-community/thread-and-isolate-with-flutter-30b9631137f3
// https://oleksandrkirichenko.com/blog/delayed-code-execution-in-flutter/
