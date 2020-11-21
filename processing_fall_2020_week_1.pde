Ball ball1;
Box paddle;

int WIDTH = 500;
int HEIGHT = 500;

int points;
int health;

// array of bricks
Box[] bricks = new Box[16];

void settings() {
  size(WIDTH, HEIGHT);
}

void setup() {
  ball1 = new Ball();
  ball1.setPosition(150, 300);
  ball1.setWidth(50);
  ball1.setHeight(50);
  ball1.setSpeed(1, 1);
  
  paddle = new Paddle();
  paddle.setPosition(250, height - 50);
  paddle.setWidth(100);
  paddle.setHeight(15);
  
  for (int i = 0; i < bricks.length; i = i + 1) {
    int row = 4;
    int col = 4;
    int xPos = 100;
    int yPos = 50;
    int bWidth = 80;
    int bHeight = 40;
    
    Box brick = new Brick();
    brick.setPosition(xPos + (bWidth * (i % col)), yPos + (bHeight * (int)(i / row)));
    brick.setWidth(bWidth);
    brick.setHeight(bHeight);
    
    bricks[i] = brick;
  }
  
  points = 0;
  health = 3;
}

void draw() { 
  background(100);
  text("Score: " + points, width - 100, 30);
  
  ball1.collideWithBox(paddle);
  
  for (int i = 0; i < bricks.length; i = i + 1) {
    Box brick = bricks[i];
    if (brick != null) {
      if (brick.isAlive()) {
        if (ball1.collideWithBox(brick)) {
          brick.hit(true);
          points += 10;
          println(points);
        }
        brick.render();
      }
    }
  }
  
  int x = constrain(mouseX, 
    paddle.getWidth() / 2, 
    width - paddle.getWidth() / 2
  );
  
  paddle.move(x, paddle.getY());
  paddle.render();
  
  ball1.render();
  ball1.update();
  
}

void reset() {
  points = 0;
  ball1.setPosition(150, 300);
  for (int i = 0; i < bricks.length; i = i + 1) {
    Box brick = bricks[i];
    if (brick != null) {
      brick.hit(false);
    }
  }
}

void keyPressed() {
  if (key == 'r') {
    reset();
  }
}
