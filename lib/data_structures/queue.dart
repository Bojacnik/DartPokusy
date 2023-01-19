class Queue<T> {
  QueueItem<T>? head;
  QueueItem<T>? tail;

  Queue({this.head});

  void enqueue(T item) {
    QueueItem<T> queueItem = QueueItem(data: item);

    if (this.head == null) {
      this.head = queueItem;
      this.tail = queueItem;
    } else if (this.head == this.tail) {
      this.head!.next = queueItem;
      this.tail = queueItem;
    } else {
      tail!.next = queueItem;
      tail = queueItem;
    }
  }

  T take() {
    QueueItem<T>? temp = this.head;
    if (temp == null) throw new Error();
    this.head = this.head?.next;
    if (head == null) tail = null;
    return temp.data;
  }
}

class QueueItem<T> {
  T data;
  QueueItem<T>? next;

  QueueItem({required this.data, this.next = null});
}

void frontaTest() {
  Queue<int> fronta = Queue();
  fronta.enqueue(5);
  fronta.enqueue(6);
  fronta.enqueue(7);
  fronta.enqueue(8);
  fronta.enqueue(9);
  fronta.enqueue(10);

  try {
    while (true) {
      print(fronta.take());
    }
  } catch (e) {
    fronta.enqueue(11);
    print(fronta.take());
    fronta.enqueue(12);
    print(fronta.take());
  }
}
