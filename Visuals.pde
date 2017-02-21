void clearStroke()
{
  strokeWeight(0);
  noStroke();
}//end clearStroke

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
    
    //int x, y;
    //x = y = 0;
    
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
        noFill();
        block = createShape(RECT, boardFix.x+grid.x*(2+(2*i)), boardFix.y+grid.y*4, grid.x*2, grid.y);
        board.addChild(block);
        println("i = " + i + " ");
    }//end for

    
    /*
    PShape port = createShape(TRIANGLE, -grid/2,0,    -grid/2,-grid/2,   -grid/4,-grid/4);
    port.setFill(0);
    port.setStrokeWeight(0);
    shape.addChild(port);
    
    port = createShape(TRIANGLE, -grid/2,0,    -grid/2,grid/2,   -grid/4,grid/4);
    port.setFill(0);
    port.setStrokeWeight(0);
    shape.addChild(port);
    
    port = createShape(TRIANGLE, grid/2,0,    grid/2,-grid/2,   grid/4,-grid/4);
    port.setFill(0);
    port.setStrokeWeight(0);
    shape.addChild(port);
    
    port = createShape(TRIANGLE, grid/2,0,    grid/2,grid/2,   grid/4,grid/4);
    port.setFill(0);
    port.setStrokeWeight(0);
    shape.addChild(port);
    */
    
    println("test");
    println(boardFix.x);
    println(boardFix.y);
    
}//end buildBoard

void textBoard()
{
    fill(255);
    textSize(boardScale * 0.001);
    textAlign(CENTER,CENTER);
    //text("example",pos.x,pos.y);
    //pushMatrix();
    
    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        pushMatrix();
        translate(boardFix.x+grid.x*(x+2)+grid.x/2, boardFix.y+grid.y*(2-y)+grid.y/2);
        //rotate(TWO_PI * 0.25);
        text("test",0,0);
        
        popMatrix();
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for
    
    //popMatrix();
}//end textBoard