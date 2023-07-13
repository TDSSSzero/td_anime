class Animal {
  String name;
  int age;
  // Animal(this.name, this.age);
  Animal.other()
      : name = 'ts',
        age = 1 {
    print(this);
  }
}

class Cat extends Animal {
  int foot;

  Cat.other() : foot =2,super.other();
  // Cat.other() : super.other(),foot =2;

}



main() {

}