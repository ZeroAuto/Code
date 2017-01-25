var reverse_string = function(str) {
	rstr = "";
  
	for (var i = str.length -1; i >= 0; i--) {
  		rstr += str.charAt(i);
  	}
  
  	return rstr;
}
