String [] rutasup={"1.1.png","2.1.png","3.1.png"};
String [] rutamed={"1.2.png","2.2.png","3.2.png"};
String [] rutainf={"1.3.png","2.3.png","3.3.png"};

PImage [] imgsup=new PImage [rutasup.length];
PImage [] imgmed=new PImage [rutamed.length];
PImage [] imginf=new PImage [rutainf.length];

int rn;
int fillVal=255;
void setup () {
  size (600,263);
}

void draw () {
  frameRate (5);
  background (fillVal);
  for (int i=0; i<rutasup.length; i=i+1){
    imgsup[i]=loadImage(rutasup[i]);
  }
  for (int i=0; i<rutamed.length; i=i+1){
    imgmed[i]=loadImage(rutamed[i]);
  }
  for (int i=0; i<rutainf.length; i=i+1){
    imginf[i]=loadImage(rutainf[i]);
  }
  
  rn=int(random(rutasup.length));
  println(rn);
  image(imgsup[rn],0,0);
  
  rn=int(random(rutamed.length));
  println(rn);
  image(imgmed[rn],0,0);
  
  rn=int(random(rutainf.length));
  println(rn);
  image(imginf[rn],0,0);

   noLoop();
}

void keyPressed(){
  if (key==ENTER) {
    saveFrame("n-###.jpg");
    println("guarda");
  }
  if (key == CODED) {
    if (keyCode == DOWN) {
       noLoop();
       println("para");
    } else if(keyCode==UP) {
      loop();
      println("gogogo");
    }
  }
}
