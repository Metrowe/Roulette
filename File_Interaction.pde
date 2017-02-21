void loadData()
{
    Table t = new Table();
    
    t = loadTable("data/Wheel_Order.csv");
    
    numbers[0] = color(0,255,0);
    
    for(int i = 1 ; i < t.getRowCount(); i ++)
    {
        TableRow row = t.getRow(i);
        
        if(i % 2 == 0)
        {
            numbers[row.getInt(0)] = color(0);
        }//end if
        else
        {
            numbers[row.getInt(0)] = color(255,0,0);
        }//end else
    }//end for
    
}//end loadData