boolean[] keys = new boolean[1000];

void keyPressed()
{
    keys[keyCode] = true;
    
    if(keyCode == UP)
    {
        printBetGroup();
    }//end if
    else if(keyCode == LEFT)
    {
        testi = (testi - 1 + bets.length) % bets.length;
    }//end else if
    else if(keyCode == RIGHT)
    {
        testi = (testi + 1) % bets.length;
    }//end else if
    else if(keyCode == DOWN)
    {
        checkWin(testi);
    }//end else if
}//end keyPressed

void keyReleased()
{
    keys[keyCode] = false; 
}//end keyReleased

boolean checkKey(int k)
{
     if (keys.length >= k) 
     {
         return keys[k] || keys[Character.toUpperCase(k)];  
     }//end if
     
     return false;
}//end checkKey