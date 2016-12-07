var myVar = setInterval(myTimer, 1000);


		
		function myTimer() {
    		var d = new Date();
    		document.getElementById("demo").innerHTML = d.toLocaleTimeString();
		}

		
		
		function func2(x) {
			
			document.getElementById("hide").style.display = "inline";
			var audi = document.getElementById("aud1");
			var sources = document.getElementById("aud");
			sources.src = x;
			audi.load();
			
		}
		
		document.addEventListener('play', function(e){

    		var audios = document.getElementsByTagName('audio');
    		for(var i = 0, len = audios.length; i < len;i++){
        		if(audios[i] != e.target){
            		audios[i].pause();
        		}
    		}
		}, true);

		function func(x) {
			document.getElementById("searchSongs").value = x;
			//var y = document.getElementById("cityDiv");
			
			//var z = document.getElementById("cityDiv").childNodes;
			func1();
			
		}
		
		function func1() {
			var z = document.getElementsByClassName("para");
		}
		
		function play1(x) {
			var audi = document.getElementById("aud125");
			var sources = document.getElementById("aud25");
			sources.src = x;
			audi.load();
		}
		