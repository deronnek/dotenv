#!/usr/bin/gawk -f
# SC == show columns
# Show the column labels of a file. sc -F also works as expected
{
  if(NR==1) {
    print $0;
    for(i=1; i<=NF; i++){
      print i,$i;
    }
  }
}
