import 'dart:async';

Future<String> firstAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "First!";
}

Future<String> secondAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Second!";
}

Future<String> thirdAsync() async {
  await Future<String>.delayed(const Duration(seconds: 2));
  return "Third!";
}

void main() async {
  var f = await firstAsync();
  print(f);
  var s = await secondAsync();
  print(s);
  var t = await thirdAsync();
  print(t);
  print('done');
}

//contoh diatas adalah memanggil secara berurutan dan melakukannya secara tidak sinkron
//dengan asyn await, kita dapat melakukan panggilan secara linear dan tanpa bersarang seperti kode non async.