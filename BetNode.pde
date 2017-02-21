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
        if(current > 0)
        {  
            clearStroke();
            fill(0x0000FF);
            ellipse(pos.x,pos.y,  boardScale*0.01, boardScale*0.01);
            fill(0x000000);
            textSize(boardScale * 0.001);
            textAlign(CENTER,CENTER);
            text(current,pos.x,pos.y);
        }//end if
        
    }//end render
    
    void hover()
    {
        if(  inRange(mouseX,size.x,pos.x)  &&  inRange(mouseY,size.y,pos.y)  )
        {
            noFill();
            stroke(255);
            strokeWeight(boardScale*0.001);
            
            rect(pos.x - size.x/2,pos.y - size.y/2,  size.x,size.y);
        }//end if
    }//end hover
    
    Boolean ifClicked(PVector click,int chips)
    {
        if(  inRange(click.x,size.x,pos.x)  &&  inRange(click.y,size.y,pos.y)  )
        {
            cash -= chips;
            return true;
        }//end if
        
        return false;   
    }//end ifClicked
}//end BetNode