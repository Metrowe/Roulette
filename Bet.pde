class Bet
{
    //IntList values;
    int payout;
    int chips;
    
    Bet(int payout, int chips)
    {
        this.payout = payout;
        this.chips = chips;
    }//end Bet constructor
    
    int result()
    {
        return chips + chips*payout;
    }//end result
    
    boolean stack(int payout,int chipsIn)
    {
        if(this.payout == payout)
        {
            this.chips += chipsIn;
            return true;
        }//end stack
        return false;
    }//end stack
}//end Bet