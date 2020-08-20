import 'package:meta/meta.dart';
import 'priority.dart';

class PriorityBrain {
  final int doneNumber;
  final int frequency;

  PriorityBrain({
    @required this.doneNumber,
    @required this.frequency,
  });

  Priority getPriority() {
    final completion = doneNumber / frequency * 100;
    if (completion > 100) {
      return Priority.veryLow;
    } else if (completion == 100) {
      return Priority.low;
    } else if (completion >= 75) {
      return Priority.low;
    } else if (completion >= 50) {
      return Priority.medium;
    } else if (completion >= 25) {
      return Priority.high;
    } else {
      return Priority.veryHigh;
    }
  }
}
