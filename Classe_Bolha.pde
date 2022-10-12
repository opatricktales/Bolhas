class Bolha
{
  float x, y, tamanho, velocidade;
  color cor;

  Bolha(float diametro) 
  {
    x = random (width);
    cor =color( 20, 20, (int)random(125, 256));
    y = height;
    tamanho = diametro;
    velocidade = random (0.1,3);
  }
  
  void subir() 
  {
    y = y - velocidade;
    x = x + random (-2,2);
  }
  
  void exibir ()
  {
    stroke (0);
    fill (cor);
    ellipse (x,y,tamanho,tamanho);
  }
  
  void topo ()
  {
    if (y < tamanho/2)
    {
      y = (height + tamanho);
    }
  }
}
