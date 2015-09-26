// A program that shows a ball bouncing around the screen
int x, y;
int speed = 2; //speed of the ball. Increase for faster ball movement.
int xspeed = speed;
int yspeed = speed;
int radius = 20;
void setup()
{
  size(500, 500); //Determines the size of the screen
  stroke(255); //Draws the ball with a white outline
  fill(255); //Makes the ball white
  
  x = radius;
  y = height / 2;
}



void draw()
{
  background(0);
  ellipse(x, y, 40, 40);

  x += xspeed;
  y += yspeed;
  
  if(x < radius)      //Makes the face go from top to bottom. Left panel.
    {
      xspeed = speed;
      yspeed = speed;
      x = radius;
    }
           
    if(x > width - radius) //Right panel
      {
        xspeed = -speed;
        yspeed = -speed;
        x = width - radius;
      }
    
    if(y < radius)
      {
        xspeed = -speed;
        yspeed = speed;
        y = radius;
      }
    
    if(y > height - radius) //when the ball hits the bottom panel
      {
        xspeed = speed;
        yspeed = -speed;
        y = height - radius;
      }
}