void loadData(int select)
{
    Table t = new Table();
    
    
    t = loadTable("data/Wheel_Order.csv");
    
    
    for(int i = 0 ; i < t.getRowCount(); i ++)
    {
        TableRow row = t.getRow(i);
        row.getInt(0);
    }//end for
    
}//end loadData