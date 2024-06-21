void dibujarCubito() {
 for(int j=0; j<4; j++){
    tam = 400/2;
    for(int i=0; i<cant; i++){
      if(j == 0){
        stroke(#079300);
        fill(colorRect2);
        rect(1996/4, 400/4, tam, tam);
      }else if(j == 1){
        stroke(#93000C);
        fill(colorRect1);
        rect(935/4 + 935/2, 400/4, tam, tam);
      }else if(j == 2){
        stroke(#DBB107);
        fill(colorRect3);
        rect(1996/4, 400/4 + 400/2, tam, tam);
      }else{
        stroke(#2507DB);
        fill(colorRect4);
        rect(935/4 + 935/2, 400/4 + 400/2, tam, tam);
      }
      tam = tam - 50;
    }
  } 
  

}
void iniciarVar(){
  if (mouseX < 1996/4 && mouseY < 400/4){
    float valorVerde = (dist(mouseX, mouseY, 1996/4, 400/4));
    colorRect2 = color(0,valorVerde,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4){
    float valorRojo = (dist(mouseX, mouseY, 935/4 + 935/2, 400/4));
    colorRect1 = color(valorRojo,0,0);
  }else if(mouseX < 1996/4 && mouseY < 400/4 + 400/2){
    float valorAmarillo = (dist(mouseX, mouseY,1996/4 , 400/4 + 400/2));
    colorRect3 = color(valorAmarillo,valorAmarillo,0);
  }else if(mouseX < 935/4 + 935/2 && mouseY < 400/4 + 400/2){
    float valorAzul = (dist(mouseX, mouseY,935/4 + 935/2 , 400/4 + 400/2));
    colorRect4 = color(0,0,valorAzul);
   }
  }
  
  void reinicio(){
  colorRect1 = color(#EA7B97);
  colorRect2 = color(#7FED8C);
  colorRect3 = color(#EBED75);
  colorRect4 = color(#9375ED);
  }
