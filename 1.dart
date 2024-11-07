import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String output = "";

  for (var i = 0; i < n; i++) {
    int x = i * (i + 1) ~/ 2 + 1;
    output += "$x";

    if (i < n-1) {
      output += "-";
    }
  }
  print(output);
}
