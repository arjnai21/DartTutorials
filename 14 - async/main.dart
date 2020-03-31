// https://www.youtube.com/watch?v=MfLapF8d5gg&list=PLUbFnGajtZlX9ubiLzYz_cw92esraiIBi&index=14
import 'dart:async';

import 'dart:core';

Future<bool> wait() async {
  await Future.microtask(() {
    for (int i = 0; i < 10; i++) {
      print('$i');
    }
  });

  return true;
}

Future testAsync() async {
  print('starting');
  bool ret = await wait();
  print(ret);
  print('done');
}

void testThen(){
  print("starting");
  Future f = wait().then((bool value){
    print('done waiting');
  });
  print('done');
}
void testChain(){
  print("starting");
  wait().then((bool value){
    print('done waiting');
  });
  print('done');
}
Future testMultiple() async {
  print("starting");

  Future f1 = wait();

  print("done");
}

main(List<String> arguments) {
  testThen();
}