PVector pos = new PVector(random(548)+26,random(548)+26);
float randomNumber = 1 + random(3);
PVector dir = new PVector(randomNumber,randomNumber);

void setup(){
  
  size(600,600); // définit la taille de la fenêtre
  background(100); // définit la couleur du fond de la fenêtre, ici 100 = gris
  fill(255,0,0); // remplit le cercle en rouge
  ellipse(width/2, height/2, 50, 50);
  
}

void draw(){
  fill(0,0,255); // remplit le cercle en bleu
  background(100);
  ellipse(pos.x, pos.y, 50, 50);
  pos.x += dir.x;
  pos.y += dir.y;
  if (pos.x >= 600){
    dir.x = -randomNumber;
  }
  else if (pos.x <= 0){
    dir.x = randomNumber;
  }
  else if (pos.y >= 600){
    dir.y = -randomNumber;
  }
  else if (pos.y <= 0){
    dir.y = randomNumber;
  }
}
