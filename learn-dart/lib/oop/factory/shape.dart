abstract class Shape {
  void draw();
}

class Circle implements Shape {
  @override 
  void draw(){
    print("Drawing a circle....");
  }
}

class Square implements Shape {
  @override draw(){
    print("Drawing a square....");
  }
}

// creator
abstract class ShapeCreator{
  /** factory method */
  Shape createShape();
}

class CircleCreator implements ShapeCreator{
  @override
  Shape createShape(){
    return Circle();
  }
}

class SquareCreator implements ShapeCreator{
  @override
  Shape createShape(){
    return Square();
  }
}

/*
  ShapeCreator circleCreator = CircleCreator();
  Shape circle = circleCreator.createShape();
  print(circle);
  circle.draw();

  ShapeCreator squareCreator = SquareCreator();
  Shape square = squareCreator.createShape();
  print(square);
  square.draw();  
*/