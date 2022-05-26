PImage herbie10, herbie12, herbie13;
PFont letra12;

int texto;
float posx, posy;
float posx1, posy1, tamx;
float velx;
float vely;


void setup(){
  size (500,500);
  background(73,83,203);
 textAlign(CENTER,CENTER);
 textSize(30);
 
 //letra e imagenes
 herbie10=loadImage("herbie10.png");
 herbie12=loadImage("herbie12.png");
 herbie13=loadImage("herbie13.png");
 letra12=loadFont("letra12.vlw");
 //texto
 texto= frameCount;
 
 
 size (500,500);
  posx1=100;
posy1=150;
velx=1;
vely=1;
tamx=100;

 
  
}
void draw (){
  println(frameCount);
  if(frameCount >= 1){
    
  fill(#FF0000);
 rect(0,175,500,100);
 
 fill(255);
 circle (245,245,300);
 
 fill(255);
  textSize(30);
 text("Herbie, a toda marcha", 245, 25);
 
 textSize(200);
 fill(0);
 text("53", 245, 225);
 
  }
  //--------------------------
  if (frameCount >= 150){
  image(herbie10,0,0);
  //opacidad
  fill (0, 90) ;
  rect (0, 0, 500, 500) ;
 textFont(letra12);
 textSize(50);
  fill(255);
  text("ACTORES",250,550-texto);
  textSize(30);
  text("*Maggie Peyton - Lindsay Lohan \n*James Peyton - David Collins \n*Ray Peyton - Michael Keaton \n*Trip Murphy - Matt Dillon \n*Ray Peyton Jr. - Breckin Meyer \n*Kevin - Justin Long \n*Sally - Cheryl Hines \n*Crash - Jimmi Simpson \n*Charisma - Jill Ritchie.",250,800-texto);
   texto= frameCount;

  }
    //--------------------------
   if (frameCount >= 1050){
  image(herbie12,0,0);
  fill (0, 90) ;
  rect (0, 0, 500, 500) ;
 textFont(letra12);
 textSize(50);
  fill(255);
  text("VEHICULOS",250,1500-texto);
  textSize(30);
  text("*Maggie:Volkswagen Escarabajo 1963 \n*James:Ford Gran Torino 1974 \n*Ray:Chevrolet Silverado 2005 \n*Trip:Pontiac GTO 2005 \n*Ray Jr:Chevrolet Monte Carlo 2005 \n*Sally:Volkswagen New Beetle 2005 \n*Charisma:Volkswagen Touareg 2003",250,1700-texto);
   texto= frameCount;
  }
    //--------------------------

   if (frameCount >= 1900){
  image(herbie13,0,0);
  fill (0, 90) ;
    rect (0, 0, 500, 500) ;
  textFont(letra12);
 textSize(50);
  fill(255);
  text("FICHA TECNICA",250,2200-texto);
  textSize(30);
  text("-Dirección- \n*Angela Robinson \n \n-Producción- \n*Robert Simonds \n \n-Guion- \n*Ben Garant \n*Alfred Gough \n*Miles Millar \n*Thomas Lennon \n \n-Música- \n*Mark Mothersbaugh \n \n-Fotografía- \n*Greg Gardiner \n \n-Montaje- \n*Wendy Greene Bricmont \n \n-Vestuario- \n*Frank Helmer",250,2700-texto);
   texto= frameCount;
   }
   
    //--------------------------
  if (frameCount>=3150){
    
    //fondo
     strokeWeight(0);
     background(73,83,203);
     stroke(0);
     fill(#FF0000);
     rect(0,0,170,500);
     fill(255);
     rect(90,0,100,550);
     //pelota
     
     strokeWeight(5);
     circle(posx1, posy1, 120);

    
   
       posx1= random(width); 
       posy1= random(height);
     
}
     if(posx1>=width-tamx/2){
     velx= -100;
     }
if(posx1 <= 0+tamx/2){
     velx= 100;
     }
  //movimiento de la figura
  posx1 = posx1 + velx;
  posy1+=vely;
     
   
   
  }
  
  
  
  
