class Button
{
    String label;
    PVector pos;
    PVector size;
    color c;
    color t;
    
    Button(String label, PVector pos, PVector size,color c)
    {
      this.label = label;
      this.pos = pos;
      this.size = size;
      this.c = c;
    }//end FreeModeButton
    
    void hover()
    {
      if(mouseX > pos.x && mouseX < pos.x+size.x && mouseY > pos.y && mouseY < pos.y+size.y)
      {
        fill(c);
        t = color(0);
      }
      else
      {
        noFill();
        t = c;
      }//end else
    }//end hover
  
    void render()
    {
      stroke(c);
      strokeWeight(scaler * 0.0025);
      hover();
      rect(pos.x,pos.y,  size.x,size.y);
      textra();
    }//end render
    
    void textra()
    {
      fill(t);
      textAlign(CENTER,CENTER);
      textSize(scaler * 0.025);
      text(label,  pos.x+size.x*0.5, pos.y+size.y*0.5);
    }//end textra
    
    void ifClicked()
    {
    
    }//end ifClicked
}//end class Button

class SpinButton extends Button 
{
  
    SpinButton(String label, PVector pos, PVector size,color c)
    {
        super(label,pos,size,c);
    }//end FreeModeButton
    
    void ifClicked()
    {
        if(mouseX > pos.x && mouseX < pos.x+size.x && mouseY > pos.y && mouseY < pos.y+size.y)
        {
            previous = int(  random(0,36)  );
            checkWin(previous);
        }//end if
    }//end ifClicked
}//end class VersusButton