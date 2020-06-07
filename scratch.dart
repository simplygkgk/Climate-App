import 'dart:io';

main() {
  perform();
}

void perform() async {
  Task1();
  String task2data = await Task2();
  Task3(task2data);
}

void Task1() {
  String result = ' task 1 data';
  print('task 1 complete');
}

Future<String> Task2() async {
  String result;
  Duration sleeptime = Duration(seconds: 3);
  await Future.delayed(sleeptime, () {
    result = 'task 2 data';
    print('task 2 complete');
  });
  return result;
}

void Task3(String task2Data) {
  String result = ' task 3 data';
  print('task 3 complete with -- $task2Data ');
}
