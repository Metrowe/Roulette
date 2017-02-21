void setup()
{

    size(500,500);
    scaler = (width+height)/2;
    
    gameMode = 0;
    finalSize = 37;
    
    for(int i = 0; i < finalSize; i++)
    {
        bets[i] = new ArrayList<Bet>();
    }//end for
}//end setup

float scaler;
int finalSize;

int gameMode;

//Player data
int cash;
//ArrayList<Bet>[] bets;
ArrayList<Bet>[] bets;

void draw()
{
  background(200);  
  
    switch(gameMode)
    {
        case 0:
        {
          
          break;
        }//end case 0
        case 1:
        {
          
            break;
        }//end case 1
        case 3:
        {
          
            break;
        }//end case 2
        case 4:
        {
          
            break;
        }//end case 3
        default:
        {
            println("!Default! gameMode = " + gameMode);
            break;
        }//end default
    }//end switch
}//end draw