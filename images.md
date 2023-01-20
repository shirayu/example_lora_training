
# Images

## Original images

- 001_Neko_Wikipe-tan.svg
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Neko_Wikipe-tan.svg>
    - By Kasuga, derivative work: Malyszkz, Cc-by-sa-2.5,2.0,1.0, Cc-by-sa-3.0-migrated, GFDL
- 002_Wikipe-tan_at_Valentine's_Day.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_at_Valentine%27s_Day.png>
    - By Kasuga
    - GFDL 1.2, all CC-BY-SA
- 003_Wikipe-tan_Birthday.jpg
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_Birthday.jpg>
    - By Kasuga
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5, 3.0)
- 004_Wikipe-tan_coaching.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_coaching.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 005_Wikipe-tan_GothLoli.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_GothLoli.png>
    - By Kasuga,
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5)
- 006_Wikipe-tan_in_Cleopatra-style_costume.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_in_Cleopatra-style_costume.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 007_Wikipe-tan_in_Santa_Costume.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_in_Santa_Costume.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 008_Wikipe-tan_Miko.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_Miko.png>
    - By Kasuga
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5, 3.0)
- 009_Wikipe-tan_mopping.svg
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_mopping.svg>
    - By Kasuga
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5, 3.0)
- 010_Wikipe-tan_needs_your_help.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_needs_your_help.png>
    - By Kasuga
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5, 3.0)
- 011_Wikipe-tan_sailor_fuku.png
    - <https://commons.wikimedia.org/wiki/File:Wikipe-tan_sailor_fuku.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 012_Wikipe-tan_wearing_ao_dai.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_wearing_ao_dai.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 013_Wikipe-tan wearing baro't saya.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe-tan_wearing_baro%27t_saya.png>
    - By Kasuga
    - GFDL and all CC-BY-SA
- 014_Wikipe_tan_casual.png
    - <https://ja.wikipedia.org/wiki/%E3%83%95%E3%82%A1%E3%82%A4%E3%83%AB:Wikipe_tan_casual.png>
    - By Kasuga
    - GFDL 1.2, CC-BY-SA (1.0, 2.0, 2.5, 3.0)

## Converted images for training

```bash
sudo apt install parallel imagemagick
mkdir -p 'img_train/5_tk girl'
find img_original -type f | sort | parallel -t -n1 -P1 convert -limit disk 0 -background white -alpha remove -alpha off -fuzz 5% -trim -resize 512x704 -gravity center -extent 512x704 {} '"img_train/5_tk girl/{#}.png"'
```

## Tagging

```bash
cd sd-scripts
python finetune/tag_images_by_wd14_tagger.py --batch_size=1 /path/to/target_dur
```

Please add concept tag to every generated caption file.
