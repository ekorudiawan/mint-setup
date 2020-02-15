conda activate rl_env
# https://github.com/openai/gym/archive/0.16.0.tar.gz
# tar -xvzf 0.16.0.tar.gz 
# cd gym-0.16.0
# pip install -U -e '.[all]'
pip install -U gym
pip install -U gym[classic_control]
pip install -U gym[box2d]
pip install -U PyBullet
conda install pytorch torchvision cudatoolkit=10.1 -c pytorch