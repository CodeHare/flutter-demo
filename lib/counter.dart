class Counter {
  int value = 10;

  test() {
    // ignore: avoid_print
    return "这是测试代码哦";
  }

  increment() {
    value = value + 2;
  }

  decrement() => value--;
}
