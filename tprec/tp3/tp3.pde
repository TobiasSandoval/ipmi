// Obra por: Victor Vasarely
// https://youtu.be/pYogkmIOtV4?si=eZ9JflKfs8-QcHnX
int cant = 10;
int tam = 50;
int posX = 1996/4;
int posY = 400/4;
int _posX = 935/4 + 935/2;
int _posY = 400/4 + 400/2;
color colorRect1, colorRect2, colorRect3, colorRect4;
PImage img;
void setup (){
  size(800, 400);
  img = loadImage("DVA - DVA.jpg");
  rectMode(CENTER);
  colorRect1 = color(100,0,0);
  colorRect2 = color(0,100,0);
  colorRect3 = color(100,100,0);
  colorRect4 = color(0,0,100);
}

void draw (){
 background(200);
 image(img, 0, 0, 400, 400);
 iniciarVar();
  dibujarCubito(1996,400,935/4 + 935/2);
}
