// ignore_for_file: avoid_print

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('HomeScreen'),
        centerTitle: true,
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CircularProgressIndicator(),
          const SizedBox(height: 20),
          FilledButton(
            // onPressed: () => runHeavyTask(900000000),
            onPressed: () => useCompute(),
            child: const Text('Click Me'),
          ),
        ],
      )),
    );
  }
}

int runHeavyTask(int count) {
  int value = 0;
  for (var i = 0; i < count; i++) {
    value += i;
  }
  print('Result is: $value');
  return value;
}

//=======>>using compute<<==========//
Future useCompute() async {
  try {
    await compute(runHeavyTask, 900000000);
  } on Object {
    print('isolate failed');
  }
}











// void heavyTask(IsolateModel model) {
//   int total = 0;
//   for (int i = 0; i < model.iteration; i++) {
//     total += (i * model.multiplier);
//   }
//   log("FINAL TOTAL: $total" as num);
// }

// class IsolateModel {
//   final int iteration;
//   final int multiplier;

//   IsolateModel(this.iteration, this.multiplier);
// }
