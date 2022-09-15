void setup() {
  size(500, 500);  //feel free to change the size
  //noLoop(); //stops the draw() function from repeating
  frameRate(60);
}

void draw() {
  boolean shift = true;
  for(int scaleY = 500; scaleY > -21; scaleY -= 10){
    for(int scaleX = 500; scaleX > -36; scaleX -= 35){
    if(shift == true)
      scale(scaleX - 20,scaleY,scaleX-10,scaleY+30,scaleX+10,scaleY+30,scaleX+20,scaleY,((int)(Math.random() * 256)),((int)(Math.random() * 256)),((int)(Math.random() * 256)),255);
    else
      scale(scaleX,scaleY,scaleX+10,scaleY+30,scaleX+30,scaleY+30,scaleX+40,scaleY,((int)(Math.random() * 256)),((int)(Math.random() * 256)),((int)(Math.random() * 256)),255);
    }
    if(shift == true)
      shift=false;
    else
      shift=true;
  }
}

void scale(int x, int y, int x2,int y2,int x3,int y3,int x4 ,int y4,int r, int g, int b, int a) {
  fill(r,g,b,a);
  bezier(x, y, x2, y2, x3, y3, x4, y4);
}
