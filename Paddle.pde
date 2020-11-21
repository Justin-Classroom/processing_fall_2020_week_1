class Paddle extends Box {
  
  public Paddle() { }
  
  @Override
  public boolean isAlive() {
    return true;
  }
  
  @Override
  public void hit(boolean hit) { }
  
  @Override
  public void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

}
