import 'dart:io';

var pole = [
  [1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1],
  [1, 1, 1, 1, 1],
  [2, 1, 3, 5, 4],
  [6, 3, 1, 8, 2],
  [6, 2, 2, 3, 4],
];

var pole2 = [2, 1, 3, 4, 9, 7];

void printpole(List<List> cisla) {
  for (int i = 0; i < pole.length; i++) {
    for (int o = 0; o < pole[i].length; o++) {
      stdout.write((pole[i][o]).toString());
    }
    print("");
  }
  print("Hotovson");
}

void MakejQuicksort() {
  printpole(pole);
  for (int i = 0; i < pole.length; i++) {
    quicksort(pole[i]);
  }
  printpole(pole);
}

void MakejBubble() {
  printpole(pole);
  for (int i = 0; i < pole.length; i++) {
    bubblesort(pole[i]);
  }
  printpole(pole);
}

void bubblesort(List<int> list) {
  for (int i = 0; i < list.length; i++) {
    for (int o = 0 + i; o < list.length; o++) {
      if (list[i] > list[o]) {
        var temp = list[o];
        list[o] = list[i];
        list[i] = temp;
      }
    }
  }
}

void quicksort(List<int> list) {
  _quicksort(list, 0, list.length - 1);
}

void _quicksort(List<int> list, int left, int right) {
  if (right - left <= 0) return;

  int pivot_index = (left + right) ~/ 2;
  int pivot = list[pivot_index];

  int i = left, j = right;

  while (i < j) {
    while (list[i] < pivot) i++;
    while (list[j] > pivot) j--;

    if (i <= j) {
      var temp = list[i];
      list[i] = list[j];
      list[j] = temp;

      i++;
      j--;
    }
  }

  _quicksort(list, left, i - 1);
  _quicksort(list, i, right);
}
