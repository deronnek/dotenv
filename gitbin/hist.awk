#!/usr/bin/gawk -f
# Should be run with -vcol=colnum -vnbins=nbins
# and optionally -vtype=pct
# if you're planning on running the result through gnuplot "with lines"
# then you probably want to pipe through sort -gk1,1
BEGIN {
  count = 0;
}

{
  if(NR==1) {
    min=$col;
    max=$col;
  }
  else {
    if($col<min) {
      min = $col;
    }
    if($col>max) {
      max = $col;
    }
  }
  val[NR] = $col;
  count++;
}
END {
  binwidth = (max-min)/(nbins-1);
  for(i in val) {
    bucket = int(val[i]/binwidth);
    hist[bucket]++;
  }
  for (i in hist) {
    if(type == "pct") {
      print i*binwidth,(hist[i]/count);
    }
    else {
      print i*binwidth,hist[i];
    }
  }

}
