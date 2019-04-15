class Snowflake

{

  float Height;
  float Width;
  color SnowColor;
  float X;
  float Y;
  float Speed;
  float Direction;
  float Direction2;



  Snowflake ()

  {
    Height = 10;
    Width = 10;
    SnowColor = color (#CFF1FC);
    X = random (0, 800);
    Y = random (0, 800);
    Speed = 2;
    Direction = 0;
    Direction2 = 0;
  }

  Snowflake (float _X, float _Y, float _Width, float _Height)

  {

    X = _X;
    Y = _Y;
    Height = _Height;
    Width = _Width;

    SnowColor = color (#CFF1FC);
    Speed = 2;
  }

  void Fall ()

  {

    Y += Speed;
    X += Direction;

    if (Y>height || X>width)

    {

      Y = random (800);
      X = random (800);
    }
  }

  void Draw ()


  {

    fill (#39C3F7);
    ellipse (X, Y, 15, 15);
  }


  void Update ()

  {

    fill (SnowColor);
    ellipse (X, Y, Height, Width);



    if (X > person.X)
    {
      if (X < person.X + person.Weight)

      {
        if (Y > person.Y)

        {
          if (Y < person.Y+ person.Height)

          {
            Y = random (800);
            X = random (800);
          }
        }
      }
    }
  }
}
