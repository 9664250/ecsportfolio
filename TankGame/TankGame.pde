// Cassandra Knoll || Apr 14 2026 || Tank Game
PImage bg;
Tank tank1; //declaring tank's name
ArrayList<Obstacle> obstacles = new ArrayList<Obstacle>();
ArrayList<Projectile> projectiles = new ArrayList<Projectile>();

int score;

void setup() {
  size(750, 750);
  bg = loadImage("bg1.png");
  tank1 = new Tank();
  obstacles.add(new Obstacle(width/2, height/2));
  obstacles.add(new Obstacle(40, 100));
  obstacles.add(new Obstacle(600, 90));
  score = 0;
  //objTimer = new Timer(1000);
  //objTimer.start();
  //puTimer.start;
}


void draw () {
  background(127);
  imageMode(CORNER);
  image(bg, 0, 0);
  // add timer to distribute
  
  tank1.display();
  
  //displaying obstacles
  for (int i = 0; i < obstacles.size(); i++) {
    Obstacle obs = obstacles.get(i);
    obs.display();
    obs.move();
    scorePanel();  
  }
  
    //displaying projectiles
  for (int i = 0; i < projectiles.size(); i++) {
    Projectile p = projectiles.get(i);
    p.display();
    p.move();
    
  }
}




void scorePanel() {
  fill(127, 127);
  rectMode(CENTER);
  rect(width/2, 30, width, 60);
  fill(255);
  textSize(30);
  text("Score:" + score, width/2, 50);
  println("Objects in Memory:0");
  println("Projectiles in Memory: 0");
}


void keyPressed() {
  if (key == 'w') {
    tank1.move('w');
  } else if (key == 'a') {
    tank1.move('a');
  } else if (key == 'd') {
    tank1.move('d');
  } else if (key == 's') {
    tank1.move('s');
  }
}

void mousePressed() {
    projectiles.add(new Projectile(tank1.x, tank1.y));
}
