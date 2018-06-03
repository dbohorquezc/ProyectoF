class Fijo extends Apoyo{
  

  Fijo(Node temp){
  
  super(temp);
  }
  @Override
  void display() {
    pushStyle();
    rectMode(CENTER);
    strokeWeight(5);
    stroke(0, 0, 0);
    fill(120, 200, 0);
       
    triangle(pos.x()-30, pos.y()+30,pos.x(), pos.y()-20 ,pos.x()+30, pos.y()+30);
    fill(100,100,100);
    rect(pos.x(), pos.y()+40,100,20);
    
    
    
    popStyle();
    
  }





}