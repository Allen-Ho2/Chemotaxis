Bacteria[]bob= new Bacteria[1000];
 //declare bacteria variables here   
 void setup()   
 {     
   //initialize bacteria variables here 
   size(400,400);
   for(int i=0; i<bob.length;i++){
     bob[i]= new Bacteria();}
   }   
 
 void draw()   
 {    
   background (73,172,45);
  for(int i=0 ;i<bob.length;i++){
    bob[i].show();
    bob[i].walk();
  }
   //move and show the bacteria   

 }
 class Bacteria    
 {     
   //lots of java!
   
   int myX=(int)(Math.random()*300);
   int myY=(int)(Math.random()*300);
   double mySpeed;
   int mySize;
   int myColor;
   Bacteria(){
     myX = (int)(Math.random()*200)+100;
     myY = (int)(Math.random()*200)+100;
     mySpeed=mySize/10.0;
     mySize= (int)(Math.random()*8)+1;
     myColor = color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
 }
 void show(){
   fill(myColor,myColor, myColor);
   noStroke();
   ellipse(myX,myY,mySize,mySize);
 }
 void walk(){
   if(mouseX>myX)
   myX = myX + (int)(Math.random()*7)-1;
   if (mouseX<myX)
   myX+=(int)(Math.random()*10)-5;
   if(mouseY>myY)
   myY = myY + (int)(Math.random()*7)-1;
   if (mouseY<myY)
   myY+=(int)(Math.random()*10)-10;
 }
 }
