Person person = new Person ();

float snowXs = 0;
float snowYs = 0;
int snow;
PImage snowflakecursor;

int [] Xs = new int [40];
int [] Ys = new int [40];
int [] Speeds = new int [40];

int personY = 300;
int personX = 500;


Snowflake [] snowStorm = new Snowflake [100];


void setup ()

{

  size (800, 800);


  int i = 0;
  while (i<100)

  {
    snowStorm [i] = new Snowflake ();
    i++;
  }
  

  
}



void draw ()

{

  background (#90D3FF);
  person.Update ();

  int i = 0;
  while (i<100)

  {
    snowStorm [i].Fall();
    snowStorm [i].Update();
    i++;
  }


  snowflakecursor = loadImage ("snowflakecursor.png");
  snowflakecursor.resize (40, 30);

  if (mouseX < 100) 
  {
    cursor(snowflakecursor, 0, 0);
  }

  while (i < 40)
  {

    snowYs= snowYs + 2;
    Ys [i] = Ys [i] + Speeds [i];

    if (Ys [i]>800)
    {
      Ys[i]=0;
    }

    if (Ys[i]>personY)
    {
      snowStorm [i].Height=0;
      snowStorm [i].Width=0;
    }
  }
}

void mouseReleased ()

{
  int i = 0;
  while (i<100)
  {
    snowStorm [i].Direction += 1; 
    i++;
  }
}


void keyPressed ()


{
 if (key=='d')
  {
    personX= personX+10;
  }
  if (key=='a')
  
  {
    personX = personX -10;
  }
  
  if (key == 's')
  
  {
    personY = personY +10;
  }
  
  if (key=='w')
  
  {
    personY= personY-10;
  }
  
}
