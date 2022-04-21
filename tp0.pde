void setup(){
  size(700,700); //tamaño
  background(#C5E2EA); //color del cielo
}

void draw(){
//sol
stroke(0);
  fill(#FFF700);
  circle(10,10,250);
  
//tierra
stroke(0);
  //marron claro
  fill(#9D883C);
  stroke(0);
  triangle(150,500,200,550,250,525);
  triangle(200,550,300,530,275,600);
  triangle(300,530,350,650,400,530);
  triangle(400,530,425,600,475,520);
  triangle(500,550,475,520,550,500);
  //marron oscuro
  fill(#7C6F41);
  triangle(200,550,250,525,300,530);
  triangle(300,530,275,600,345,640);
  triangle(400,530,425,600,350,650);
  triangle(475,520,425,600,500,550);

//montaña grande
stroke(0);
  //gris claro
  fill(#808987);
  quad(175,500,235,245,260,280,235,500);
  quad(300,500,275,250,315,290,360,500);
  //gris oscuro
  fill(#5A5F5E);
  quad(235,500,260,280,275,250,300,500);
  //nieve
  fill(#FFFFFF);
  stroke(#FFFFFF);
  quad(235,245,275,100,275,250,260,280);
  triangle(275,250,275,100,315,290);

//montaña chica
stroke(0);
  //gris oscuro
  fill(#5A5F5E);
  quad(295,500,380,360,400,395,380,500);
  quad(440,500,420,350,460,380,500,500);
  //gris claro
  fill(#808987);
  quad(380,500,400,395,420,350,440,500);
  //nieve
  stroke(#FFFFFF);
  fill(#FFFFFF);
  quad(380,360,420,250,420,350,400,395);
  triangle(420,250,460,380,420,350);
  
//pasto
stroke(0);
  //verde claro
  fill(#60D100);
  triangle(150,500,250,525,270,490);
  triangle(270,490,300,530,350,490);
  triangle(350,490,400,530,450,490);
  triangle(450,490,550,500,475,520);
  //verde oscuro
  fill(#4AA000);
  triangle(270,490,250,525,300,530);
  triangle(350,490,300,530,400,530);
  triangle(400,530,450,490,475,520);
  
//arbol 1
  //tronco
  fill(#504E23);
  rect(280,465,30,30);
  //hojas
  fill(#295D00);
  triangle(250,475,295,430,340,475);
  triangle(255,455,295,395,335,455);
  triangle(260,435,295,350,330,435);
  
//arbol 2
  //tronco
  fill(#504E23);
  rect(450,480,30,30);
  //hojas
  fill(#295D00);
  triangle(420,490,465,450,510,490);
  triangle(430,470,465,430,500,470);
  triangle(440,450,465,400,490,450);
  
//nubes
  stroke(#EDEDED);
  fill(#EDEDED);
  circle(600,180,50);
  ellipse(600,200,100,50);
  circle(220,80,50);
  ellipse(220,100,100,50);

//nombre
  stroke(0);
  strokeWeight(1);
  fill(0);
  text("Troncoso Delfina",20,680);

}
