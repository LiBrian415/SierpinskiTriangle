public void setup()
{
size(600,600);
}
public void draw()
{
background(255,255,255);
 fill(0,0,0);
 sierpinski(50,550,500);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
 if(len > 10)
 {
 	sierpinski(x, y , len/2);
 	sierpinski(x + len/2, y, len/2);
 	sierpinski(x + len/4, y - len/2, len/2);
 }
 else
 {
 	triangle(x,y,x+len,y,x+len/2,y-len);
 }
}