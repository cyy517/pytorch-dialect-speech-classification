mkdir fb40

# »����ADº��·¼¯ºͿª·¢¼¯µœ��˽¾ށб¼þ
find "/Work18/2017/linan/ASR/keda/aichallenge/aichallenge/dataset/pcmafter_vad" -name '*train*.wav' >train_list_noVAD.txt
find "/Work18/2017/linan/ASR/keda/aichallenge/aichallenge/dataset/pcmafter_vad" -name '*dev*.wav'   >dev_list_noVAD.txt
cat train_list_noVAD.txt dev_list_noVAD.txt >train_dev_list_noVAD.txt

# ͡ȡFB40άַ͘ 
perl get_fb.pl train_dev_list_noVAD.txt fb40 20
