function rev(value) {
	if (value instanceof Array) {
		var s = value.join("");
	} else {
		var s = value
	}
	r = "";
	for (var i=s.length-1; i>=0; i--) {
		var c = s.charAt(i)
		r += c
	}
	console.log(r)
}