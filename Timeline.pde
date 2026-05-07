// Cassie Knoll | 02 Feb 2026 | Timeline

void setup() {
  size(950, 450);
}
void draw() {
  background(#F00201);
  drawRef();
  histEvent(100, 200, "1206", true, "Proclaimed Genghis Khan of the Mongol Empire(eternal ruler).");
  histEvent(250, 300, "1209", false, "Conquers the Western Xia and gains more power.");
  histEvent(400, 200, "1211", true, "Begins the invasion of the Jin Dynasty in northern China.");
  histEvent(550, 300, "1215", false, "Captures and sacks the Jin capital, which is Beijing.");
  histEvent(625, 200, "1218", true, "Conquers the Kara-Khitan Khanate and gains more power and control.");
  histEvent(710, 300, "1221", false, "Invades and destroys the Khwarazmian Empire, killing 2-15 million people.");
  histEvent(820, 200, "1226", true, "Begins final campaign against the Western Xia, which had revolted, and kills about 300,000 soldiers.");
  histEvent(840, 300, "1227", false, "Genghis Khan dies and new ruler is declared the following month.");
  

  
}
void drawRef() {
  textAlign(CENTER);
  textSize(38);
  fill(#0F001E);
  text("Genghis Khan: Timeline",width/2, 65);
  textSize(18);
  text("by Cassie Knoll",width/2, 90);
  strokeWeight(3);
  line(50, 250, 900, 250);
  line(50, 245, 50, 255);
  line(900, 245, 900, 255);
  line(width/2, 245, width/2, 255);
  text("1205", 50, 280);
  text("1230", 900, 280);
}
void histEvent(int x, int y, String title, boolean top, String detail) {
  if(top == true) {
    line(x, y, x-15, y+50);
  } else {
    line(x, y, x-15, y-50);
  }
  rectMode(CENTER);
  fill(#9983A1);
  strokeWeight(1.2);
  rect(x, y, 100, 30, 10);
  strokeWeight(3);
  fill(#680083);
  text(title, x, y+5);
  if(mouseX > x-50 && mouseX < x+50 && mouseY > y-15 && mouseY < y+15) {
    fill(255);
    text(detail, width/2, 350);
  }
}
