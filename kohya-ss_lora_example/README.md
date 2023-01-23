
# Example of LoRA with kohya-ss's implementation

## Training

1. Setup [kohya-ss/sd-scripts](https://github.com/kohya-ss/sd-scripts)
    - Tested on ``v0.4.0 (0ca0642)``
2. Move to ``sd-scripts`` directory
3. Copy all files in this repository
4. Download ``ACertainty.ckpt`` from [the repo](https://huggingface.co/JosephusCheung/ACertainty/blob/main/ACertainty.ckpt)
5. Run ``train_lora.zsh``
6. Run ``test_lora.zsh`` and ``test_original.zsh``
7. Check ``trained/last-examples`` and ``trained/original-examples``
