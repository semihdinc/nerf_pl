BLENDER_DIR=/home/ubuntu/src/data/Street_Mesh/lego
EV_DIR=/home/ubuntu/src/data/CTTBLO004/CTTBLO004_ROI_1_DS10

python train.py \
   --dataset_name evdata \
   --root_dir $EV_DIR \
   --N_importance 64 --img_wh 819 432 --noise_std 0 \
   --num_epochs 20 --batch_size 1024 \
   --optimizer adam --lr 5e-4 --lr_scheduler cosine \
   --exp_name exp \
   --data_perturb occ \
   --encode_t --beta_min 0.1

# python train.py \
#    --dataset_name blender \
#    --root_dir $BLENDER_DIR \
#    --N_importance 64 --img_wh 400 400 --noise_std 0 \
#    --num_epochs 20 --batch_size 1024 \
#    --optimizer adam --lr 5e-4 --lr_scheduler cosine \
#    --exp_name exp \
#    --data_perturb occ \
#    --encode_t --beta_min 0.1