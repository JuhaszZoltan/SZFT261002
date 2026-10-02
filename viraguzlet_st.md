## flowershop CLI

| feladat | pontszám |
| ------- | -------- |
| -: a projektet a megfelelő néven hozta létre (`FlowerShopCLI`), a template terminálos megjelenítésre alkalmas | 1 |
| -: létrehozta az `Order` osztályt | 1 |
| -: az osztály minden property-t tartalmaz | 1 |
| -: helyesen override-olta a `.ToString()` metódust, a return value minden adattagot tartalmaz | 1 |
| -: inicializálta a kollekciót | 1 |
| -: beolvasta a forrásfile minden sorát, azokból osztálypéldányokat inicializált, ezek referenciáit rögzítette a kollekcióban | 2 |
| -: a nem-szöveges adattagok típuskonverziója a beolvasást vagy a konstruktorhívást követően helyes | 1 |
| 1: helyesen meghatározta az adatsorok (megrendelések) számát | 1 |
| 2: helyesen meghatározta a Hollandiából származó virágokra leadott rendelések számát | 1 |
| 3: helyesen meghatározta, hogy volt-e a bekért nevű virágra megrendelés | 1 |
| 4: helyesen meghatározta a legnagyobb megrendelés összegét, és kiírta az ehhez a megrendeléshez tartozó összes adatot | 2 |
| 5: helyesen meghatározta az 1-nél több megrendelést leadó felhasználókat, és neveiket kiírta | 2 |
| **összesen:** | **15** |


## flowerShop GUI

| feladat | pontszám |
| ------- | -------- |
| 1-3: a projektet megfelelő néven hozta létre (`FlowerShopGUI`), a felületen szerepel a megfelelően beállított adatrács és képmegjelenítő | 1 |
| 2: az adatbázis kapcsolatot sikeresen kiépítette | 1 |
| 4: az adatok lekérdezésére írt SQL utasítás helyes (táblák összekapcsolása, számított oszlop az összárnak) | 2 |
| 4: az alkalmazás indulásakor a lekérdezés eredménye (a kért oszlopokkal) megjelenik az adatrácsban | 1 |
| 5: az adatrács sorkijelölés vagy kattintás eseményét megfelelően lekezeli | 1 |
| 5: a képfájl nevét a kijelölt sor adatai alapján helyesen állítja elő (ékezetek cseréje, kisbetűssé alakítás, `.jpg` hozzáfűzése) | 2 |
| 5: az elkészített útvonal alapján a képet sikeresen betölti a képmegjelenítőbe | 1 |
| 5: a hibakezelés megfelelő (hiányzó adat vagy nem létező képfájl esetén a program nem omlik össze, a képmegjelenítő üres marad) | 1 |
| **összesen:** | **10** |