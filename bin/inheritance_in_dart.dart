class Animal {
  String name;
  String weight;

  Animal(this.name, this.weight);

  void eat() {
    print('$name ate');
  }

  void makeSound() {
    print('$name made some sound');
  }
}

class Dog extends Animal {
  int cuteness;

  Dog(String name, String weight, this.cuteness) : super(name, weight);

  void toPlay() {
    cuteness += 10;
    print('$name cuteness increased to $cuteness');
  }

  @override
  String toString() {
    // TODO: implement toString
    return 'Dog { Name: $name, Weight: $weight }';
  }
}

class Cat extends Animal {
  bool isFriendly() {
    return true;
  }

  Cat(String name, String weight) : super(name, weight);

  @override
  String toString() {
    // TODO: implement toString
    return 'Cat { Name: $name, Weight: $weight }';
  }
}

void main(List<String> arguments) {
  Dog dog1 = new Dog('Spike', '20kg', 10);
  dog1.makeSound();
  dog1.eat();
  dog1.toPlay();
  print(dog1);

  Cat cat1 = new Cat('Goose', '14kg');
  cat1.eat();
  cat1.makeSound();
  print('Is Friendly? ${cat1.isFriendly()}');
  print(cat1);
}
