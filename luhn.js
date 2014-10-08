// luhn's algorithm in javascript
// if an integer is entered that is a valid credit card number it returns true

function luhn(int) {
	function splitToString(s) {
		return s.toString().split("");
	}
	s1 = 0
	s2 = 0
	if (int === parseInt(int)) {
		a = splitToString(int).reverse();
		for (i = 0; i < a.length; i++) {
			if (i % 2 == 0) {
				b = parseInt(a[i])*2;
				if (b >= 10) {
					s1 += b - 9
				}
				else {
					s1 += b
				}
			}
			else {
				f = parseInt(a[i]);
				s2 += f
			}
		}
	}
	else {
		return false
	}
	var x = s1+s2;
	var y = splitToString(x);
	var z = y[y.length-1];
	if (parseInt(z) == 0) {
		return true
	}
	else {
		return false
	}
}