// luhn's algorithm in javascript
// if an integer is entered that is a valid credit card number it returns true

function luhn(int) {
	// function splitString(p) {
	// 	p.toString().split("");
	// }
	s1 = 0
	s2 = 0
	if (int === parseInt(int)) {
		a = int.toString().split("").reverse();
		for (var i = a.length-1; i>=0; i--) {
			if (i % 2 === 0) {
				b = parseInt(a[i]);
				s1 += b
			}
			else {
				c = parseInt(a[i])*2;
				s2 += c
			}
		}
	}
	else {
		return false
	}
	var x = s1+s2;
	var y = x.toString().split("");
	var z = x[x.length-1];
	// if (0 == parseInt(y[y.length-1])) {
	// 	return true
	// }
	// else {
	// 	return false
	// }
	console.log(z);
}
