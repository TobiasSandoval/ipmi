boolean rojo(){ 
if(mouseX > posX && mouseY > posY){
  colorRect1 = color(0,100,0);
  return true;
} 
 return false;
} 

boolean verde(){ 
if(mouseX > _posX && mouseY > posY){
  colorRect2 = color(100,0,0);
  return true;
} 
 return false;
} 

boolean amarillo(){ 
if(mouseX > posX && mouseY > _posY){
  colorRect3 = color(100,50,0);
  return true;
} 
 return false;
} 

boolean azul(){ 
if(mouseX > _posX && mouseY > _posY){
  colorRect4 = color(0,0,100);
  return true;
} 
 return false;
} 
void dibujarCubito(int ancho, int alto, int anchoAF) {
 for(int j=0; j<4; j++){
    tam = 400/2;
    for(int i=0; i<cant; i++){
  float colorDENTRO = map(tam, 200, 0, 100, 200);
  float colorIntro = map(tam, 200, 0, 100, 255);
      if(j == 0){
        stroke(colorRect2);
        fill(10,colorDENTRO-10,10);
        rect(ancho/4, alto/4, tam, tam);
        fill(0,colorIntro-50,0);
        rect(ancho/4, alto/4, tam-160, tam-160);
        fill(50,colorIntro-25,50);
        rect(ancho/4, alto/4, 30, 30);
      }else if(j == 1){
        stroke(colorRect1);
        fill(colorDENTRO,0,0);
        rect(anchoAF, alto/4, tam, tam);
        fill(colorIntro+25,25,25);
        rect(anchoAF, alto/4, tam-100, tam-100);
        fill(colorIntro+50,50,50);
        rect(anchoAF, alto/4, 50, 50);
        fill(colorIntro+100,100,100);
        rect(anchoAF, alto/4, 25, 25);
      }else if(j == 2){
        stroke(colorRect3);
        fill(colorDENTRO*2,colorDENTRO,0);
        rect(ancho/4, alto/4 + alto/2, tam, tam);
        fill(colorIntro*2-50,colorIntro-50,10);
        rect(ancho/4, alto/4 + alto/2, tam-30, tam-30);
        fill(colorIntro*2+100,colorIntro+100,50);
        rect(ancho/4, alto/4 + alto/2, 20, 20);
      }else{
        stroke(colorRect4);
        fill(0,0,colorDENTRO*2);
        rect(anchoAF, alto/4 + alto/2, tam, tam);
        fill(colorIntro,colorIntro,colorIntro*2);
        rect(anchoAF, alto/4 + alto/2, 5-tam, 10-tam);
        
      }
      tam = tam - 20;
    }
  } 
  

}
void iniciarVar(){
  if (mouseX < 1996/4 && mouseY < 400/4){    
    float valorVerde = map(dist(mouseX, mouseY, 1996/4, 400/4),200,0,100,255);
    colorRect2 = color(0,valorVerde,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4){
    float valorRojo = map(dist(mouseX, mouseY, 935/4 + 935/2, 400/4),200,0,100,255);
    colorRect1 = color(valorRojo,0,0);
  }else if(mouseX < 1996/4 && mouseY < 400/4 + 400/2){
    float valorAmarillo = map(dist(mouseX, mouseY,1996/4 , 400/4 + 400/2),200,0,100,255);
    colorRect3 = color(valorAmarillo*2,valorAmarillo,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4 + 400/2){
    float valorAzul = map(dist(mouseX, mouseY,935/4 + 935/2 , 400/4 + 400/2),200,0,100,255);
    colorRect4 = color(0,0,valorAzul);
   }
  }
