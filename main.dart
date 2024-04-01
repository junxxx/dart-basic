import 'lib/app.dart';
import 'lib/handler.dart';

void main(List<String> args) {
  const app = App('server');
  print(app);
  final anonymousApp = App.anonymous();
  print(anonymousApp);
  var h = Handler("dev", 19);
  h.addItem("lang");
  h.addItem("name");
  h.addItem("interest");
  h.display();
  // can't work when class defined in another file
  // print('print age from outside ${h._age}');
  print(h.age);
  h.age = 29;
  print('after set a new age ${h.age}');
  int? nullInt = null;
  print(nullInt);
  const books = ['OS', 'Computer Network', 'Programming language'];
  for (final book in books) {
    print(book);
  }

  // spread operator ...
  const lang = ['C', 'PHP', 'Go', 'Python', 'Dart'];
  const toolkits = [
    'tookkit',
    ...books,
    ...lang,
  ];
  print(toolkits);
}
