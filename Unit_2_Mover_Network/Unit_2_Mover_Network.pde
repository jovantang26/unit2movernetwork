//Jovan Tang
//March 11th 2025

//Unit 2 
//Mover Network

Mover[] movers; 
int numOfMovers = 50; 

void setup() {
  size(900, 900); 
  movers = new Mover[numOfMovers]; //instantiate
  
  int i = 0; 
  while (i < numOfMovers) {
    movers[i] = new Mover(); 
    i++; 
  }
}

void draw() {
  background(0); 
  int i = 0; 
  while (i < numOfMovers) {
    movers[i].act(); 
    movers[i].showBody(); 
    movers[i].showConnections(); 
    i++;
  }
}
