# Virágüzlet GUI

> Ebben a feladatban a virágüzlet megrendeléseit kezelő grafikus asztali alkalmazás alapjait kell elkészítenie, amely közvetlenül az üzlet adatbázisához kapcsolódik.

A feladat megoldásához a `viraguzlet.sql` állományban található adatbázist kell használnia. Az adatbázis szerkezete és a benne lévő adatok megegyeznek a korábbi feladatokban megismertekkel. A virágokhoz tartozó képeket a rendelkezésre bocsátott `imgs\flowerimgs` mappában találja.

### wireframe a felülethez:

A működés megértéséhez tekintse meg az alábbi vázlatot. Amikor a felhasználó kiválaszt egy sort a bal oldali táblázatban (pl. Nagy Péter rendelését), a jobb oldali képkeretben meg kell jelennie a megrendelt virág fényképének (ha az rendelkezésre áll).

```text
+--------------------------------------------------------------------------+
|  Virágüzlet Megrendelések                                          _ □ X |
+--------------------------------------------------------------------------+
|                                                                          |
|  +---------------------------------------------------------+ +---------+ |
|  | Megrendelő   | Virág    | Szín  | Ár       | Átvétel    | |         | |
|  +---------------------------------------------------------+ |         | |
|  | Kovács Anna  | Rózsa    | vörös | 11 400 Ft| 2025.02.14 | |         | |
|  |>Nagy Péter   | Tulipán  | sárga |  6 500 Ft| 2025.02.20 | |   KÉP   | |
|  | Szabó Júlia  | Orchidea | fehér |  8 400 Ft| 2025.03.08 | |         | |
|  | Varga Eszter | Bazsaró..| rózs..|  9 000 Ft| 2025.04.15 | |         | |
|  | Kiss Bence   | Gerbera  | piros |  6 000 Ft| 2025.04.22 | |         | |
|  +---------------------------------------------------------+ +---------+ |
|                                                                          |
+--------------------------------------------------------------------------+
```

## Feladatok

1. **Projekt létrehozása:** Hozzon létre egy grafikus alkalmazást `FlowerShopGUI` néven!
2. **Adatbázis kapcsolat:** Építsen ki kapcsolatot a lokális MySQL/MariaDB szerveren futó `viraguzlet` adatbázissal! A kapcsolódáshoz szükséges adatokat (szerver, felhasználónév, jelszó) égetve (hardcoded) is megadhatja.
3. **Felület kialakítása:**
   - Helyezzen el egy adatrácsot az ablak bal oldalán, amely kitölti a rendelkezésre álló hely nagy részét!
   - Helyezzen el egy képmegjelenítőt az ablak jobb oldalán, amely a kiválasztott virág képének megjelenítésére szolgál! A képmegjelenítő méretezési módját állítsa be úgy, hogy a kép torzítás nélkül kitöltse a keretet.
4. **Adatok betöltése:**
   - Az alkalmazás indulásakor töltsön be egy összesített listát a megrendelésekről a `DataGridView`-ba!
   - A lekérdezésnek a következő adatokat kell tartalmaznia: `megrendelő neve`, `rendelt virág neve`, `virág színe`, `rendelés összára (mennyiség * egységár)` valamint az `átvételi dátum`.
5. **Kép megjelenítése:**
   - Készítsen eseménykezelőt, ami az adatrács egy sorának kijelölése vagy kattintása esetén megjeleníti a rendet virág képét a jobb oldali megjelenítőben az adatrácsban kijelölt sor alapján!
   - Ha a képforrás mappa tartalmaz `{viregneve}_{viragszine}.jpg` (ékezetek nélkül, csupa kisbetűvel) filet, töltse be azt a keretbe!
   - **Hibakezelés:** Ha a virághoz nem tartozik kép (az adatbázisban `NULL` szerepel), vagy a hivatkozott képfájl nem található a mappában, a képmegjelenítp maradjon üres!

---
*megjegyzés: Ügyeljen arra, hogy a `imgs\flowerimgs` a fordítási kimeneti könyvtárhoz képest relatív útvonalon, vagy a projekt gyökerében megfelelően helyezze el a teszteléshez!*