# module load cuda/9.1.1
# export PATH="/home/sre/jinli/anaconda2/bin:$PATH"
#if [ ! -d ./log ];then
#mkdir log 
#fi

# �������VAD��ѵ�����Ϳ����������������б��ļ�
find "/Work18/2017/linan/ASR/keda/newtrain/aichallenge/train/featno_75/fb40" -name '*train*.fb' >train_list_fb.txt
find "/Work18/2017/linan/ASR/keda/newtrain/aichallenge/train/featno_75/fb40" -name '*dev*.fb'   >dev_list_fb.txt


# ת���ɴ���ǩ���б�
perl get_list.pl train_list_fb.txt lanKey.txt label_train_list_fb.txt
perl get_list.pl dev_list_fb.txt   lanKey.txt label_dev_list_fb.txt

# ѵ�����磬������train.py��������
#nohup python train.py  >log/TrainLan.log 2>&1&

python3 train.py 
