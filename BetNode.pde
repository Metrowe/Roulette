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
            fill(0,0,255);
            ellipse(pos.x,pos.y,  boardScale*0.03, boardScale*0.03);
            fill(255);
            textSize(boardScale * 0.02);
            textAlign(CENTER,CENTER);
            text(current,pos.x,pos.y);
        }//end if
        
    }//end render
    
    boolean hover()
    {
        if(  inRange(mouseX,size.x,pos.x)  &&  inRange(mouseY,size.y,pos.y)  )
        {
            noFill();
            stroke(0,255,0);
            strokeWeight(boardScale*0.003);
            
            rect(pos.x - size.x/2,pos.y - size.y/2,  size.x,size.y);
            
            return true;
        }//end if
        
        return false;
    }//end hover
    
    //Boolean ifClicked(PVector click,int chips)
    Boolean ifClicked(int chips)
    {
        //if(  inRange(click.x,size.x,pos.x)  &&  inRange(click.y,size.y,pos.y)  )
        if(  inRange(mouseX,size.x,pos.x)  &&  inRange(mouseY,size.y,pos.y)  && cash >= chips)
        {
            winnings -= chips;
            placeBets(payout,chips,values);
            current += chips;
            cash -= chips;
            return true;
        }//end if
        
        return false;   
    }//end ifClicked
}//end BetNode