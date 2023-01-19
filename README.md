
# Example of LoRA training

An example to train [Wikipe-tan](https://en.wikipedia.org/wiki/Wikipedia:Wikipe-tan) with LoRA

## Training

1. Setup [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
2. Move to ``sd-scripts`` directory
3. Copy all files in this repository
4. Download ``ACertainty.ckpt`` from [the repo](https://huggingface.co/JosephusCheung/ACertainty/blob/main/ACertainty.ckpt)
5. Run ``train_lora.zsh``
6. Run ``test_lora.zsh`` and ``test_original.zsh``
7. Check ``trained/last-examples`` and ``trained/original-examples``

## Licence

- For images in ``images.md`` and ``img_train``: check [images.md](images.md)
- For images in ``img_reg``: CC0 1.0
- Scripts and texts: CC0 1.0
