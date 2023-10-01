Descriere a hartii:

Rosu - Senzori de calitate al aerului.
Mov - Punctul de colectare al datelor.
Verde - Centru de colectare al datelor.

Functionare:

Senzorii ,punctele rosii, sunt alcatuiti din urmatoarele componente:
-LoRa sx1278. Acesta este un  transmitator pe baza de unde radio care are o raza de pana la 5km.
-MQ135, senzor care determina concentratia de C02.
-Arduino nano.
Fiecare senzor, (punctele rosii) masoara concentratia de CO2 a aerului,mai apoi il va trimite catre punctul central care este situat in fiecare cartier.

Punctul central, ( punctele mov ) reprezinta o statie ce va colecta datele de la statiile periferice pentru a le retransmite apoi spre Centru.


Centrul de colectare a datelor, ( punctele verzi ) este un ESP8266 care primeste datele de pe fiecare cartier si le afiseaza pe un site.
