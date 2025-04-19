PImage img;

void setup() {
  size(800,400);
  img = loadImage("C:/Users/Usuario/Downloads/Phineass.jpg");
}

void draw() { 
  background(83, 147, 53);
  color beige = color (224,157,87);
  color marron = color (106,59,15);
  println("X: " + mouseX + " ~ Y: " + mouseY);
  image(img,0,0, 300, 400);
  
  //fondo
  fill(beige);
  rect(300,0,500,270);
  fill(marron);
  rect(400,0,2,270);
  rect(500,0,2,270);
  rect(600,0,2,270);
  rect(700,0,2,270);
  rect(800,0,3,270);
  rect(800,0,3,270);
  fill(255,186, 155);
  stroke(172, 68, 42);
  triangle(500,60,740,100,550,200);
  fill(200,134,60);
  noStroke();
  rect(478,0,15,70);
  rect(460,20,13,70);
  rect(442,70,13,70);
  rect(430,0,9,30);
  rect(620,128,12,110);
  rect(640,128,17,60);
  rect(665,128,15,75);
  rect(760,0,4,125);
  rect(730,70,4,125);
  rect(333,0,10,95);
  
  //ojo
  fill(255);
  stroke(0);
  ellipse(640,90,75,47);
  fill(19,31,104);
  stroke(0);
  ellipse(665,89,25,25);
  fill(255);
  stroke(0);
  ellipse(660,82,5,5);
  
  //cabeza
  fill(255,186, 155);
  stroke(172, 68, 42);
  triangle(500,60,740,100,550,200);
  //boca
  fill(255,186, 155);
  stroke(172, 68, 42);
  curve(600,130,589,142,622,161,600,130);
  rect(586,142,8,0);
  curve(528,134,530,131,530,138,528,134);
  
  //ojos
  fill(255);
  stroke(0);
  ellipse(610,90,75,47);
  fill(19,31,104);
  stroke(0);
  ellipse(631,94,25,25);
  fill(255);
  stroke(0);
  ellipse(625,90,5,5);
  
  //pecas
  fill(171,90,58);
  stroke(171,90,58);
  ellipse(525,90,4,4);
  ellipse(520,77,4,4);
  ellipse(534,83,4,4);
  noFill();
   
  //pelo
  fill(227,52,31);
  stroke(227,52,31);
  triangle(500,60,556,45,530,65);
  triangle(490,60,535,25,515,63);
  triangle(486,60,494,28,500,63);
  triangle(465,70,499,56,507,80);
  triangle(486,95,490,55,507,80);
  triangle(508,100,490,75,507,80);
  
  //cuerpo
  fill(255,186, 155);
  stroke(172, 68, 42);
  ellipse(522,262,22,17);
  fill(255);
  stroke(0);
  quad(560,200,547,200,510,290,590,290);
  fill(253,126,47);
  noStroke();
  quad(584,275,517,275,510,290,590,290);
  quad(575,247,528,247,520,264,582,264);
  quad(566,220,539,220,532,235,572,235);
  quad(560,200,549,200,543,210,563,210);
  
  //pantalon
  fill(24,64,142);
  stroke(0,4,37);
  rect(509,290,78,26);
  rect(509,290,30,26);
  rect(559,290,28,18);
  rect(530,292,20,12);  
  triangle(558,290,573,298,588,290);
  noStroke();
  rect(530,291,24,13);
  rect(541,300,10,10);
  
  //brazos
  fill(255);
  stroke(0);
  quad(569,215,558,215,569,249,590,242);
  fill(253,126,47);
  noStroke();
  quad(575,223,561,224,565,236,581,231);
  fill(255,186, 155);
  stroke(172, 68, 42);
  quad(585,245,577,247,587,254,593,252);
  quad(595,254,589,254,578,269,583,271);
  quad(524,240,519,236,510,248,518,247);
  quad(518,248,510,247,521,259,524,253);
  ellipse(586,274,22,15);
  ellipse(528,135,25,18);
  noStroke();
  fill(255,186, 155);
  ellipse(591,254,6,5);
  ellipse(586,268,7,7);
  ellipse(515,248,6,6);
  ellipse(520,257,7,7);
  ellipse(535,135,30,18);
  fill(255,186, 155);
  stroke(172, 68, 42);
  rect(581,270,4,10);
  rect(586,272,4,8);
  rect(591,273,4,6);
  fill(255);
  noStroke();
  rect(558,212,5,7);
  fill(255);
  stroke(0);
  triangle(543,211,529,242,516,233);
  fill(253,126,47);
  noStroke();
  quad(538,223,533,220,525,227,533,232);
 
  //piernas
  fill(44,109,15);
  ellipse(528,362,115,20);
  fill(255,186, 155);
  stroke(172, 68, 42);
  //orejas
  curve(580,134,530,131,530,136,580,134);
  curve(580,134,530,135,530,139,580,134);
  rect(524,317,9,22);
  fill(24,64,142);
  stroke(0,4,37);
  rect(524,339,9,10);
  fill(255);
  stroke(0);
  ellipse(514,352,40,16);
  fill(24,64,142);
  noStroke();
  rect(506,345,28,15);
  fill(255);
  stroke(0);
  rect(494,355,40,5);
  fill(255,186, 155);
  stroke(172, 68, 42);
  rect(554,317,9,22);
  fill(24,64,142);
  stroke(0,4,37);
  rect(554,339,9,10);
  fill(255);
  stroke(0);
  ellipse(543,357,40,16);
  fill(24,64,142);
  noStroke();
  rect(536,349,28,15);
  fill(255);
  stroke(0);
  rect(523,360,40,5);
  rect(514,344,7,7);
  rect(543,349,7,7);  
}
