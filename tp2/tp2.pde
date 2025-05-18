// Maria Victoria Dominguez
// Comisión 1 

//variables
PImage img1, img2, img3, img4;
int frameCambio; 
int frameActual;
int imagenActual;
int velocidad;
float y;
int tamañoTexto;
float totalAltura;
float x; 
int vel;
int tam;
String texto;
boolean detenido;
float cx;
float cy;
float radio;
float opacidad;
String titulo;

void setup() {
frameCambio = 200;  
frameActual = 0;
imagenActual = 0;
velocidad = 2; 
tamañoTexto = 32;
totalAltura = 0;
vel = 4; 
tam = 20;
texto = "Back to the Future (titulada Volver al futuro en Hispanoamérica)\nes una película estadounidense de ciencia ficción y comedia\nde 1985 dirigida y escrita por Robert Zemeckis,\nBob Gale también colaboró como guionista, producida por\nSteven Spielberg y protagonizada por Michael J. Fox,\nChristopher Lloyd, Lea Thompson, Crispin Glover y\nThomas F. Wilson. Relata las aventuras de Marty McFly,\nun adolescente rebelde e impulsivo que vive con sus padres y\nviaja accidentalmente al pasado desde 1985,\nsu época, a 1955, la época en que sus padres se conocieron.\nFinalmente, cambia los hechos específicos de la línea original\nde tiempo en que sus padres se conocieron y enamoraron.\nDebido a esto, Marty debe recurrir a la ayuda del Dr. Emmett Brown\npara reunir a sus padres de nuevo, asegurando\nsu propia existencia y la de sus hermanos.";
cx = 550;
cy = 400;  
radio = 50;
opacidad = 255; 
titulo="Volver al Futuro";
  size(640,480);
  img1 = loadImage("inicio.jpg");
  img2 = loadImage("DocAndMarty.jpg");
  img3 = loadImage("auto.jpg");
  img4 = loadImage("time.jpg");
  textSize(tamañoTexto);
  textAlign(LEFT, TOP);
  fill(255);
  textSize(tamañoTexto);
  textAlign(CENTER, TOP);
  fill(255);
  totalAltura = (6 * (tamañoTexto + 10)); 
  textSize(tam);
  x = width;
  textAlign(CENTER, CENTER); 
  x = width;  
  detenido = false;
  y=450;
}

void draw() {
  background(255);
  float textSizeVariation = tamañoTexto;  // Tamaño del texto inicial
  // Escribe cada línea de texto
  textSize(textSizeVariation);
  
  //IMAGEN1
  if (frameCount % frameCambio == 0) {
    imagenActual = (imagenActual + 1) % 4;
  }
  if (imagenActual == 0) {
    image(img1, 0, 0, 640,480);
    fill(255);
    textSize(32);
    textAlign(LEFT, CENTER);
    textFont(createFont("SansSerif",tamañoTexto));
    fill(255, 255, 255, opacidad);
  text(titulo, 220, 360);

  if (opacidad > 0) {
    opacidad -= 2;
  }
    
  //IMAGEN2
  } else if (imagenActual == 1) {
    image(img2, 0, 0, 640,480);
    textAlign(CENTER, CENTER);
    opacidad=255;
    fill(255, 255, 255, opacidad);
    textFont(createFont("Serif",tamañoTexto));
  float yPos = y;  // La posición Y empieza en la parte inferior
  text("Director: Robert Zemeckis", width / 2, yPos);
  yPos += tamañoTexto + 10; 
  text("Producción: Neil Canton, Bob Gale", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Guion: Robert Zemeckis, Bob Gale", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Música: Alan Silvestri", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Vestuario: Deborah Lynn Scott", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Protagonistas:Michael J. Fox,Christopher Lloyd", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Lea Thompson,Thomas F. Wilson", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Crispin Glover,Marc McClure ", width / 2, yPos);
  yPos += tamañoTexto + 10;
  text("Productora Universal Pictures", width / 2, yPos);
  
  y -= velocidad;
  if (y < -totalAltura) {
    y = 300;
  }
  //IMAGEN3 
  } else if (imagenActual == 2) {
    image(img3, 0, 0, 640,480);
  fill(255);
  textAlign(LEFT, CENTER);
  textSize(tam);
  textFont(createFont("SansSerif",tam));
  // Dibuja el texto en la posición x
  fill(255);
  text(texto, x, height / 2); 
  
  if (!detenido) {
    x -= vel;
  }
  if (x <= 30) {
    detenido = true;  // Detener el movimiento
  }
  //IMAGEN4
  } else {
    image(img4, 0, 0, 640,480);
  // Dibuja el botón circular
  fill(255, 202, 20);
  ellipse(cx, cy, radio * 2, radio * 2);
  
  // Texto dentro del botón
  fill(0);
  textAlign(CENTER, CENTER);
  textSize(tam);
  text("Reiniciar",cx,cy);
  }
  
}

// Detectar clic del mouse
void mousePressed() {
  float distancia = dist(mouseX, mouseY, cx, cy);
  
  if (distancia <= radio) {
    reiniciar();  // Llamamos a una función que simula reiniciar el programa
  }
}

// Función para "reiniciar" el programa
void reiniciar() {
  println("Reiniciando...");
  setup();  // Esto reinicia  el estado inicial del programa
}
  










  
  
