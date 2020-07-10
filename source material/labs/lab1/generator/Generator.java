import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Random;

public class Generator
{
    public static void main(String[] args)
    {
        int seed = 100;
    
        Random rand = new Random(seed);
        
        //Set calendar to start January 7, 2016
        Calendar start = new GregorianCalendar(2016,0,7);
                
        int sites = 4;
        int sensors = 3;
        int pointsPerDay = 96;
        int days = 2;
        
        System.out.println("timestamp, siteid, sensorid, value");

        for (int d=1; d <= days; d++)
        {
            for (int k=1; k <= pointsPerDay; k++)
            {
                for (int i = 1; i <= sites; i++) 
                {                
                    for (int j = 1; j <= sensors; j++) 
                    {
                        String value = "";
                        int v = rand.nextInt(100);
                        if (v <= 2)
                            value = "#ERROR#";
                        else if (v <= 4)
                            value = "#NA#";
                        else if (v <= 6)
                            value = ""+-1*rand.nextInt(100);
                        else if (v <= 8)
                            value = ""+(101+rand.nextInt(100));
                        else
                        {
                            if (j == 1)
                            {
                                if (rand.nextBoolean())
                                    value = "" + (50+j*10+rand.nextInt(10));
                                else
                                    value = "" + (50+j*10-rand.nextInt(10));                                
                            }
                            if (j == 2)
                            {   // Linear sensor value
                                int numReadings = (d-1)*pointsPerDay+k;
                                // Formula is 0.2x+5 s
                                int expectedValue = (int) (0.2*numReadings+5);
                                /*                                
                                if (rand.nextBoolean())
                                    value = "" + (expectedValue*1.05);
                                else
                                    value = "" + (expectedValue*-1.05);
                                */
                                value = ""+expectedValue;
                            }
                            else
                            {
                                value = ""+rand.nextInt(101);
                            }
                        }
                            
                        System.out.println(start.getTime() + "," + Integer.toString(i) + "," + Integer.toString(j) + "," + value);                    
                    }
                
                 }
                // Increment the date by 15 minutes
                start.add(Calendar.MINUTE, 15);
            }
        }
    }

}
