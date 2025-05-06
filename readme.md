# User Guide: Photo Slideshow

This guide explains how to use the slideshow to create a presentation of photos.

## File Overview

The slideshow consists of three important components:
- `index.html`: The webpage that displays the slideshow
- `get-files.ps1`: A PowerShell script that scans the images
- `files.js`: An automatically generated file with the list of images

## How to Use - Playback

1. Open index.html.
2. Click to start the slideshow in full screen.
3. Press `ESC` to exit full screen mode.
 
## How to Use - Creating a Slideshow

### Step 1: Place Your Photos
1. Place all JPG images you want to show in the same folder as these files. Only JPG files are supported (both `.jpg` and `.JPG` extensions).

### Step 2: Generate the File List
1. Open PowerShell in the folder with your images
2. Run the script by typing: `.\get-files.ps1`. Depending on how PowerShell is installed, you can also right-click on `get-files.ps1` in File Explorer and choose *Run with PowerShell...*
3. The script scans all JPG files in the folder and sorts them alphabetically
4. The script creates a new file `files.js` with the list of all found images

### Step 3: Start the Slideshow
1. Open `index.html` in a web browser
2. Click on "Click to start" to begin the slideshow
3. The slideshow automatically goes into full screen mode and displays the images

## Customizing Settings

You can adjust various aspects of the slideshow by editing `index.html`:

### Time Between Images
Open `index.html` and look for:
```javascript
// Tijd tussen afbeeldingen (in milliseconden)
const SLIDE_DURATION = 8000;
```
Change the number `8000` (8 seconds) to the desired number of milliseconds.

### Background Color
To adjust the background color, look for:
```javascript
// Achtergrond kleur
document.documentElement.style.setProperty('--bg-color', '#222');
```
Change `#222` to another color code. For example, `#000` for black or `#fff` for white,
or use a 6-digit color code. For more information see: [https://htmlcolorcodes.com](https://htmlcolorcodes.com).

### Repeating the Slideshow
To set whether the slideshow should repeat or stop after the last image:
```javascript
// Herstarten wanneer klaar (true = ja, false = nee)
const REPEAT_SLIDESHOW = true;
```
Change `true` to `false` to make the slideshow stop after the last image.

## Tips
- The slideshow displays images in alphabetical order of filenames
- If you want a specific order, you can rename your files (e.g., 01.jpg, 02.jpg, etc.)
- You can press ESC to exit full screen mode

## Author
Created by: J.G. Hek - [jangeert@jangeert.nl](mailto:jangeert@jangeert.nl) - [github](https://github.com/jghek/html-slideshow)
