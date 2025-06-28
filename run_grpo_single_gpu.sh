export HF_HOME=/mnt/LLM
export CUDA_VISIBLE_DEVICES=5

ACCELERATE_LOG_LEVEL=info \
    accelerate launch --config_file recipes/accelerate_configs/zero3_single_gpu.yaml \
    src/open_r1/grpo.py --config recipes/DeepSeek-R1-Distill-Qwen-1.5B/grpo/config_single_gpu.yaml \
    --vllm_mode colocate \
    # --main_process_port 6522