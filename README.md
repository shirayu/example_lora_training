
# Example of LoRA training

- An example to train [Wikipe-tan](https://en.wikipedia.org/wiki/Wikipedia:Wikipe-tan) by the following implementations of LoRA

1. [diffusers_lora_example](diffusers_lora_example): Implementation in [diffusers](https://github.com/huggingface/diffusers)
2. [kohya-ss_lora_example](kohya-ss_lora_example): Implementation in [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)

## Training

1. Setup [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
    - Tested on ``v0.4.0 (0ca0642)``
2. Move to ``sd-scripts`` directory
3. Copy all files in this repository
4. Download ``ACertainty.ckpt`` from [the repo](https://huggingface.co/JosephusCheung/ACertainty/blob/main/ACertainty.ckpt)
5. Run ``train_lora.zsh``
6. Run ``test_lora.zsh`` and ``test_original.zsh``
7. Check ``trained/last-examples`` and ``trained/original-examples``

## Licence

- Images in ``img_reg``: CC0 1.0
- Other images: Check [images.md](images.md)
- Scripts and texts without copyright notice: CC0 1.0

## Reference

- <https://note.com/kohya_ss/n/nb20c5187e15a>
