#!/usr/bin/env zsh

MODEL_NAME=$(realpath ACertainty.ckpt)
OUTPUT_DIR=$(realpath trained)
mkdir -p "${OUTPUT_DIR}"
TEST_PROMPT=$(realpath ./test_prompt.txt)

TARGET=${TARGET:-last}

python ./gen_img_diffusers.py \
    --ckpt=${MODEL_NAME} \
    --outdir=${OUTPUT_DIR}/${TARGET}-examples \
    --xformers \
    --fp16 \
    --from_file "${TEST_PROMPT}" \
    --sampler 'ddim' \
    --network_mul 1.0 \
    --scale 12 \
    --step 30 \
    --images_per_prompt 2 \
    --batch_size 2 \
    --seed 42 \
    --sequential_file_name \
    --clip_skip=2 \
    --network_module=networks.lora \
    --network_weights=${OUTPUT_DIR}/${TARGET}.safetensors
