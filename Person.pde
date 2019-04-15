class Person

{

  float Height;
  float Weight;
  int Age;
  color hairColor;
  color eyeColor;
  float hairLength;
  color skinColor;
  color Shirt;
  color Pants;
  color Scarf;
  float X;
  float Y;


  Person()


  {

    Height = 155;
    Weight = 55;
    Age = 15;
    hairColor = color (50, 95, 250);
    hairLength = 30;
    eyeColor = color (10, 13, 98);
    skinColor = color (157, 205, 255);
    Shirt = color (13,2,152);
    Pants = color (144,82,4);
    Scarf = color (245,17,17);
    X = 400;
    Y = 400;
  }

  void Update ()

  {

    fill (skinColor);
    rect (X, Y, Weight, Height);

    fill (hairColor);
    rect (X, Y, Weight, hairLength);
    
    fill (Shirt);
    rect (X, Y+ 70, Weight, Height-100 );
    
    fill (Pants);
    rect (X, Y+160, Weight, Height-200);

    fill (eyeColor);
    ellipse (X+ Weight/4, Y+40, 10, 10);
    ellipse (X+ (Weight/4)*3, Y+40, 10, 10);
    
    fill (Scarf);
    rect (X, Y + 90, Weight + 50, Height -180);
  }
}
