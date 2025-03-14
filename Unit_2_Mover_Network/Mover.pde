class Mover {
  PVector location; //location
  PVector velocity; //velocity
  float d; //diameter
  float r, g, b; //color spectrum

  Mover() {
    location = new PVector (random(0, width), random(0, height)); 
    velocity = new PVector (0, 1); 
    velocity.setMag(random(1, 5)); 
    velocity.rotate(radians(random(0, 360)));  

    d = random(100, 150);

    r = random(0, 255);
    g = random(0, 255);
    b = random(0, 255);
  }
  
  Mover(float x, float y) {
    location = new PVector (x, y); 
    velocity = new PVector (0, 1); 
    velocity.setMag(random(1, 5)); 
    velocity.rotate(radians(random(0, 360)));  

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
    location.add(velocity); 
  }

  void bounceOfEdge() {
    if (location.x < 0 | location.x > width) velocity.x = -velocity.x;
    if (location.y < 0 | location.y > height) velocity.y = -velocity.y;
  }

  void showBody() {
    noStroke();
    fill(r, g, b, 50);
    circle(location.x, location.y, d);
  }

  void showConnections() {
    int i = 0;
    while (i < movers.size()) {
      Mover other = movers.get(i); 
      float dist = dist(location.x, location.y, other.location.x, other.location.y);
      if (dist <= 250) {
        float a = map(dist, 0, 200, 255, 0); //a = transparency
        stroke(255, a);
        strokeWeight(2);
        line(location.x, location.y, other.location.x, other.location.y);
      }
      i++;
    }
  }
}
