def puissance(a, b):
	if not type(a) is int:
		raise TypeError("Only integers are allowed")
	res = 1
	if b == 0:
		if a < 0:
			res = -1
		else:
			res = 1
	if b > 0:
		for function in range(b):
			res = res * a
	if b < 0:
		res = 1.0
		if a != 0:
			for function in range(-b):
				res = res / a
		else:
			raise TypeError("Only integers are allowed")
	return res
