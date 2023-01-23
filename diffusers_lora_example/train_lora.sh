#!/usr/bin/env sh

accelerate launch \
    --num_processes 1 \
    --num_machines 1 \
    --mixed_precision "fp16" \
    --dynamo_backend "no" \
    train_dreambooth_lora.py \
    --pretrained_model_name_or_path="JosephusCheung/ACertainty" \
    --instance_data_dir="img_train_512x512" \
    --output_dir="models" \
    --instance_prompt="Wikipe-tan girl" \
    --resolution=512 \
    --train_batch_size=1 \
    --sample_batch_size=1 \
    --gradient_accumulation_steps=1 \
    --gradient_checkpointing \
    --learning_rate=1e-4 \
    --lr_scheduler="constant" \
    --lr_warmup_steps=0 \
    --checkpointing_steps=100 \
    --mixed_precision=fp16 \
    --max_train_steps=1000
