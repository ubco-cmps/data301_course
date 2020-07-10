<%@ page import="java.util.*, java.io.*, java.servlet.*" %>

<%
	//Code to generate a csv with random data, and send the file to the client through the response
	//Based on code from https://gist.github.com/americos/4683962

	try{
		//Take the input from index.jsp
		String input = request.getParameter("num").trim();
		if (input.length() != 8){
			throw new NumberFormatException();
		}
		int studentNum = Integer.parseInt(input);

		//Set response to download the generated file
		response.setContentType("application/csv");
		response.setHeader("content-disposition","filename=dataset.csv"); // Filename
		
		//Create the file writer and initialize variables
		PrintWriter output = response.getWriter();
	    Date date = new Date();
	    Random rand = new Random(studentNum);
	    //Set calendar to start January 1, 2015
	    Calendar start = new GregorianCalendar(2015,0,1);
	    int k = 0;
	    int sites = 10;
	    int sensors = 5;
	    int points = 200;

	    //Appends the header to the csv file
	    output.append("timestamp, siteid, sensorid, value\n");

	    //Continues generating data until the number of data points has been reached
	    while (k < points) {
	    	//Loops through the site ids and checks if that site takes a reading
	        for (int i = 0; i < sites; i++) {
	            int siteScan = rand.nextInt(2);
	            if (siteScan == 1) {
	            	//Loops through the sensor ids and checks if that sensor takes a reading
	                for (int j = 0; j < sensors; j++) {
	                    int sensorScan = rand.nextInt(2);
	                    if (sensorScan == 1 && k < points) {
	                    	//If the sensor takes a reading, append data to the output string
	                        output.append(start.getTime() + "," + Integer.toString(i) + "," + Integer.toString(j) + "," + rand.nextInt(101) + "\n");
	                        k++;
	                    }
	                }
	            }
	            //Increment the date by 1 minute
	            start.add(Calendar.MINUTE, 1);
	            }
	    }
	    //Write output file and open client download
	    output.flush();
	    output.close();
	}
	catch (IOException e){
		String site = new String("http://cosc304.ok.ubc.ca/36601110/tomcat/bootstrap/index1.jsp");
 		response.setStatus(response.SC_MOVED_TEMPORARILY);
   		response.setHeader("Location", site);
	}
	catch (NumberFormatException e){
		String site = new String("http://cosc304.ok.ubc.ca/36601110/tomcat/bootstrap/index1.jsp");
 		response.setStatus(response.SC_MOVED_TEMPORARILY);
   		response.setHeader("Location", site);
	}
%>