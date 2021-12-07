class Function {
  
  float a, b, c, d, e, f;
  
  Function() {
    this.a = random(-1, 1);
    this.b = random(-1, 1);
    this.c = random(-1, 1);
    this.d = random(-1, 1);
    this.e = random(-1, 1);
    this.f = random(-1, 1);
  }
  
  boolean isValid() {
    return 
      (pow(a, 2) + pow(d, 2) < 1) &&
      (pow(b, 2) + pow(e, 2) < 1) &&
      (pow(a, 2) + pow(b, 2) + pow(d, 2) + pow(e, 2) < 1 + pow(a*e - d*b, 2));
  }
  
  PVector getNext(PVector v) {
    var x = a * v.x + b * v.y + c;
    var y = d * v.x + e * v.y + f;    
    return new PVector(x, y);
  }
  
  String toString() {
      return "(" + a + ", " + b  + ", " + c  + ", " + d  + ", " + e  + ", " + f + ")";
  }
}

class FunctionFactory {

  ArrayList<Function> createSet(int functionCount) {
    
    var set = new ArrayList<Function>();
    
    while (true) {
      var function = new Function();      
      if (function.isValid()) {
        set.add(function);
      }      
      if (set.size() == functionCount) {
        return set;
      }      
    }    
  }
}
