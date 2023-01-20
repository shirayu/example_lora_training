#!/usr/bin/env zsh

MODEL_NAME=$(realpath ACertainty.ckpt)
TRAIN_DATA_DIR=$(realpath img_train)
TRAIN_REG_DIR=$(realpath img_reg)
OUTPUT_DIR=$(realpath trained)

accelerate launch \
    --num_processes 1 \
    --num_machines 1 \
    --mixed_precision "fp16" \
    --dynamo_backend "no" \
    train_network.py \
    --pretrained_model_name_or_path=${MODEL_NAME} \
    --train_data_dir=${TRAIN_DATA_DIR} \
    --output_dir=${OUTPUT_DIR} \
    --reg_data_dir=${TRAIN_REG_DIR} \
    --prior_loss_weight=1.0 \
    --resolution="512,704" \
    --train_batch_size=1 \
    --lr_warmup_steps=0 \
    --lr_scheduler='constant' \
    --learning_rate=5e-4 \
    --max_train_epochs=15 \
    --use_8bit_adam \
    --xformers \
    --mixed_precision=fp16 \
    --save_every_n_epochs=1 \
    --clip_skip=2 \
    --seed=42 \
    --network_dim=4 \
    --network_module=networks.lora \
    --save_model_as=safetensors \
    --save_precision="fp16"

#    --unet_lr=1.5e-4 \
#    --text_encoder_lr=6e-5 \
