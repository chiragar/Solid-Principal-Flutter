/*
Interface Segregation Principle (ISP):

-> Clients shouldn't be forced to depend on interfaces they don't use.
-> Create smaller, specific interfaces instead of one large general interface.

 */

abstract interface class Worker {
  void work();
}

abstract interface class Eater {
  void serving();
}

class Developer extends Worker {
  void work() {
    print("Developer is working");
  }
}

class Waiter extends Eater {
  void serving() {
    print("Waiter is serving");
  }
}

void main() {
  var developer = Developer();
  developer.work();

  var waiter = Waiter();
  waiter.serving();
}

/*
OUTPUT:
Developer is working
Waiter is serving
*/