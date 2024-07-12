PImage imagen1, imagen2, imagen3;
int pantallaActual = 0;
int tiempoPorPantalla = 8500;
boolean presentacionTerminada = false;
PFont miFuente;

float textoX, textoY;
String textoActual = "";

void setup() {
  size(640, 480);
  imagen1 = loadImage("fsnA.jpg");
  imagen2 = loadImage("fsnB.jpg");
  imagen3 = loadImage("fsnC.jpg");
  miFuente = loadFont("Papyrus-Regular-32.vlw");


  textoX = width;
  textoY = height/2;

  if(pantallaActual == 0){
    textFont(miFuente);
    textoActual = "fate stay night es un anime que habla de una guerra de magos por el santo grial";
  }else if(pantallaActual == 1){
    textFont(miFuente);
    textoActual = "en donde los espiritus de antiguos heroes de la historia son llamados por los magos";
  }else if(pantallaActual == 2){
    textFont(miFuente);
    textoActual = "esta cuenta con tres adaptaciones cada una basada en una ruta de la novela visual";
  }
}

void draw() {
  background(#740B0E);
  if (!presentacionTerminada) {
 if (pantallaActual == 0){
   image(imagen1,0,0,width,height);
}else if (pantallaActual == 1){
  image(imagen2,0,0,width,height);
}else if (pantallaActual == 2){
  image(imagen3,0,0,width,height);
}

fill(0);
textSize(32);
textFont(miFuente);
textAlign(CENTER, CENTER);
text(textoActual,textoX, textoY);

if (pantallaActual == 0){
  textoX -= 2;
}else if (pantallaActual == 1){
  textoX -= 2;
}else if (pantallaActual == 2){
  textoX -= 2;
}

if(millis()-tiempoPorPantalla>=0){
 pantallaActual ++;
 if (pantallaActual >= 3){
   presentacionTerminada = true;
}else{
  tiempoPorPantalla = millis() + 8500;
  
if (pantallaActual == 0){
  textFont(miFuente);
  textoActual = "fate stay night es un anime que habla de una guerra de magos por el santo grial";
  textoX = 500;
  textoY = 350;
}else if (pantallaActual == 1){
  textFont(miFuente);
  textoActual = "en donde los espiritus de antiguos heroes de la historia son llamados por los magos";
  textoX = 700;
  textoY = 200;
}else if (pantallaActual == 2){
  textFont(miFuente);
  textoActual = "esta cuenta con tres adaptaciones cada una basada en una ruta de la novela visual";
  textoX = 700;
  textoY = 350;
  }
 }
}
  }else{
    fill(0,0,255);
    ellipse(450, 400,140, 80);
    fill(0,255,0);
    text("reset",380,350,140,80);
    fill(0,0,255);
    text("gracias por ver!!",150,80,300,100);
  }
}
void mousePressed() {
  if(presentacionTerminada){
    float distancia = dist(mouseX, mouseY, 450, 400);
    if (distancia<25){
      presentacionTerminada = false;
      pantallaActual = 0;
      tiempoPorPantalla = millis()+8500;
      
      textoActual = "fate stay night es un anime que habla de una guerra de magos por el santo grial";
      textoX = width;
      textoY = height/2;
    }
  }
}
 
