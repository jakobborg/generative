class Attractor {
  
  float a, b, c, d;

  Attractor() {
    this.a = random(-3, 3);
    this.b = random(-3, 3);
    this.c = random(-3, 3);
    this.d = random(-3, 3);
  }

  Attractor(float a, float b, float c, float d) {
    this.a = a;
    this.b = b;
    this.c = c;
    this.d = d;
  }
  
  PVector getNext(PVector prev) {
    return new PVector(sin(a * prev.y) + c * cos(a * prev.x), sin(b * prev.x) + d * cos(b * prev.y));
  }
  
  PVector getMappedVector(PVector v, int width, int height) {
    var x = map(v.x, -2, 2, 0, width - 1);
    var y = map(v.y, -2, 2, 0, height - 1);
      
    return new PVector(x, y);
  }
}
