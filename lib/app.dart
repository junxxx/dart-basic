class App {
  final String name;

  static final Map<String, App> _instance = <String, App>{};

  // short-form constructor
  const App(this.name);

  App._setVariable(this.name);

  // named constructor
  const App.anonymous(): this('no name');

  // factory constructor
  factory App.game(String name) {
    return _instance.putIfAbsent(name, () => App._setVariable(name));
  }

  @override
  String toString() {
    return 'This is a $name App';
  }
}