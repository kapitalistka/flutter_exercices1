//Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another),
// который возвращает расстояние от данной точки до точки в параметре.
// По желанию можете реализовать метод, принимающий три точки
// в трёхмерном пространстве и возвращающий площадь треугольника, который образуют данные точки.
// Реализуйте factory-конструкторы для данного класса, возвращающие начало координат,
// и ещё несколько на своё усмотрение (например, конструктор,
// возвращающий точку с координатами [1,1,1], которая определяет единичный вектор).

import 'dart:math';

void main() {
  print(
      Point.squareByPoints(Point.origin(), Point.unitVector(), Point(0, 2, 0)));
  print(Point.squareByPoints(Point(-2, 1, 2), Point(3, -3, 4), Point(1, 0, 9)));
}

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  Point.plane(double z) : this(0, 0, z);

  factory Point.unitVector() {
    return Point(1, 1, 1);
  }

  factory Point.origin() {
    return Point(0, 0, 0);
  }

  double distanceTo(Point another) {
    return sqrt(pow(this.x - another.x, 2) +
        pow(this.y - another.y, 2) +
        pow(this.z - another.z, 2));
  }

  static double squareByPoints(Point p1, Point p2, Point p3) {
    double l1 = p1.distanceTo(p2);
    double l2 = p2.distanceTo(p3);
    double l3 = p3.distanceTo(p1);
    double square;
    if (l1 + l2 <= l3 || l1 + l3 <= l2 || l1 + l3 <= l2) {
      square = -1.0;
    } else {
      double p = (l1 + l2 + l3) / 2.0;
      square = sqrt(p * (p - l1) * (p - l2) * (p - l3));
    }
    return square;
  }
}
