// Obra por: Victor Vasarely
// https://youtu.be/pYogkmIOtV4?si=eZ9JflKfs8-QcHnX
int cant = 5;
int tam;
color colorRect1, colorRect2, colorRect3, colorRect4;
PImage img;

void setup (){
  size(800, 400);
  img = loadImage("DVA - DVA.jpg");
  rectMode(CENTER);
  colorRect1 = color(#EA7B97);
  colorRect2 = color(#7FED8C);
  colorRect3 = color(#EBED75);
  colorRect4 = color(#9375ED);
}

void draw (){
 background(200);
 image(img, 0, 0, 400, 400);
 
 dibujarCubito();

 
  
}

void mouseMoved(){

  iniciarVar();
}
void mousePressed() {
  reinicio();
}
