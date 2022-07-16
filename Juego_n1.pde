
//TRONCOSO DELFINA (91546/3)
//VIDEO:https://youtu.be/2JO83Y2BASA
//VIDEO BUENO:

PImage mono, canasta, win, gameover, fondoinstrucciones, Fondoselva, inicio, ban;
String estado;
//contador de bananas y de vidas
int contador, vida;
//tamaño de banana/canasta
float bx, by, bt, cx, cy;
//arreglo x,y individual de cada banana 
float bax[]=new float [20];
float bay[]=new float [20];
//aparesca/desaparezca cada banana
boolean banana[]=new boolean [20];
//aparesca/desaparezca cada canasta
boolean c=false;

void setup() {
  size(500, 500);
  //Estado Inicial
  estado= "Inicio";
  //Imagenes
  canasta = loadImage("canasta.png");
  Fondoselva = loadImage("Fondoselva.jpg");
  mono = loadImage("mono.png");
  win = loadImage("win.jpg");
  gameover = loadImage("gameover.jpg");
  fondoinstrucciones = loadImage("fondoinstrucciones.jpeg");
  ban= loadImage("banana.png");
  imageMode(CORNER);
  //Texto
  textAlign(CENTER, CENTER);
  textSize(25);
  //Desaparecen las bananas
  //arreglo con for que hace que al comenzar el juego las bananas sean (false) y por lo tanto no aparezcan
  for (int i=0; i<20; i++) {
    banana[i]=false;
    //Banana Y
    bay[i]=0;
  }
  //cantidad de vidas
  vida=5;
  //Banana Tamanio
  bt=50;
}

void draw() {
  textSize(23);
  //pantalla estado de inicio
  if (estado.equals("Inicio")) {
    image(fondoinstrucciones, 0, 0, 500, 500);
    fill(#2B5856);
    text("INSTRUCCIONES \n\n\n AYUDA A JUAN EL MONO A QUE \n NO DEJES CAER MAS DE 5 BANANAS.\n NO PODRAS PERDER MAS DE 5 BANANAS \n\n\n MANTEN PRESIONADO EL CLICK Y \n ARRASTRA LA CANASTA PARA \n ATRAPAR TODAS LAS BANANAS \n\n\n PRESIONA ENTER PARA JUGAR", 250, 250);
  }
  
  if (estado.equals("Juego")) {
    image(Fondoselva, 0, 0, 500, 500);
    image(mono, 0, 350, 150, 150);
    //mientras apreto
    if (mousePressed) {
      //Posicion canasta
      cx=mouseX;
      cy=400;
      image(canasta, cx, cy, 100, 100);
      //si esta apretando el mouse la canasta aparece
      c=true;
    } else {
      //y si no desaparece
      c=false;
    }
    //me permite que caigan bananas en los frames que sean modulos de 90
    if (frameCount%90==0) {
      
      //contador de bananas es menor a 19
      if (contador<19) {
        //suma  una banana
        contador++;
        //aparece la banana que el contador dice
        banana[contador]=true;
        //le da la X a la banana
        bax[contador]=random(0, width-bt);
        //contador mayor a 19- ganaste
        
      } else {
        estado="Ganaste";
      }
    }
    //cantidad de bananas, si la canasta está activa, cantidad de vidas
    println(contador, c, vida);
    for (int i=0; i<20; i++) {
      //si es el numero que aparece en la consola LA BANANA APARECE
      if (banana[i]==true) {
        Banana(bax[i], bay[i]);
        //Baja la banana
        bay[i]=bay[i]+3;
      }
      //Si la canasta esta en true y la banana colisiona con la canasta. la banana desaparece porque significa que la agarraste
      if (bax[i]>=cx && bax[i]<= cx+100 && bay[i]>=cy && c==true) {
        banana[i]=false;
      }
      //Pierde una vida
      if (bay[i]>=height) {//si se sale de la pantalla
        //desaparece la banana
        banana[i]=false;
        bay[i]=-bt;
        vida--;//resta la vida
      }
    }
    //vida es 0 perdiste
    if (vida<=0) {
      estado="Perdiste";
    }
  } //pantallas para pasar de pantalla
  if (estado.equals("Perdiste")) {
    image(gameover, 0, 0, width, height);
  }
  if (estado.equals("Ganaste")) {
    image(win, 0, 0, width, height);
  }
  if (estado.equals("Creditos")) {
    image(fondoinstrucciones, 0, 0, 500, 500);
    fill(#2B5856);
    text("Alumna: \n Delfina Troncoso  \n \n Materia: \n Tecno1 \n \n Comision 2 ", width/2, height/2);
    rect(145, 415, 205, 45);
    fill(255);
    textSize(15);
    text("Presiona para reiniciar", 250, 430);
  }
}
void mousePressed() {
  //Si apreto en el boton va a la pantalla inicio
  if (estado.equals("Creditos")&& mouseX>=145 && mouseX<=350 && mouseY>=415 && mouseY<=460) {
    estado="Inicio";
  }
}
void keyPressed() {
  //si apreto ENTER comineza el juego
  if (estado.equals("Inicio")) {
    if (keyCode==ENTER) {
      estado="Juego";
      frameCount=0;
    }
  }
  //Enter para ir a la pantalla creditos
  if (estado.equals("Ganaste")) {
    if (keyCode==ENTER) {
      estado="Creditos";
      frameCount=0;
      Return();
    }
  }
    //Enter para ir a la pantalla creditos
  if (estado.equals("Perdiste")) {
    if (keyCode==ENTER) {
      estado="Creditos";
      frameCount=0;
      Return();
    }
  }
}
//funcion con parametro
void Banana(float bbx, float bby) {
  //toman la X,Y que los parametros le dan
  bx=bbx;
  by=bby;
  //imagen de la banana
  image(ban, bx, by, bt, bt);
}
void Return() { //reiniciar variables
  for (int i=0; i<20; i++) {
    banana[i]=false;
    //Banana Y
    bay[i]=0;
  }
  vida=5;
  contador=0;
}
