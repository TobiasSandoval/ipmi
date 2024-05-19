PImage[] imagenes = new PImage[3]; 
int pantallaActual = 0; 
int tiempoPorPantalla = 7000; 
int tiempoInicioPantalla = 0;
boolean presentacionTerminada = false;
PFont miFuente;

float textoX,textoY;
String[] textos = {"fate stay night es un anime basado en la novela visual del mismo nombre","este nos relata la historia de una guerra entre magos por el santo grial","esta cuenta con tres adaptaciones basadas en las tres rutas de la novela visual "};

void setup() {
  size(640, 480);
  imagenes[0] = loadImage("fsnA.jpg");
  imagenes[1] = loadImage("fsnB.jpg");
  imagenes[2] = loadImage("fsnC.jpg");
  miFuente = loadFont("Papyrus-Regular-32.vlw");

  
  textoX = width;
  textoY = height/2;
  
  tiempoInicioPantalla = millis();
  
}

void draw() {
  background(#740B0E);
  if (!presentacionTerminada) {
    image(imagenes[pantallaActual], 0, 0, width, height);

  mostrarTexto();

    if (millis() - tiempoInicioPantalla >= tiempoPorPantalla) {
      siguientePantalla();
    }
  } else {

    fill(0, 200, 0);
    ellipse(1048/2, 700/2, 100, 60);
    fill(0, 0, 200);
    text("reset",1048/2, 700/2);
    textSize(20);
     text("GRACIAS POR VER!!!",500/2, 100/2);
    textSize(20);
  }
}

void siguientePantalla() {
  pantallaActual++; 
  if (pantallaActual >= imagenes.length) {
    
    presentacionTerminada = true;
  } else {
    tiempoInicioPantalla = millis() + 5000; 
    
    
    if (pantallaActual == 0){
      textoX = 1000;
      textoY = 500/2;
    }else if (pantallaActual == 1){
      textoX = 500/2;
      textoY = 500;
    }else if (pantallaActual == 2){
      textoX = width/2;
      textoY = 0;
    }
  }
 }
 void mostrarTexto(){
 fill(#02C116);
 textFont(miFuente);
 textSize(32);
 textAlign(CENTER, CENTER);
 text(textos[pantallaActual], textoX, textoY,500/2,500/2);
 
 if(pantallaActual == 0){
 textoX -= 2;
 }else if(pantallaActual == 1){
   textoY -= 1;
 }else if(pantallaActual == 2){
   textoY += 1;
 }
 }

void mousePressed() {
  if (presentacionTerminada) {
    float distancia = dist(mouseX, mouseY, 1048/2, 700/2);
    if (distancia < 25) { 
      reiniciarPresentacion();
    }
  }
}

void reiniciarPresentacion() {
  presentacionTerminada = false; 
  pantallaActual = 0; 
  tiempoInicioPantalla = millis() + 5000; 
  
  textoX = width;
  textoY = height/2;
}
