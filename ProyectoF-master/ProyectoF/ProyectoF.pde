//Bar bar;
Node start;
Node fin;
Node apoyoin;

Button newBar;
Button newArm;
Button setAngle;
Button setLength;
Button fijo;
Button rodillo;

int mode;
int x;
int y;
int z,w;

Boolean P;
Boolean Q;
Boolean M;

ArrayList<Bar> barras=new ArrayList<Bar>();
ArrayList<Apoyo> apoy =new ArrayList<Apoyo>();
//ArrayList<Node> nodos=new ArrayList<Node>();

void setup(){
  size(1200,900);
  mode=0;
  P=false;
  Q=false;
  M=false;
    
  newBar=new Button("xd.png", new PVector(170,600));
  newArm=new Button("newarm.png", new PVector(1100,600));
  setAngle= new Button("setAngle.png",new PVector(360,600));
  setLength= new Button("setLength.png",new PVector(550,600));
  fijo= new Button("Fijo.png", new PVector(1100,150));
  rodillo=new Button("Rodillo.png",new PVector(1100,400));
}

void draw(){
dibujar();
}

void mousePressed(){
  if (mode==0&&newBar.click(mouseX,mouseY)){
    mode=1;
  }  
  if (mode==0&&fijo.click(mouseX,mouseY)){
  mode=2;
  }
  if (mode==0&&rodillo.click(mouseX,mouseY)){
  mode=3;
  
  
  }
}


void mouseReleased(){
  if(mode==1&&P){
    Q=true;
  }
}

boolean nose(int i){
  return barras.get(i).origin().click()||barras.get(i).end().click();
}