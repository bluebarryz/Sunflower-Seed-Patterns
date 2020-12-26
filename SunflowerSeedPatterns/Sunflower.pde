class Sunflower {
 
  PImage flower = loadImage("sunflower.png");
  float turnSize, turnAngle;
  float seedX, seedY;
  float currAngle = 0;
  float currRadius = 1;
  int seedCount = 0;
  Boolean reachedEnd = false;
  
  Sunflower(float turnSize) { 
    this.turnSize = turnSize;
    this.turnAngle = 2*PI*turnSize;
  }
  
  void drawFlower() {
    background(168, 108, 17);
    image(flower,0,0);
    fill(255);
    PFont font = createFont("Georgia", 20);
    textFont(font);
    text("Turn Size = " + turnSize, 25,25);    
  }
  
  void drawSeed() {
    computeSeedCoordinates(currAngle);  
    fill(168, 143, 50);
    noStroke();
    circle(seedX, seedY, 10);    
    currAngle += turnAngle;    
    
    if (turnSize == 0.61803)
      currRadius = 7 * sqrt( seedCount ) ;
    else
      currRadius = 7*sqrt(2*seedCount);    
    
    seedCount ++;
  }
  
  void computeSeedCoordinates(float angle) {
    seedX = currRadius*cos(angle)+height/2.0;
    seedY = -currRadius*sin(angle)+height/2.0;
  }
 
}
