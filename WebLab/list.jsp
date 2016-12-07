<%
	String [] songs = new String[7];
	String [] song = new String[7];
	songs[0] = "Gangnam Style"; 
	songs[1] = "Silento"; 
	songs[2] = "Batman Vs Superman"; 
	songs[3] = "Game Of Thrones"; 
	songs[4] = "Smack That";
	
	song[0] = "GangnamStyle.mp3";
	song[1] = "Silento.mp3";
	song[2] = "BatmanVsSuperman.mp3";
	song[3] = "GameOfThrones.mp3";
	 
	song[4] = "SmackThat.mp3";
	songs[5] = "Show me the meaning"; 
	song[5] = "ShowMeTheMeaning.mp3";
	songs[6] = "Hips dont Lie"; 
	song[6] = "HipsDontLie.mp3";
	
	//read user input
	String city = request.getParameter("w");  //w is the name of the parameter from AJAX call
	
	//I am using UL/LI to return the data to xmlHttp object. Could be anything.
	
	String result = "";
	int count = 0;
	for(int i = 0; i< songs.length; i++) {
		if(songs[i].equals(city)) {
			result += song[i];
			count++;
		}
	}
	if(count == 0) {
		result += 0;
	}
	
	out.println(result);   //send this to xmlHttp object
%>
