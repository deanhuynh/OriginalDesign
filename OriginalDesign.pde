int pigMove = 100;
boolean pigMoved = false;

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
	if(pigMove > -50 && pigMoved == false)
	{
		pigMove--;
	}
	else if(pigMove < 200)
	{
		pigMoved = true;
		pigMove++;	
	}
	else
	{
		pigMoved = false;
	}
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
	ellipse(353 + pigMove,339,300,70);
	triangle(100,330,100,300,130,300);
}

void pig()
{
	//pig
	fill(255, 176, 176);
	rect(269 + pigMove,196,213,91,100);
	triangle(337 + pigMove,285,364 + pigMove,287,363 + pigMove,329);
	rect(362 + pigMove,324,-10,5);
	beginShape();
	    vertex(300 + pigMove,210);
	    vertex(260 + pigMove,210);
	    vertex(241 + pigMove,263);
	    vertex(214 + pigMove,268);
	    vertex(223 + pigMove,280);
	    vertex(300 + pigMove,286);
	endShape();
	triangle(260 + pigMove,210,261 + pigMove,185,280 + pigMove,210);
}

void hat(){
	//hat
	fill(0, 0, 0);
	rotate(45*TWO_PI/360);
	rect(335 + pigMove/sqrt(2),-60 - pigMove/sqrt(2),50,10,14);
	quad(388 + pigMove/sqrt(2),-96 - pigMove/sqrt(2),328 + pigMove/sqrt(2),-97 - pigMove/sqrt(2),344 + pigMove/sqrt(2),-52 - pigMove/sqrt(2),380 + pigMove/sqrt(2),-59 - pigMove/sqrt(2));
	rotate(-45*TWO_PI/360);
}
	//stand
void stand()
{
	rotate(30*TWO_PI/360);
	fill(100);
	rect(52,17,50,20,10);
	fill(0, 0, 0);
	rect(77,17,5,20);
	rotate(-30*TWO_PI/360);
	fill(139,69,19);
	//rotate(-30);
	rect(0,100,100,230);
	fill(0, 0, 0);
	rect(49,68,5,15);
	triangle(30,100,70,100,50,80);
	rotate(-30*TWO_PI/360);
	fill(139,69,19);
	rect(17,131,50,10);
}




