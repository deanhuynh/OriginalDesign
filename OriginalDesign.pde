void setup()
{
  size(400,400);
}
void draw()
{
	ground();
	pig();
	hat();
	stand();
}

void ground()
{
  background(92, 0, 0);
	noStroke();
	//ground
	fill(150);
	rect(0,300,400,100);
	//shadows
	fill(0, 0, 0,100);
	ellipse(353,339,300,70);
	triangle(100,330,100,300,130,300);
}

void pig()
{
	//pig
	fill(255, 176, 176);
	rect(269,196,213,91,100);
	triangle(337,285,364,287,363,329);
	rect(362,324,-10,5);
	beginShape();
	    vertex(300,210);
	    vertex(260,210);
	    vertex(241,263);
	    vertex(214,268);
	    vertex(223,280);
	    vertex(300,286);
	endShape();
	triangle(260,210,261,185,280,210);
}

void hat(){
	//hat
	fill(0, 0, 0);
	rotate(30);
	rect(331,33,50,10,14);
	quad(387,-18,324,-23,341,37,371,38);
}
	//stand
void stand()
{

	fill(100);
	rect(52,17,50,20,10);
	fill(0, 0, 0);
	rect(77,17,5,20);
	fill(139,69,19);
	rotate(-30);
	rect(0,100,100,230);
	fill(0, 0, 0);
	rect(49,68,5,15);
	triangle(30,100,70,100,50,80);
	rotate(-30);
	fill(139,69,19);
	rect(17,131,50,10);
}




