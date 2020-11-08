abstract class Box {
  protected int x;
  protected int y;
  protected int pWidth;
  protected int pHeight;
  
  public void setPosition(int x, int y) {
    this.x = x;
    this.y = y;
  }
  
  public void setWidth(int width) {
    this.pWidth = width;
  }
  
  public void setHeight(int height) {
    this.pHeight = height;
  }
  
  public int getWidth() {
    return this.pWidth;
  }
  
  public int getHeight() {
    return this.pHeight;
  }
  
  public int getX() {
     return this.x;
  }
  
  public int getY() {
    return this.y;
  }
  
  public void render() {
    rectMode(CENTER);
    rect(this.x, this.y, this.pWidth, this.pHeight);
  }
  
  abstract public void move(int x, int y);
}
