#!/usr/bin/env zsh

MODEL_NAME=$(realpath ACertainty.ckpt)
TEST_PROMPT=$(realpath ./test_prompt.txt)
OUTPUT_DIR=$(realpath trained)
mkdir -p "${OUTPUT_DIR}"
DIM=128

TARGET=${TARGET:-last}

python ./gen_img_diffusers.py \
    --ckpt=${MODEL_NAME} \
    --outdir=${OUTPUT_DIR}/original-examples \
    --xformers \
    --fp16 \
    --from_file "${TEST_PROMPT}" \
    --sampler 'ddim' \
    --scale 12 \
    --step 30 \
    --images_per_prompt 4 \
    --batch_size 4 \
    --seed 42 \
    --sequential_file_name \
    --clip_skip=2
