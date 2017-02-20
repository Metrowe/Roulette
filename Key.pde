boolean[] keys = new boolean[1000];

void keyPressed()
{
    keys[keyCode] = true;
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