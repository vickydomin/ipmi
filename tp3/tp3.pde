// Maria Victoria Dominguez
// Comisión 1 
//https://youtu.be/n1NOkro5q2I?si=9da0xKKPASGBou3W

// Variables
PImage imagen;
int tileSize;
boolean animacionActiva;
boolean animacionTerminada;
int tiempoAnimado;
int estadoColor;
int direccion; // 1: normal, -1: invertido

void setup() {
  size(800, 400);
  imagen = loadImage("14.png");
  tileSize = 50;  // Tamaño de cada cuadrado
  animacionActiva = false;
  tiempoAnimado = 0;
  estadoColor = 0;
  direccion = 1;  //1 es normal y -1 invertido
  animacionTerminada = true;
  rectMode(CENTER);
}

void draw() {
  println("X: " + mouseX + " ~ Y: " + mouseY);
  background(255);
  noStroke();
  image(imagen, 0, 0, 400, 400);
  translate(400, 0);
  for (int y = 0; y < height; y += tileSize) {
    for (int x = 0; x < 400; x += tileSize) {
        animacionTerminada = dibujarCuadroGiratorio(x, y, tiempoAnimado, tileSize, estadoColor, direccion);
    }
  }
  if (animacionActiva) {
    tiempoAnimado++;
  }
  if (animacionActiva && animacionTerminada) {
    noLoop();
  }
}
// Funcion con retorno
boolean dibujarCuadroGiratorio(int posx, int posy, int tiempoActual, int tam, int estado, int dir) {
  rectMode(CORNER);
  cambiarColorDinamico(posx, posy, estado, tam);  // color dinámico con dist() y paleta por estado
  rect(posx, posy, tam, tam);
  float cx = posx + tam / 2 + 12 * dir;
  float cy = posy + tam / 4;
  float angle = 0;
  boolean terminado = true;
  int comienzo = (posx / tam + posy / tam) * 5;
  if (animacionActiva && tiempoActual > comienzo) {
    int tiempoDeGiro = tiempoActual - comienzo;
    float grados = min(tiempoDeGiro * 3, 90);
    angle = radians(grados) * dir;
    if (grados < 90) terminado = false;
  } else {
    terminado = false;
  }
  pushMatrix();
  translate(cx, cy);
  rotate(angle);
  cambiarColor(estado, 2);  // Cuadrados
  rectMode(CENTER);
  rect(0, 0, tileSize / 2, tileSize / 2);
  popMatrix();
  cambiarColor(estado, 3);  // Triángulos
  if (dir == 1) {
    triangle(posx + tileSize / 2, posy + tileSize, posx + tileSize, posy + tileSize, posx + tileSize, posy + tileSize / 2);
    triangle(posx, posy, posx, posy + tileSize / 2, posx + tileSize / 2, posy);
  } else {
    triangle(posx + tileSize / 2, posy + tileSize, posx, posy + tileSize, posx, posy + tileSize / 2);
    triangle(posx + tileSize, posy, posx + tileSize, posy + tileSize / 2, posx + tileSize / 2, posy);
  }
  return terminado;
}

void cambiarColorDinamico(float x1, float y1, int estado, int tileS) {
  float d = dist(mouseX - 400, mouseY, x1 + tileS / 2, y1 + tileS / 2);
  float r, g, b;
  if (estado == 0) {  // Rojos
    r = map(d, 0, 400, 160, 100);
    g = map(d, 0, 400, 10, 40);
    b = map(d, 0, 400, 10, 40);
  } else if (estado == 1) {  // Celestes
    r = map(d, 0, 400, 70, 30);
    g = map(d, 0, 400, 160, 70);
    b = map(d, 0, 400, 235, 130);
  } else if (estado == 2) {  // Verdes
    r = map(d, 0, 400, 30, 0);
    g = map(d, 0, 400, 180, 80);
    b = map(d, 0, 400, 30, 0);
  } else if (estado == 3) {  // Violetas
    r = map(d, 0, 400, 150, 100);
    g = map(d, 0, 400, 60, 40);
    b = map(d, 0, 400, 100, 90);
  } else {  // Amarillos
    r = map(d, 0, 400, 90, 130);
    g = map(d, 0, 400, 235, 180);
    b = map(d, 0, 400, 20, 0);
  }
  fill(r, g, b); 
}
// Función sin retorno
void cambiarColor(int estado, int tipoFigura) {
  if (tipoFigura == 1) { // Fondo
    if (estado == 0) fill(102, 0, 14);
    else if (estado == 1) fill(69, 136, 144);
    else if (estado == 2) fill(1, 63, 0);
    else if (estado == 3) fill(79, 30, 100);
    else fill(193, 164, 8);
  } else if (tipoFigura == 2) { //Cuadrado
    if (estado == 0) fill(234, 192, 193);
    else if (estado == 1) fill(187, 219, 240);
    else if (estado == 2) fill(206, 231, 101);
    else if (estado == 3) fill(225, 178, 255);
    else fill(255, 255, 119);
  } else if (tipoFigura == 3) { //Triangulo
    if (estado == 0) fill(234, 8, 3);
    else if (estado == 1) fill(107, 180, 221);
    else if (estado == 2) fill(99, 176, 0);
    else if (estado == 3) fill(164, 33, 231);
    else fill(254, 218, 17);
  }
}
void mousePressed() {
  animacionActiva = true;
  tiempoAnimado = 0;
  loop();
  estadoColor++;
  if (estadoColor > 4) estadoColor = 0;
}
void keyPressed() {
  if (key == 'a' || key == 'A') {
    direccion = direccion * -1;
  }
}
