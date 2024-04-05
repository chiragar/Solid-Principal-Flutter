/*
Dependency Inversion Principle (DIP):

-> Depend on abstractions (interfaces), not concretions (implementations).

-> High-level modules shouldn't depend on low-level modules. 
    Both should depend on abstractions. This allows for easier testing 
    and swapping of implementations.
*/

abstract interface class Bulb {
  void turnOn();
  void turnOff();
}

class IncandescentBulb extends Bulb {
  void turnOn() {
    print('Incandescent Bulb is turn on');
  }

  void turnOff() {
    print('Incandescent Bulb is turn off');
  }
}

class LedBulb extends Bulb {
  void turnOn() {
    print('Led Bulb is turn on');
  }

  void turnOff() {
    print('Led Bulb is turn off');
  }
}

class Room {
  Bulb bulb;

  Room(this.bulb);

  void switchLightOn() {
    bulb.turnOn();
  }

  void switchLightOff() {
    bulb.turnOff();
  }
}

void main() {
  // Create instances of the bulbs
  Bulb incandescentBulb = IncandescentBulb();
  Bulb ledBulb = LedBulb();

  // Create room instances with different bulbs
  Room livingRoom = Room(incandescentBulb);
  Room kitchen = Room(ledBulb);

  // Turn on and off lights in different rooms
  livingRoom.switchLightOn();
  kitchen.switchLightOff();
}

/*

Output:
Incandescent Bulb is turn on
Led Bulb is turn off
*/