<%
	String [] songs = new String[7];
	String [] song = new String[7];
	songs[0] = "Gangnam Style"; 
	song[0] = "GangnamStyle.mp3";
	songs[1] = "Silento"; 
	song[1] = "Silento.mp3";
	songs[2] = "Batman Vs Superman"; 
	song[2] = "BatmanVsSuperman.mp3";
	songs[3] = "Game Of Thrones"; 
	song[3] = "GameOfThrones.mp3";
	songs[4] = "Smack That"; 
	song[4] = "SmackThat.mp3";
	songs[5] = "Show me the meaning"; 
	song[5] = "ShowMeTheMeaning.mp3";
	songs[6] = "Hips dont Lie"; 
	song[6] = "HipsDontLie.mp3";
	
	
	//read user input
	String city = request.getParameter("q");  //q is the name of the parameter from AJAX call
	String cityLower = city.toLowerCase();
	String result = "";
	
	if(cityLower.length() == 3) {
		String a1 = cityLower.substring(0,1);
		String a2 = cityLower.substring(2,3);
		
		for(int i=0;i < songs.length;i++) {
			String songLower = songs[i].toLowerCase();
			if(songLower.startsWith(a1) || songLower.startsWith(a2)) {
				
				result += "<div class = 'row'><div class = 'col-sm-6 songDisplay'>" +songs[i] + "</div><div class='col-sm-6 songDisplay cur' onClick='play1(this.innerHTML)'>" +song[i] +"</div></div>";
			}
		}
	}
	
	if(cityLower.length() == 5) {
		String a1 = cityLower.substring(0,1);
		String a2 = cityLower.substring(2,3);
		String a3 = cityLower.substring(4,5);
		for(int i=0;i < songs.length;i++) {
			String songLower = songs[i].toLowerCase();
			if(songLower.startsWith(a1) || songLower.startsWith(a2) || songLower.startsWith(a3)) {
				result += "<div class = 'row'><div class='col-sm-6 songDisplay'>" +songs[i] + "</div><div class='col-sm-6 songDisplay cur' onClick = 'play1(this.innerHTML)'>" +song[i] +"</div></div>";
			}
		}
	}
	
	result += "</div>";
	
	out.println(result);   //send this to xmlHttp object
%>
