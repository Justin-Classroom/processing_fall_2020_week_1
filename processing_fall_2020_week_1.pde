Ball ball1;
Box paddle;

int WIDTH = 500;
int HEIGHT = 500;

// array of bricks
Box[] bricks = new Box[16];

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
  ball1 = new Ball();
  ball1.setPosition(150, 150);
  ball1.setWidth(50);
  ball1.setHeight(50);
  ball1.setSpeed(1, 1);
  
  paddle = new Paddle();
  paddle.setPosition(250, 300);
  paddle.setWidth(100);
  paddle.setHeight(50);
  
  for (int i = 0; i < bricks.length; i = i + 1) {
    int row = 4;
    int col = 4;
    int xPos = 100;
    int yPos = 100;
    int bWidth = 80;
    int bHeight = 40;
    
    Box brick = new Brick();
    brick.setPosition(xPos + (bWidth * (i % col)), yPos + (bHeight * (int)(i / row)));
    brick.setWidth(bWidth);
    brick.setHeight(bHeight);
    
    bricks[i] = brick;
  }
}

void draw() { 
  background(100);
  
  for (int i = 0; i < bricks.length; i = i + 1) {
    Box brick = bricks[i];
    if (brick != null) {
      if (ball1.collideWithBox(brick)) {
        // brick disappears
        // ball bounces off
      }
      brick.render();
    }
  }
  
  //int x = constrain(mouseX, 
  //  paddle.getWidth() / 2, 
  //  width - paddle.getWidth() / 2
  //);
  
  //int y = constrain(mouseY, 
  //  paddle.getHeight() / 2, 
  //  height - paddle.getHeight() / 2
  //);
  
  //paddle.move(x, y);
  
  ball1.render();
  ball1.update();
  //paddle.render();
  
}
