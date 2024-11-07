import 'dart:io';

void main() {
  String? input = stdin.readLineSync();
  String nowhitespace = input!.split(' ').join('');

  List<String> brackets = [];
  Map<String, String> pairBrackets = {'(': ')', '{': '}', '[': ']'};

  for (var element in nowhitespace.split('')) {
    if (element == ' ') {
      continue;
    } else if (element == '(' || element == '{' || element == '[') {
      brackets.add(element);
    } else {
      if (pairBrackets[brackets.last] != element) {
        print("NO");
        break;
      } else {
        brackets.removeLast();
      }
    }
  }

  if (brackets.isEmpty) {
    print("YES");
  }
}
