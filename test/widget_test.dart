import 'package:chunxi/main.dart';
import 'package:chunxi/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    // Verify that our counter starts at 0.
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the '+' icon and trigger a frame.
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that our counter has incremented.
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });

  // 普通的单元测试
  test("打印的值是这是测试代码哦", (() {
    final counter = Counter();
    expect(counter.test(), "这是测试代码哦");
  }));

  // 关联关系的进行组合测试
  group("Counter", (() {
    test("判断调用increment方法后得到的值是12", (() {
      final counter = Counter();
      counter.increment();
      expect(counter.value, 12);
    }));

    test("判断调用decrement方法后得到的值是9", (() {
      final counter = Counter();
      counter.decrement();
      expect(counter.value, 9);
    }));
  }));
}

// TODO https://blog.csdn.net/dingyu002/article/details/117922996?spm=1001.2101.3001.6650.2&utm_medium=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-117922996-blog-122143718.pc_relevant_multi_platform_whitelistv3&depth_1-utm_source=distribute.pc_relevant.none-task-blog-2%7Edefault%7ECTRLIST%7ERate-2-117922996-blog-122143718.pc_relevant_multi_platform_whitelistv3&utm_relevant_index=3