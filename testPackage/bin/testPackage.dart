import 'package:http/http.dart' as http;
import 'dart:isolate';

void subTask(String url) async {
  var response = await http.get(Uri.parse(url));
  print('Response status: ${response.statusCode}');
  print('${response.body}');
  print('main end...');
}

void main() async {
  var url = 'https://www.baidu.com';
  await Isolate.spawn<String>(subTask, url);
  print('main func end');
}
