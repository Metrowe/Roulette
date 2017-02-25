//void createBLANK()

void createBetNodes()
{
    IntList tempListA;
    IntList tempListB;
    IntList tempListC;
    
    //Zero
    tempListA = new IntList();
    tempListA.append(0);
    
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*1.5,boardFix.y+grid.y*1.5  ),  new PVector(  grid.x,grid.y*3  ),  tempListA, 35)  );

    //Straights
    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        tempListA = new IntList();
        tempListA.append(i);
        
        nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*(x+2)+grid.x/2,boardFix.y+grid.y*(2-y)+grid.y/2  ),  new PVector(  grid.x,grid.y  ),  tempListA, 35)  );
        
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for

    //2 to 1
    tempListA = new IntList();
    tempListB = new IntList();
    tempListC = new IntList();
    
    for(int i = 1; i < numbers.length; i++)
    {
        if(  i % 3 == 0  )
        {
            tempListA.append(i);
        }//end if
        else if(  i % 3 == 2  )
        {
            tempListB.append(i);
        }//end else if
        else
        {
            tempListC.append(i);
        }//end else
    }//end for
    
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*14.5,boardFix.y+grid.y*0.5  ),  new PVector(  grid.x,grid.y  ),  tempListA, 2)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*14.5,boardFix.y+grid.y*1.5  ),  new PVector(  grid.x,grid.y  ),  tempListB, 2)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*14.5,boardFix.y+grid.y*2.5  ),  new PVector(  grid.x,grid.y  ),  tempListC, 2)      );
    
    //Dozens
    tempListA = new IntList();
    tempListB = new IntList();
    tempListC = new IntList();
    
    for(int i = 1; i < numbers.length; i++)
    {
        if(  i < 13  )
        {
            tempListA.append(i);
        }//end if
        else if(  i > 13 && i < 27)
        {
            tempListB.append(i);
        }//end else if
        else
        {
            tempListC.append(i);
        }//end else
    }//end for
    
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*4,boardFix.y+grid.y*3.5  ),  new PVector(  grid.x*4,grid.y  ),  tempListA, 2)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*8,boardFix.y+grid.y*3.5  ),  new PVector(  grid.x*4,grid.y  ),  tempListB, 2)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*12,boardFix.y+grid.y*3.5  ),  new PVector(  grid.x*4,grid.y  ),  tempListC, 2)      );
    
    //Lows-highs
    tempListA = new IntList();
    tempListB = new IntList();
    
    for(int i = 1; i < numbers.length; i++)
    {
        if(  i < 19  )
        {
            tempListA.append(i);
        }//end if
        else 
        {
            tempListB.append(i);
        }//end else 
    }//end for
    
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*3,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListA, 1)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*13,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListB, 1)      );
    
    //Evens-odds
    tempListA = new IntList();
    tempListB = new IntList();
    
    for(int i = 1; i < numbers.length; i++)
    {
        if(  i % 2 == 0  )
        {
            tempListA.append(i);
        }//end if
        else 
        {
            tempListB.append(i);
        }//end else 
    }//end for
    
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*5,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListA, 1)      );
    nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*11,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListB, 1)      );
    
    //Colours
    tempListA = new IntList();
    tempListB = new IntList();
    for(int i = 1; i < numbers.length; i++)
    {
        if(numbers[i] == color(255,0,0) )
        {
            tempListA.append(i);
        }//end if
        else
        {
            tempListB.append(i);
        }//end else
    }//end for

    nodes.add(      new BetNode(  new PVector(  boardFix.x+grid.x*7,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListA, 1)      );
    nodes.add(      new BetNode(  new PVector(  boardFix.x+grid.x*9,boardFix.y+grid.y*4.5  ),  new PVector(  grid.x*2,grid.y  ),  tempListB, 1)      );


    /////////////////////////////////////////////////////////////////////////////////////////
    
    /*
    //Split (Horizontal)
    for(int i = 1, x = 0,y = 0; i < numbers.length; i++)
    {
        tempListA = new IntList();
        tempListA.append(i);
        
        nodes.add(  new BetNode(  new PVector(  boardFix.x+grid.x*(x+2)+grid.x/2,boardFix.y+grid.y*(2-y)+grid.y/2  ),  new PVector(  grid.x,grid.y  ),  tempListA, 35)  );
        
        y = (y+1) % 3;
        
        if(y == 0)
        {
            x++;
        }//end if
    }//end for
    */
    
    
    ///////////////////////////////////////////////////////////////////////////////////////



}//end createNodes

void placeBets(int payout, int chipsIn, IntList values)
{
    for(int i = 0; i < values.size(); i++)
    {
        int index = values.get(i);
        
        //Xrintln("i = " + index + " payout = " + payout + " chips = " + chips);
        
        if(bets[index].size() == 0)
        {
            bets[index].add(  new Bet(payout,chipsIn)  );
        }//end if
        else
        {
            for(int j = 0; j < bets[index].size(); j++)
            {
                Bet local = bets[index].get(j);

                if(local.stack(payout,chipsIn))
                {
                    break;
                }//end if
                else if(j == bets[index].size() - 1)
                {
                    bets[index].add(  new Bet(payout,chipsIn)  );
                    break;
                }//end 
            }//end for
        }//end else
    }//end for
}//end placeBets

void printBetGroup()
{
    for(int i = 0; i < bets[testi].size(); i++)
    {
        Bet local = bets[testi].get(i);
        
        println("i = " + testi + " payout = " + local.payout + " chips = " + local.chips);
    }//end for
    
    println("\n");
    
}//end print Bet

void checkWin(int winner)
{
    for(int i = 0; i < bets[winner].size(); i++)
    {
        Bet local = bets[winner].get(i);
        
        int temp = local.result();
        cash += temp;
        winnings += temp;
    }//end for
    
    prevWinnings = winnings;
    winnings = 0;
    
    resetBets();
}

//void refreshBLANK()
void resetBets()
{
    for(int i = 0; i < bets.length; i++)
    {
        bets[i].clear();
    }//end for

    for (int i = nodes.size() - 1; i > -1; i--) 
    {
        nodes.get(i).current = 0;
    }//end for
}//end resetBets