PVector pos = new PVector(0,0);
PVector dir = new PVector(1,1);

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
  if (pos.x >= 600 && pos.y >= 600){
    dir.x = -1;
    dir.y = -1;
  }
  else if (pos.x <= 0 && pos.y <= 0){
    dir.x = 1;
    dir.y = 1;
  }
}
