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
}
