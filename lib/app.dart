class App {
  final String name;

  // short-form constructor
  const App(this.name);

  const App.anonymous(): this('no name');

  @override
  String toString() {
    return 'This is a $name App';
  }
}