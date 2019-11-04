Population test;
PVector goal  = new PVector(400, 10);


void setup() {
  size(800, 800);//window size
  frameRate(100);
  test = new Population(300);//amount of dots
}


void draw() { 
  background(255);
  
  //draw goal
  fill(255, 0, 0);
  ellipse(goal.x, goal.y, 10, 10);


  if (test.allDotsDead()) {
    //genetic algorithm
    test.calculateFitness();
    test.naturalSelection();
    test.mutateDemBabies();
  } else {
    //if any of the dots are still alive then update and then show them

    test.update();
    test.show();
  }
}
