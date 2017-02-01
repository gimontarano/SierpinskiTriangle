public void setup()
{
	size(800, 800);
	background(0);
}
public void draw()
{
 	sierpinski(50, 750, 700);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		fill(255);
		triangle(x, y, x+len, y, x+(len/2), y-len);
	}
	else
	{
		
		//bottom left
		fill(255);
		triangle(x, y, x+len/2, y, x+len/4, y-len/2);
		//bottom right
		fill(255);
		triangle(x+len/2, y, x+len, y, x+3*len/4, y-len/2);
		//top 
		fill(255);
		triangle(x+len/4, y-len/2, x+3*len/4, y-len/2, x+len/2, y-len);
		//middle
		fill(0);
		triangle(x+len/2, y, x+len/4, y-len/2, x+3*len/4, y-len/2);
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);

	}
}