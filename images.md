
# Images

## Original images

- Wikipe-tan_GothLoli.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_GothLoli.png>
    - By Kasuga, GFDL and cc-by-sa-2.5,2.0,1.0
- Wikipe_tan_casual.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe_tan_casual.png>
    - By Kasuga, GFDL
- Wikipe-tan_sailor_fuku.png
    - <https://commons.wikimedia.org/wiki/File:Wikipe-tan_sailor_fuku.png>
    - By Kasuga, GFDL and CC
- Neko_Wikipe-tan.svg
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Neko_Wikipe-tan.svg>
    - By Kasuga, derivative work: Malyszkz, Cc-by-sa-2.5,2.0,1.0, Cc-by-sa-3.0-migrated, GFDL
- Wikipe-tan_coaching.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_coaching.png>
    - By Kasuga
    - This file is licensed under the Creative Commons Attribution-Share Alike 4.0 International, 3.0 Unported, 2.5 Generic, 2.0 Generic and 1.0 Generic license.
- Wikipe-tan_Miko.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_Miko.png>
    - By Kasuga
    - GFDL and cc-by-sa 1.0-3.0

## Converted images for training

```bash
sudo apt install parallel imagemagick
mkdir -p 'img_train/10_tk girl'
find img_original -type f | sort | parallel -t -n1 -P1 convert -limit disk 0 -background white -alpha remove -alpha off -fuzz 5% -trim -resize 512x704 -gravity center -extent 512x704 {} '"img_train/10_tk girl/{#}.png"'
```
