import time
eingabe = input("-->")
datei = open("Aufgabe.txt", "w")
datei.write("Deine Aufgabe: ")
datei.write(eingabe)
if (eingabe):
    print("danke für deine eingabe: ")
    print(eingabe)
    a = 5
    time.sleep(a)
else:
    print("Du hast nichts eingegeben")
    b = 5
    time.sleep(b)
