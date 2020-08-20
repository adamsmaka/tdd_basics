import 'package:flutter_test/flutter_test.dart';
import 'package:tdd_basics/priority.dart';
import 'package:tdd_basics/priority_brain.dart';

void main() {
  group('frequency x8', () {
    test(
      'should return VERY HIGH priority when done 0 times this month',
      () async {
        // arrange
        final brain = PriorityBrain(frequency: 8, doneNumber: 0);
        // act
        final result = brain.getPriority();
        // assert
        expect(Priority.veryHigh, result);
      },
    );
    test(
      'should return LOW priority when done 8 times this month',
      () async {
        // arrange
        final brain = PriorityBrain(frequency: 8, doneNumber: 8);
        // act
        final result = brain.getPriority();
        // assert
        expect(Priority.low, result);
      },
    );
  });
  group('frequency x30', () {
    test(
      'should return MEDIUM priority when done 15 times this month',
      () async {
        // arrange
        final brain = PriorityBrain(frequency: 30, doneNumber: 15);
        // act
        final result = brain.getPriority();
        // assert
        expect(Priority.medium, result);
      },
    );
  });
}
