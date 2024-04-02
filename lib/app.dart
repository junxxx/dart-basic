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
    if (_instance.containsKey(name)) {
      App? app = _instance[name];
      if (app == null) {
        app = App._setVariable(name);
      }
      return app;
    }else {
      final app = App._setVariable(name);
      _instance[name] = app;
      return app;
    }
  }

  @override
  String toString() {
    return 'This is a $name App';
  }
}