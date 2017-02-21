boolean inRange(float value, float range, float centre)
{
    if(value > centre-range/2 && value < centre+range/2)
    {
        return true;
    }//end if
    else
    {
        return false;
    }//end else
}//end inRange

float angle(PVector point1, PVector point2)
{
    //return atan2(point1.y - point2.y,  point1.x - point2.x);// + TWO_PI*0.75
    return atan2(point1.y - point2.y,  point1.x - point2.x) + TWO_PI*0.25;
}//end angl