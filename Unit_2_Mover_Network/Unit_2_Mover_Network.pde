//Jovan Tang
//March 11th 2025

//Unit 2 
//Mover Network

ArrayList<Mover> movers; 

void setup() {
  size(900, 900); 
  movers = new ArrayList(); //instantiate ArrayList
  
  //int i = 0; 
  //while (i < numOfMovers) {
  //  movers.add(new Mover()); //calling constructor
  //  i++; 
  //}
}

void draw() {
  background(0); 
  int i = 0; 
  while (i < movers.size()) {
    Mover m = movers.get(i);
    m.act(); 
    m.showBody(); 
    m.showConnections(); 
    i++;
  }
}

void mouseReleased() {
  movers.add(new Mover(mouseX, mouseY)); 
}
