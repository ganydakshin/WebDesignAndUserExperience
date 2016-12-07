<%
	String [] songs = new String[7];
	String [] song = new String[7];
	songs[0] = "Gangnam Style"; song[0] = "GangnamStyle.mp3";
	songs[1] = "Silento"; song[1] = "Silento.mp3";
	songs[2] = "Batman Vs Superman"; song[2] = "BatmanVsSuperman.mp3";
	songs[3] = "Game Of Thrones"; song[3] = "GameOfThrones.mp3";
	songs[4] = "Smack That"; song[4] = "SmackThat.mp3";
	songs[5] = "Show me the meaning"; song[5] = "ShowMeTheMeaning.mp3";
	songs[6] = "Hips dont Lie"; song[6] = "HipsDontLie.mp3";
	
	//read user input
	String city = request.getParameter("q");  //q is the name of the parameter from AJAX call
	String cityLower = city.toLowerCase();
	//I am using UL/LI to return the data to xmlHttp object. Could be anything.
	if(city == "") {
		return;
	}
	String result = "";
	
	for (String currentSong : songs)   //new for loop
	{
		String currentSongLower = currentSong.toLowerCase();
		if (currentSongLower.contains(cityLower))
		{
	
			result += "<p class='para' onClick='func(this.innerHTML)'>" + currentSong + "</p>";
		}
	}

	
	out.println(result);   //send this to xmlHttp object
%>
