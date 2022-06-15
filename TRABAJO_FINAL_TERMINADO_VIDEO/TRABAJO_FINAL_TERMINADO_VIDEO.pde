//TRONCOSO DELFINA 
//LEGAJO 91546/3
//LINK DE YOUTUBE: https://youtu.be/gUsxv-uZBeE


//variables
float ang,vel;
float x;
float ang2;
float ang3;

void setup(){
  size(800,800); //tamaño ventana
  background(0); //fondo

  ang=0;   //angulo de giro
  vel=3; //velocidad de giro
  x=0; // distancia al centro
  
}

void draw(){

 float mousex= map(mouseX,0,width,0,255); 
 float mousey= map(mouseY,0,width,0,255);
  //MOUSE X/Y variable 
  // 0, WIDTH rango(tamaño) 
  // 0, 255 rango color
  //----------------------------------
  strokeWeight(0.5); 
  translate(width/2,height/2); //traslada coordenada 
  
  fill(mousey, 200, mousex); // color 
 rotate(radians(ang)); // girar el circulo 
  circle(x,0,30); //circulo
  ang=ang+vel;// me permite que el circulo rote constantemente ya que se le suma la velocidad 
  
  fill(mousex, 200, mousey);  
  rotate(radians(ang2));
  circle(x,0,30);
  ang2=ang2+vel/2;
  
   fill(255, mousex, mousey);
  rotate(radians(ang3));
  circle(x,0,30);
  ang3=ang3+vel/4;
  
 
  
if (ang==360){ //cada vez que el angulo del circulo llega a 360
ang=0; // el angulo vuelve a 0
x=x+30; // el circulo comienza a girar 10 pixeles mas a la derecha que antes
}








}
