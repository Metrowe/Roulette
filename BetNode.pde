class BetNode
{
    PVector pos;
    PVector size;
    IntList values;
    int payout;
    
    BetNode(PVector pos, PVector size, IntList values, int payout)
    {
        this.pos = pos;
        this.size = size;
        this.values = values;
        this.payout = payout;
    }//end BetNode constructor
    
    void render()
    {
        noFill();
        stroke(255);
        strokeWeight(scaler*0.001);
        
        rect(pos.x-size.x,pos.y-size.y,  size.x,size.y);
    }//end render
    
    Boolean ifClicked(PVector click,int )
    {
        
      
      
      
      
      
      
      
      
      
      
    }//end ifClicked
}//end BetNode