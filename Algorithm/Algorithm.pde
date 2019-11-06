Population test;
PVector goal  = new PVector(400, 10);

//How the code works:

//The population is the place where all the dots get made and the base of the game is 
//All the dots have a brain. This is where they will mutate and where they will also get their random directions
//The brain tells the dot where to go. they get an X amounto f impulses to go into diffrent directions and they will follow that till they hit a wall or hit the goal(this is done in the Dot script)
//The closest dot that gets to the goal the fastest will pass on his data to the next generation where they will change it slighly, mutate them if you will. To try and find a better dot that will pass its data on to the next one etc etc.

//this software was originaly made by CodeBullet but i changed a few things around.


void setup() {
  size(800, 800);//window size
  frameRate(120);
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
    test.mutateBabies();
  } else {
    //if any of the dots are still alive then update and then show them

    test.update();
    test.show();
  }
}
