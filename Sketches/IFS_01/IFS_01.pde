int iterations = 50 * 1000000;
int functionCount = 4;
boolean saveFrames = false;

int frameCnt = 0;

FunctionFactory factory;

void setup() {
  size(2000, 2000);  
  factory = new FunctionFactory();
}

void draw() {
  background(0);

  println("drawing begun for frame: " + (++frameCnt));
     
  var set = factory.createSet(functionCount);  
  var current = new PVector(0, 0);
  
  for (int i=0; i<iterations; i++) {

    var fidx = int(random(0, set.size()));
    current = set.get(fidx).getNext(current);
    
    var x = map(current.x, -3, 3, 0, width);
    var y = map(current.y, -3, 3, 0, height);;

    stroke(255, 10);
    point(x, y);    
  }

  if (saveFrames) {
    saveFrame("frame-#####.png");
  }
} 
