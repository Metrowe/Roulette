class BetNode
{
    PVector pos;
    PVector size;
    IntList values;
    int payout;
    int current;
    
    BetNode(PVector pos, PVector size, IntList values, int payout)
    {
        this.pos = pos;
        this.size = size;
        this.values = values;
        this.payout = payout;
        this.current = 0;
    }//end BetNode constructor
    
    void render()
    {
        noFill();
        stroke(255);
        strokeWeight(scaler*0.001);
        
        rect(pos.x - size.x/2,pos.y - size.y/2,  size.x,size.y);
    }//end render
    
    Boolean ifClicked(PVector click,int chips)
    {
        if(  inRange(click.x,size.x,pos.x)  &&  inRange(click.y,size.y,pos.y)  )
        {
            //cash - chips
            return true;
        }//end if
        
        return false;   
    }//end ifClicked
}//end BetNode