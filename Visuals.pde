void viewBetNodes()
{
    for (int i = nodes.size() - 1; i > -1; i--) 
    {
        BetNode tempNode = nodes.get(i);
      
        
        tempNode.render();
    }//end for
    
    for (int i = nodes.size() - 1; i > -1; i--) 
    {
        BetNode tempNode = nodes.get(i);
        
        if(tempNode.hover())
        {
            break;
        }//end if
    }//end for
    
}//end 

void displayButtons()
{
    for (int i = buttons.size() - 1; i > -1; i--) 
    {
        Button local = buttons.get(i);
      
        
        local.render();
    }//end for
}//end displayButtons

void displayInfo()
{
    fill(255,0,255);
    textSize(scaler * 0.03);
    textAlign(LEFT,TOP);
    text("cash = " + cash,width*0,height*0);
    text("testi = " + testi,width*0,height*0.05);
    if(previous > -1)
    {
        text("previous = " + previous,width*0,height*0.1);
    }//end if
}//end displayInfo

void clearStroke()
{
  strokeWeight(0);
  noStroke();
}//end clearStroke



void textBoard()
{
    fill(255);
    textSize(boardScale * 0.02);
    textAlign(CENTER,CENTER);


    pushMatrix();
    translate(boardFix.x+grid.x*1.5, boardFix.y+grid.y*1.5);
    rotate(TWO_PI * 0.75);
    text("0",0,0);
    popMatrix();

    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        pushMatrix();
        translate(boardFix.x+grid.x*(x+2)+grid.x/2, boardFix.y+grid.y*(2-y)+grid.y/2);
        rotate(TWO_PI * 0.75);
        text(i,0,0);
        
        popMatrix();
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for
    
    for(int i = 0; i < 3; i++)
    {    
        
        pushMatrix();
        translate(boardFix.x+grid.x*14.5, boardFix.y+grid.y*(0.5+i));
        rotate(TWO_PI * 0.75);
        
        text("2 to 1",0,0);
        
        popMatrix();
    }//end for
    
    for(int i = 0; i < 3; i++)
    {
        pushMatrix();
        translate(boardFix.x+grid.x*(4+(4*i)), boardFix.y+grid.y*3.5);

        if(i == 0)
        {
            text("1st DOZEN",0,0);
        }//end if
        else if(i == 1)
        {
            text("2nd DOZEN",0,0);
        }//end else if
        else
        {
            text("3rd DOZEN",0,0);
        }//end else
        
        popMatrix();  
    }//end for
    
    for(int i = 0; i < 6; i++)
    {
        pushMatrix();
        translate(boardFix.x+grid.x*(3+(2*i)), boardFix.y+grid.y*4.5);
      
        if(i == 0)
        {
            text("1-18",0,0);
        }//end if
        else if(i == 1)
        {
            text("Even",0,0);
            i += 2;
        }//end else if
        else if(i == 4)
        {
             text("ODD",0,0);
        }//end else if
        else
        {
            text("19-36",0,0);
        }
        
        popMatrix();
    }//end for
    
    /*
    pushMatrix();
    translate(boardFix.x+grid.x*(x+2)+grid.x/2, boardFix.y+grid.y*(2-y)+grid.y/2);
    rotate(TWO_PI * 0.75);
    text(i,0,0);
    */
    
    
}//end textBoard

void buildBoard()
{
    board = createShape(GROUP);
    clearStroke();
    fill(0,150,0);
    PShape block = createShape(RECT, boardFix.x, boardFix.y, grid.x * 15, grid.y*5);
    board.addChild(block);

    stroke(255);
    strokeWeight(boardScale * 0.004);
    
    block = createShape(RECT, boardFix.x+grid.x*1, boardFix.y, grid.x, grid.y*3);
    board.addChild(block);
    
    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        fill(  numbers[i]  );
        block = createShape(RECT, boardFix.x+grid.x*(x+2), boardFix.y+grid.y*(2-y), grid.x, grid.y);
        board.addChild(block);
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for
    
    for(int i = 0; i < 3; i++)
    {
        noFill();
        block = createShape(RECT, boardFix.x+grid.x*14, boardFix.y+grid.y*i, grid.x, grid.y);
        board.addChild(block);
    }//end for
    
    for(int i = 0; i < 3; i++)
    {
        noFill();
        block = createShape(RECT, boardFix.x+grid.x*(2+(4*i)), boardFix.y+grid.y*3, grid.x*4, grid.y);
        board.addChild(block);
    }//end for
    
    for(int i = 0; i < 6; i++)
    {
        if(i == 2)
        {
            fill(255,0,0);
        }//end if
        else if(i == 3)
        {
            fill(0);
        }//end else if
        else
        {
            noFill();
        }//end else
            
        block = createShape(RECT, boardFix.x+grid.x*(2+(2*i)), boardFix.y+grid.y*4, grid.x*2, grid.y);
        board.addChild(block);
    }//end for
}//end buildBoard