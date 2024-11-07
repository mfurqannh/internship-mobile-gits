import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  String? input_score = stdin.readLineSync();
  List<int> score = input_score!.split(' ').map(int.parse).toList();

  if (score.length > n || score.length < n) {
    print("Jumlah input tidak sesuai!");
    exit(1);
  }

  int m = int.parse(stdin.readLineSync()!);
  String? input_gits = stdin.readLineSync();
  List<int> gits = input_gits!.split(' ').map(int.parse).toList();

  if (score.length > m || score.length < m) {
    print("Jumlah input tidak sesuai!");
    exit(1);
  }

  int rank = 1;
  for (var i = 1; i < n; i++) {
    if (score[i] < score[i - 1]) {
      rank++;
    }
  }

  int j = n - 1;
  for (var x in gits) {
    while (j >= 0 && x >= score[j]) {
      j--;
      if (j < 0 || score[j] > score[j + 1]) {
        rank--;
      }
    }
    stdout.write("${rank + 1} ");
  }
}
