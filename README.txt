Descriere a mapei:

Rosu - Senzori de calitate al aerului.
Mov - Punctul de colectare al datelor, din cartiere, mai apoi trimise catre centru.
Verde - Centru de colectare al datelor.

Functionare:

Senzorii ,punctele rosii, sunt alcatuti din urmatoarele componente:
-LoRa sx1278. Acesta este un  transmitator pe baza de unde radio care are o raza de pana la 5km, asa zice vanzatorul da nu prea cred.
-Senzor de pentru a masura calitatea aerului, nu stim inca care.
-Un arduino nano.
-Optional baterii
Acestia produc masuratori care vor fii trimise catre punctul central care este situat in fiecare cartier.

Punctul central, ce-i cu mov, acesta este un software pe care un senzor il va avea, pe langa cel de masurat, pentru a trimite mai departe toate datele acumulate de senzori in cartierul respectiv, catre Centru.
Toti senzorii vor trimite datele catre acest Punct.

Centrul este cam fictiv, noi ne-am gandit sa fie un Esp8266 pentru fiabilitate si pentru a vinde ideea ca e ieftin de intretinut.
Acesta va acumula datele de la toti senzorii si le va afisa pe un site frumos.

Cam asta e ideea in mare.

Schimbare de plan pentru Punctul central (ce-i cu mov) in loc sa ne folosim de un UART putem sa facem din soft fenomenul pe care il vrem noi nu avem nevoie de nimic in plus. 
