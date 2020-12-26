import g4p_controls.*;
Sunflower sf;

float turnSize = 0.61803;
float prevTurnSize;
Boolean paused;

void setup() {
  size(800, 800); 
  createGUI();
  reGrow();
}

void reGrow() {
  turnSizeSlider.setValue(turnSize);
  sf = new Sunflower(turnSize); 
  paused = false;
  pausedProcedure();
}

void draw() { 
  if (sf.seedCount == 0) {
    sf.drawFlower();
  }
  if (sf.currRadius<=185) 
    sf.drawSeed();
  else 
    noLoop();
}

void pausedProcedure() {
  if (paused) {
    pauseButton.setText("Resume");
    pauseButton.setLocalColorScheme(GCScheme.GREEN_SCHEME);
    noLoop();
  }
  else {
    pauseButton.setText("Pause");
    pauseButton.setLocalColorScheme(GCScheme.RED_SCHEME);
    loop();
  }
}
