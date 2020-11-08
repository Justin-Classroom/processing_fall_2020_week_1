class Paddle extends Box {
  
  public Paddle() { }
  
  @Override
  public void move(int x, int y) {
    this.x = x;
    this.y = y;
  }

}
