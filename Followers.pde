class Followers
{
  PVector location;
  PVector velocity;
  PVector acceleration;
  float maxspeed;
  PImage burger;
  PImage salad;

  Followers()
  {
    location = new PVector(random(0, width), random(0, height));
    velocity = new PVector(0, 0);
    maxspeed = 7;
    burger = loadImage("burger.png");
    burger.resize(80, 80);
    salad = loadImage("salad.png");
    salad.resize(80, 80);
  }

  void update()
  {
    PVector mouse = new PVector(mouseX, mouseY);
    PVector direction = PVector.sub(mouse, location);
    if (key == 'r')
    {
      direction = PVector.sub(location, mouse);
    }
    direction.normalize();
    direction.mult(0.25);
    acceleration = direction;
    velocity.add(acceleration);
    velocity.limit(maxspeed);
    location.add(velocity);
  }

  void Make()
  {
    image(salad, location.x, location.y);
    if (key == 'r')
    {
      salad = burger;
    }
  }

  void ReMake()
  {
    if (location.x > width) {
      location.x = 0;
    } else if (location.x < 0) {
      location.x = width;
    }

    if (location.y > height) {
      location.y = 0;
    } else if (location.y < 0) {
      location.y = height;
    }
  }
}