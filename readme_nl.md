# Handleiding: Foto Slideshow

Deze handleiding legt uit hoe je de slideshow kunt gebruiken om een presentatie van foto's te maken.

## Overzicht van de Bestanden

De slideshow bestaat uit drie belangrijke onderdelen:
- `index.html`: De webpagina die de slideshow weergeeft
- `get-files.ps1`: Een PowerShell script dat de afbeeldingen scant
- `files.js`: Een automatisch gegenereerd bestand met de lijst van afbeeldingen

## Hoe te Gebruiken - Afspelen

1. Open index.html.
2. Klik om de slidehow te starten in volledig scherm.
3. Druk op `ESC` om uit volledig scherm te gaan.
 
## Hoe te Gebruiken - Slide show maken

### Stap 1: Plaats je Foto's
1. Plaats alle JPG-afbeeldingen die je wilt tonen in dezelfde map als deze bestanden. Alleen JPG-bestanden worden ondersteund (zowel `.jpg` als `.JPG` extensies).

### Stap 2: Genereer de Bestandslijst
1. Open PowerShell in de map met je afbeeldingen
2. Voer het script uit door te typen: `.\get-files.ps1`. Afhankelijk van hoe powershell geinstalleerd is kan je ook in de verkenner rechts op `get-files.ps1` klikken en kiezen voor *Uitvoeren in PowerShell...*
3. Het script scant alle JPG-bestanden in de map en sorteert ze alfabetisch
4. Het script maakt een nieuw bestand `files.js` met de lijst van alle gevonden afbeeldingen

### Stap 3: Start de Slideshow
1. Open `index.html` in een webbrowser
2. Klik op "Klik om te starten" om de slideshow te beginnen
3. De slideshow gaat automatisch in volledig scherm en toont de afbeeldingen

## Instellingen Aanpassen

Je kunt verschillende aspecten van de slideshow aanpassen door `index.html` te bewerken:

### Tijd tussen Afbeeldingen
Open `index.html` en zoek naar:
```javascript
// Tijd tussen afbeeldingen (in milliseconden)
const SLIDE_DURATION = 8000;
```
Verander het getal `8000` (8 seconden) naar het gewenste aantal milliseconden.

### Achtergrondkleur
Om de achtergrondkleur aan te passen, zoek naar:
```javascript
// Achtergrond kleur
document.documentElement.style.setProperty('--bg-color', '#222');
```
Verander `#222` naar een andere kleurcode. Bijvoorbeeld `#000` voor zwart of `#fff` voor wit,
of gebruik een 6-cijferige kleurcode. Voor meer info zie: [https://htmlcolorcodes.com](https://htmlcolorcodes.com).

### Herhalen van de Slideshow
Om in te stellen of de slideshow moet herhalen of stoppen na de laatste afbeelding:
```javascript
// Herstarten wanneer klaar (true = ja, false = nee)
const REPEAT_SLIDESHOW = true;
```
Verander `true` naar `false` om de slideshow te laten stoppen na de laatste afbeelding.

## Tips
- De slideshow toont afbeeldingen in alfabetische volgorde van bestandsnamen
- Als je een specifieke volgorde wilt, kun je je bestanden hernoemen (bijv. 01.jpg, 02.jpg, etc.)
- Je kunt op ESC drukken om de volledig scherm modus te verlaten

## Auteur
Gemaakt door: J.G. Hek - [jangeert@jangeert.nl](mailto:jangeert@jangeert.nl) - [github](https://github.com/jghek/html-slideshow)
