import time
datei = open("Aufgabe.txt", "r")
print(datei.read())
print("Die Datei Schließt sich in 10 Sekunden")

a = 10
time.sleep(a)