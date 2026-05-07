class Obstacle {
  int x, y, w, h, speed, health;
  PImage obst1;


  // Constructor
  Obstacle(int x, int y) {
    this.x = x;
    this.y = y;
    x = 100;
    y = 100;
    w = 100;
    h = 100;
    speed = 2;
    health = 75;
    obst1 = loadImage("obstacle.png");
  }

  void display() {
    imageMode(CENTER);
    image(obst1, x, y);
    
  }

  void move() {
    x = x+speed;
  }
  
  
  boolean reachedEdge() {
      return x >= width+150 || x <= -150 || y > height + 150 || y < -150;
    }
}
