import 'libintro.dart';
import 'libintro.dart' as libintro;
import 'dart:convert';

main(List<String> arguments){
  print("Hello world:  ${libintro.calculate()}");

  Map<String, int> map = new Map<String, int>();
  map.putIfAbsent('Bryan', () => 43);
  map.putIfAbsent('Heather', () => 43);


  print(map['Bryan']);
  
  JsonEncoder enc = JsonEncoder();
  String conversion = enc.convert(map);

  print(jsonEncode(map));
  String encoded = jsonEncode(map);

  Map<String, dynamic> people = jsonDecode(encoded);

  people.forEach((String k, v){
    print('$k is $v years old');
    print(k.runtimeType);
    print(v.runtimeType);
  });



}
