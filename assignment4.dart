import 'dart:io';
import 'package:intl/intl.dart';

void main() async {
  stdout.write("Enter your text: ");
  String input = stdin.readLineSync() ?? "";

  String reversed = input.split('').reversed.join();
  String upper = input.toUpperCase();
  int length = input.length;

  String log = "Original: $input\nReversed: $reversed\nUppercase: $upper\nLength: $length";

  DateTime now = DateTime.now();
  String timestamp = DateFormat('yyyy-MM-dd HH:mm:ss').format(now);
  String finalEntry = "$timestamp\n$log\n";

  File file = File('entries.txt');
  await file.writeAsString(finalEntry, mode: FileMode.append);

  print("Entry saved at $timestamp");
}
