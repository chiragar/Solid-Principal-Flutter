/*
Liskov Substitution Principle (LSP):

-> Objects of a superclass should be replaceable with objects 
   of its subclasses without altering the program's correctness.
-> Subclasses should be consistent with the behavior expected from 
   their parent class.
*/

abstract class Animal {
  void makeSound();
}

class Lion extends Animal {
  @override
  void makeSound() {
    print("Roar!");
  }
}

void makeAnimalSound(Animal animal) {
  animal.makeSound();
}

void main() {
  Animal animal = Lion();
  makeAnimalSound(animal);

  Lion lion = Lion();
  makeAnimalSound(lion);
}

/*
OUTPUT:

Roar!
Roar!
*/


/*
Non- Liskov Substitution Principle (LSP):
class Animal {
  void run() {
    print("The Animal is running!");
  }
}

class Lion extends Animal {
  void run() {
    super.run();
    print("The Lion is roaring!");
  }
}

void main() {
  Animal animal = Lion();
  animal.run();
}

OUTPUT:

The Animal is running!
The Lion is roaring!

*/
