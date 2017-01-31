public void setup()
{
	size(400, 400);
}
public void draw()
{
 	sierpinski(50, 350, 300);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else
	{
		triangle(x, y, x+(len/2), y, x+(len/4), y-(len/2));
		triangle(x+(len/2), y, x+len, y, x+(3*len/4), y-(len/2));
		triangle(x+(len/4), y-(len/2), x, y, x+(len/4), y-(len/2));
	}
}