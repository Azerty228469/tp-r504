import fonctions as f

print("Hello, World!")
while True:
	v1 = int(input("Inscrire un nombre entier a : "))
	v2 = int(input("Inscrire un nombre entier b : "))
	res = f.puissance(v1, v2)
	print("Nombre A élevé au carré B :", res)
