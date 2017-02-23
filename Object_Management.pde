//void createBLANK()


void createStraights()
{
    
}//end createSingles

void createBetNodes()
{
    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        IntList tempList = new IntList();
        tempList.append(i);
        
        BetNode tempNode = new BetNode(  new PVector(  boardFix.x+grid.x*(x+2)+grid.x/2,boardFix.y+grid.y*(2-y)+grid.y/2  ),  new PVector(  grid.x,grid.y  ),  tempList, 35);
        nodes.add(tempNode);
        
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for
}//end createNodes

//void refreshBLANK()
void resetBets()
{
    for(int i = 0; i < bets.length; i++)
    {
        bets[i].clear();
    }//end for
}//end resetBets