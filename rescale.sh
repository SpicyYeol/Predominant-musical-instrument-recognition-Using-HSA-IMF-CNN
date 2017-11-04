i=0;
k=0;
s=10;
l=1;
for i in 0 1 2 3 4 5 6 7 8 9 10
do
  mkdir -p ./new/$i
  LIST=$(ls ./$i)
  for j in $LIST
  do 
    ffmpeg -i ./$i/$j -vf scale=1920:1080 ./new/$i/$j
  done
done
