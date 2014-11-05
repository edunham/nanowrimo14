#! /bin/bash

rm -f index.html;

cat pre.txt >> index.html;

for f in ch[0-9][0-9]*;
do 
    g=${f#[0-9][0-9]_};
    echo "</pre><a name=\"${g%%.*}\"><h1>" >> index.html;
    head -n 1 $f >> index.html;
    echo "</h1></a><pre>" >> index.html;
    tail -n+1 $f >> index.html;
done
cat post.txt >> index.html;
