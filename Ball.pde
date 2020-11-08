class Ball {

  private int x;
  private int y;
  private int bWidth;
  private int bHeight;
  private int speedX;
  private int speedY;

  public Ball() {
  }

  public Ball setPosition(int x, int y) {
    // complete the constructor
    this.x = x;
    this.y = y;
    return this;
  }

  public int getXPosition() {
    return this.x;
  }

  public int getYPosition() {
    return this.y;
  }

  public int getWidth() {
    return this.bWidth;
  }

  public int getHeight() {
    return this.bHeight;
  }

  public Ball setWidth(int width) {
    // complete the function
    this.bWidth = width;
    return this;
  }

  public Ball setHeight(int height) {
    // complete the function
    this.bHeight = height;
    return this;
  }

  public Ball setSize(int width, int height) {
    this.bWidth = width;
    this.bHeight = height;
    return this;
  }

  public Ball setSpeed(int xSpeed, int ySpeed) {
    this.speedX = xSpeed;
    this.speedY = ySpeed;
    return this;
  }

  public void render() {
    ellipse(this.x, this.y, this.bWidth, this.bHeight);
  }

  public void update() {
    if (this.x + (this.bWidth / 2) > width || this.x - (this.bWidth / 2) < 0) {
      this.speedX = this.speedX * -1;
    }

    if (this.y + (this.bHeight / 2) > height || this.y - (this.bHeight / 2) < 0) {
      this.speedY = this.speedY * -1;
    }

    this.x = this.x + this.speedX;
    this.y = this.y + this.speedY;
  }

  public void moveTo(int xPosition, int yPosition) {
    this.x = xPosition;
    this.y = yPosition;
  }
  
  public boolean collideWithBox(Box box) {
    boolean hit = false;
    if (abs(this.x - box.getX()) < (this.bWidth / 2) + (box.getWidth() / 2)) {
      this.speedX = this.speedX * -1;
      hit = true;
    }
    
    if (abs(this.y - box.getY()) < (this.bHeight / 2) + (box.getHeight() / 2)) {
      this.speedY = this.speedY * -1;
      hit = true;
    }
    
    return hit;
  }
  
  //public int[] collideWithBox(Box box) {
  //  int[] hitDirection = new int[2];
  //  int[0] = 0; // x axis
  //  int[1] = 0; // y axis
    
  //  if (abs(this.x - box.getX()) < (this.bWidth / 2) + (box.getWidth() / 2)) {
  //    int[0] = 1;
  //  }
    
  //  if (abs(this.y - box.getY()) < (this.bHeight / 2) + (box.getHeight() / 2)) {
  //    int[1] = 1;
  //  }
    
  //  return hitDirection;
  //}
}
