class Handler {
  //In Dart, private means library private, not class private 
  //A Dart library generally corresponds to a single file.
  //That means other classes and functions in the same file have access to variable names that begin with an underscore
  int _age = 18;
  // property, also can called public fields
  var items = [];

  var name;

  // long-form constructor
  Handler(String name, int age){
    this.name = name;
    this._age = age;
  }

  // getter
  int get age => _age;
  // setter
  set age(int age) => _age = age;

  // method
  void addItem(String item) {
    this.items.add(item);
  }

  void display() {
    print('age ${this._age}');
    print(this.items);
  }

  @override
  String toString() {
    return 'Hanlder: name ${this.name} age ${this._age}';
  }
}