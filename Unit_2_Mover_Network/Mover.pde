class Mover {
  float x, y; //coords
  float vx, vy; //velocity
  float d; //diameter
  float r, g, b; //color spectrum

  Mover() {
    x = random(0, width);
    y = random(0, height);
    
    vx = random(-1, 1);
    vy = random(-1, 1);
    
    d = random(100, 150);
    
    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }
  
  void act() {
    move();
    bounceOfEdge(); 
  }
  
  void move() {
    x = x + vx; 
    y = y + vy; 
  }
  
  void bounceOfEdge() {
    if (x < 0 | x > width) vx = -vx; 
    if (y < 0 | y > height) vy = -vy; 
  }
  
  void showBody() {
    noStroke(); 
    fill(r, g, b, 50); 
    circle(x, y, d); 
  }
  
  void showConnections() {
    
  }
}
