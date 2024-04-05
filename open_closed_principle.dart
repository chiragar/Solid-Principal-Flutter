/*
Open/Closed Principle (OCP):

-> Software entities (classes, modules) should be open for extension, 
   but closed for modification.
-> Aim to design classes that can be extended with new behavior 
   without altering existing code.
*/
void main() {
  // Create different shapes
  Circle circle = Circle(5);
  Rectangle rectangle = Rectangle(10, 6);
  Square square = Square(4);

  // Area Calculator class is not required in DartPad as we can call methods directly
  double circleArea = circle.calculateArea();
  double rectangleArea = rectangle.calculateArea();
  double squareArea = square.calculateArea();

  // Print the areas
  print("Circle area: $circleArea");
  print("Rectangle area: $rectangleArea");
  print("Square area: $squareArea");
}

abstract interface class Shape {
  double calculateArea();
}

class Circle implements Shape {
  double radius;
  Circle(this.radius);

  double calculateArea() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double length;
  double breadth;

  Rectangle(this.length, this.breadth);

  double calculateArea() {
    return length * breadth;
  }
}

class Square implements Shape {
  double side;
  Square(this.side);

  double calculateArea() {
    return side * side;
  }
}

class AreaCalculate {
  double calculateArea(Shape shape) {
    return shape.calculateArea();
  }
}

/*
OUTPUT:

Circle area: 78.5
Rectangle area: 60
Square area: 16
*/