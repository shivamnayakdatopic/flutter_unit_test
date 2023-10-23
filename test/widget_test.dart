import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_code/main.dart';

void main() {

  late Main main;

  setUp((){
    main = Main();
  });

  group("Main Screen",(){

    test('Value needs to be incremented',() {
      main.increment();
      expect(main.value, 1);
    });

    test('Value needs to be decremented', () {
      final main = Main();
      main.decrement();
      expect(main.value, -1);
    });

  });


  test('Value needs to be incremented by 2',(){

    main.incrementPlus2();
    expect(main.value, 2);
  });
}