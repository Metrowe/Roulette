/*
Notes:
150 possible bets
Text template:
    fill(0x000000);
    textSize(Scale * 0.001);
    textAlign(TOP,RIGHT);
    text("example",pos.x,pos.y);
    
Board:
    15 grid.x by 5 grid.y
*/
void setup()
{

    size(1000,500);
    //size(300,300);
    scaler = (width+height)/2;
    boardScale = scaler * 1;
    wheelScale = scaler * 1;
    
    grid = new PVector(boardScale * 0.05,boardScale * 0.07);
    
    boardFix = new PVector(width*0.2,height*0.2);
    wheelFix = new PVector(width*0.2,height*0.2);
    
    gameMode = 0;
    
    
    cash = 100;
    numbers = new color[37];
    loadData();
    
    bets = new ArrayList[37];
  
    for(int i = 0; i < bets.length; i++)
    {
        bets[i] = new ArrayList<Bet>();
    }//end for
    
    buildBoard();
    createBetNodes();
}//end setup

float scaler;
float boardScale;
float wheelScale;

PVector grid;

PVector boardFix;
PVector wheelFix;

PShape board;
PShape wheel;

int gameMode;

//Player data
int cash;

//I've no idea which of these is correct syntax
//ArrayList[] bets;
ArrayList<Bet>[] bets;

ArrayList<BetNode> blocks = new ArrayList<BetNode>();
//ArrayList<BetNode> blocks;
ArrayList<BetNode> nodes = new ArrayList<BetNode>();
//ArrayList<BetNode> edges;

color[] numbers;

void draw()
{
    background(255);
  //rect(10,10,10000,100000);
    //background(50);  
    //fill(0x00FF00);
    //fill(0,255,0);
    //ellipse(width/2,height/2,width/2,height/2);
    
    /*
    pushMatrix();
    translate(width/2,height/2);
    fill(0x00FF00);
    for(int i = 0;i < 7;i++)
    {
        ellipse(20,0,5,5);
        rotate(TWO_PI/8);
    }//end ofr
    popMatrix();
    */
    
    shape(board);
    
    textBoard();
    
    viewBetNodes();
    
    
    
    
    
    displayInfo();
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