#!/bin/bash
for ((i=2;i<=9;i+=1)); do
  thisdir=`pwd`;
  thishost=`hostname`;
  echo "hm$i";
  ssh -q hm$i nohup rsync -avzu $thisdir/ $thishost:$thisdir;
done
