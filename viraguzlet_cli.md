# Virágüzlet CLI

> Ebben a feladatban egy virágüzlet megrendelési adataival kell dolgoznia.

A `viraguzlet.csv` vesszővel (`,`) tagolt `UTF-8`-as karakterkódolású állomány. Az állomány első pár sora:

```csv
megrendelo_neve,virag,virag_szine,virag_szarmazasi_helye,ar,rendelesi_ido,atveteli_datum
Kovács Anna,Rózsa,vörös,Hollandia,11400,2025-02-10 09:15:00,2025-02-14
Nagy Péter,Tulipán,sárga,Magyarország,6500,2025-02-18 14:22:00,2025-02-20
Szabó Júlia,Orchidea,fehér,Hollandia,8400,2025-03-06 11:40:00,2025-03-08
Varga Eszter,Bazsarózsa,rózsaszín,Hollandia,9000,2025-04-12 08:35:00,2025-04-15
```

Az adattagok a következők:
| adattag | típus/formátum |
| ------- | -------------- |
| megrendelő neve | karakterlánc |
| rendelt virág | karakterlánc |
| virág színe | karakterlánc |
| virág származási helye | karakterlánc |
| rendelés összára | egész szám |
| rendelési idő | dátum-idő `yyyy-MM-dd HH:mm:ss` formátumban [^1] |
| átvételi dátum | dátum `yyyy-MM-dd` formátumban |

- Készítsen olyan projektet `FlowerShopCLI` néven, mely rendszerkonzolos vagy terminálos kimenet megjelenítésére alkalmas!
- Definiáljon saját osztályt `Order` néven, amely egy-egy megrendelési tétel felépítését írja le a fentieknek megfelelően!
- Bírálja felül az `Order` osztály `.ToString()` virtuális metódusát, hogy hívás esetén a rendelés minden részletét tartalmazó karakterlánccal térjen vissza[^2]!
- Olvassa be a `viraguzlet.csv` tartalmát egy `Order` osztálypéldányokat tartalmazó kollekcióba, a további problémákat ezen kollekció felhasználásával oldja meg! **Ügyeljen rá, hogy az első sor a fejlécet tartalmazza!**
---
1. írja ki a megrendelések számát!
2. írja ki, hogy hány alkalommal adtak le megrendelést Hollandiából származó virágra!
3. kérje be egy virág nevét, határozza meg, írja ki, hogy volt-e ilyen virágra leadott megrendelés!
4. írja ki a legnagyobb értékű rendelés adatait!
5. írja ki azon megrendelők neveit, akik több alkalommal is adtak le megrendelést az üzletnek a jegyzett időszakban!
---

### minta[^3]:
```plaintext
1. feladat: A megrendelések száma: 20 db
2. feladat: Hollandiából származó virágra 11 alkalommal adtak le megrendelést.
3. feladat: Kérem, adja meg egy virág nevét: Rózsa
        Volt megrendelés a megadott virágra!
4. feladat: A legnagyobb értékű rendelés adatai:
        Megrendelő neve: Mészáros Emese
        Rendelt virág: Bazsarózsa
        Virág színe: fehér
        Származási hely: Franciaország
        Rendelés összára: 15 200 Ft
        Rendelési idő: 2025. 10. 01. 16:11
        Átvételi dátum: 2025. 10. 04.
 5. feladat: Több alkalommal rendelő ügyfelek:
        - Kovács Anna
        - Szabó Júlia
        - Varga Eszter
        - Molnár Dóra
        - Papp Zoltán
```

[^1]: a másodperc (`:ss`) mindig nulla (`:00`) - mind a kiírásból, mind a tárolásból szükség szerint elhagyható
[^2]: a mintában látható formátumtól eltérhet, a lényeg, hogy minden adattag jelenjen meg
[^3]: a kimenet kialakítása a mintában láthatótól eltérhet, de az abban szereplő adatoknak egyeznie kell a program által kiszámítottakkal