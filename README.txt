Descriere a hartii:

Rosu - Senzori de calitate al aerului.
Mov - Punctul de colectare al datelor.
Verde - Centru de colectare al datelor.

Functionare:

Senzorii ,punctele rosii, sunt alcatuti din urmatoarele componente:
-LoRa sx1278. Acesta este un  transmitator pe baza de unde radio care are o raza de pana la 5km.
-MQ135, senzor care masoara nivelul de C02.
-Arduino nano.
Fiecare senzor, (punctele rosii) masoara nivelul de aer mai apoi il va trimite catre punctul central care este situat in fiecare cartier.

Punctul central, ( punctele mov ) este un software pe care un senzor il va avea, pe langa cel de masurat, pentru a trimite mai departe toate datele acumulate de senzori in cartierul respectiv, catre Centru.
Toti senzorii vor trimite datele catre acest Punct.

Centrul de colectare a datelor, ( punctele verzi ) este un ESP8266 care primeste dataele de pe fiecare cartier si le afiseaza pe un site.
