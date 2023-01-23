
# Example of LoRA in diffusers

```bash
# Install dependencies
poetry install --only main

# Run
poetry run sh ./train_lora.sh

# Test
poetry run python ./test.py --lora ./models/pytorch_lora_weights.bin -o ./models/example/1 --prompt "Wikipe-tan, school, uniform, 1girl, hold piece of cake"
```

## Example

### Input

![An example of training image](img_train_512x512/7.png)

### Generated image

![An example of generated image](generated_image_example.png)
