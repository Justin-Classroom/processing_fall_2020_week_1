class Brick extends Box {
  
  boolean isHit;
  
  public Brick() {
    this.isHit = false;
  }
  
  @Override
  public boolean isAlive() {
    return !this.isHit;
  }
  
  @Override
  public void hit(boolean hit) {
    isHit = hit;
  }
  
  @Override
  public void move(int x, int y) {
    // do nothing
  }
}
