int iterations = 5 * 1000000;

void setup() {
  size(1000, 1000);  
}

void draw() {
  background(0);

  var attractor = new Attractor(-1.8245063, 1.9613714, 0.53065884, 0.6621462);
  
  PVector current = new PVector(0, 0);
  PVector mapped;
  
  stroke(255, 20);
  
  for (int i=0 ; i<iterations ; i++) {
    current = attractor.getNext(current);
    mapped = attractor.getMappedVector(current, width, height);  
    point(mapped.x, mapped.y);
  }

  noLoop();
}
