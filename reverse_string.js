function rev(array) {
	ar = array.split("");
	ra = [];
	for (var i=ar.length-1; i>=0; i--) {
		x = ar.pop();
		ra.push(x);
	}
	var yarra = ra.join("");
	console.log(yarra)
}