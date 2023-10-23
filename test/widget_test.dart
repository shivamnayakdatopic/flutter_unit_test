// ##################### Test code for Method :----

// import 'package:flutter_test/flutter_test.dart';
// import 'package:unit_test_code/main.dart';

// void main() {

//   late Main main;

//   setUp((){
//     main = Main();
//   });

//   group("Main Screen",(){

//     test('Value needs to be incremented',() {
//       main.increment();
//       expect(main.value, 1);
//     });

//     test('Value needs to be decremented', () {
//       final main = Main();
//       main.decrement();
//       expect(main.value, -1);
//     });

//   });


//   test('Value needs to be incremented by 2',(){

//     main.incrementPlus2();
//     expect(main.value, 2);
//   });
// }


// ##################### Test code for Widget :----


import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:unit_test_code/main.dart';

void main() {

  testWidgets("FindOneWidget", (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextField);
    expect(textField, findsOneWidget);
  });

  testWidgets("FindsNWidgets", (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextField);
    expect(textField, findsNWidgets(2));
  });

  testWidgets("FindsNothing", (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextButton);
    expect(textField, findsNothing);
  });

  testWidgets("FindsWidgets", (WidgetTester tester) async{
    await tester.pumpWidget(MyApp());

    var textField = find.byType(TextField);
    expect(textField, findsWidgets);
  });
}