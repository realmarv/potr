#!/bin/bash

POTR_OUT='/content/potr/potr_out'
H36M='/content/potr/data'

python training/transformer_model_fn.py \
  --model_prefix=${POTR_OUT} \
  --batch_size=16 \
  --data_path=${H36M} \
  --learning_rate=0.0001 \
  --max_epochs=500 \
  --steps_per_epoch=200 \
  --loss_fn=l1 \
  --model_dim=128 \
  --num_encoder_layers=4 \
  --num_decoder_layers=4 \
  --num_heads=4 \
  --dim_ffn=2048 \
  --dropout=0.3 \
  --lr_step_size=400 \
  --learning_rate_fn=step \
  --warmup_epochs=100 \
  --pose_format=rotmat \
  --pose_embedding_type=gcn_enc \
  --dataset=h36m_v2 \
  --pre_normalization \
  --pad_decoder_inputs \
  --non_autoregressive \
  --pos_enc_alpha=10 \
  --pos_enc_beta=500 \
  --predict_activity \
  --action=all
