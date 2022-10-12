Bolha [] bolhas = new Bolha [100];

color fundo;
float b = 255, y = -20;
boolean ativar = false;
int total = 20;

void setup()
{
  size(720, 360);
  smooth ();

  for (int x = 0; x < bolhas.length; x++)
  {
    bolhas[x] = new Bolha(random(0, 64));
  }
}

void draw()
{
  if (ativar != true)
  {
    for (int x = 0; x <= height; x = x + 20)
    {
      fundo = color(20, 20, b);
      rect(0, y, width, 20);
      fill (fundo);
      noStroke ();
      b = b - 10;
      y = y + 20;
    }
  } 
  else
  {
    background (20, 20, 255);

    for (int x = 0; x < total; x++)
    {
      bolhas[x].subir();
      bolhas[x].exibir();
      bolhas[x].topo();
    }
  }
}

void mousePressed ()
{
  total = total + 1;
  ativar = true;
}

void keyPressed ()
{
  total = total -1;
}
