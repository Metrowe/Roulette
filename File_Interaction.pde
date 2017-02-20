void loadData(int select)
{
  Table t = new Table();
  
  
  t = loadTable("data/default1.csv");
  switch(select)
  {
    case 0:
    {
      t = loadTable("data/default1.csv", "header");
      break;
    }//end case 0
    case 1:
    {
      t = loadTable("data/default2.csv", "header");
      break;
    }//end case 1
    case 2:
    {
      t = loadTable("data/user1.csv", "header");
      break;
    }//end case 2
    case 3:
    {
      t = loadTable("data/user2.csv", "header");
      break;
    }//end case 3
    case 4:
    {
      t = loadTable("data/user3.csv", "header");
      break;
    }//end case 4
  }//end switch

  greenTrack.clear();
  redTrack.clear();
  
  for(int i = 0 ; i < t.getRowCount(); i ++)
  {
    TableRow row = t.getRow(i);
    
    if(row.getInt("1x") > -1)
    {
      Track local = new Track(  new PVector(row.getInt("1x"),row.getInt("1y"))  );
      greenTrack.add(local);
    }//end if
    
    if(row.getInt("2x") > -1)
    {
      Track local = new Track(  new PVector(row.getInt("2x"),row.getInt("2y"))  );
      redTrack.add(local);
    }//end if
      
   }//end for
    
    
  setDistance(greenTrack);
  setDistance(redTrack);
    
}//end loadData