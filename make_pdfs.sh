for folder in $(ls papers | egrep -i '^[a-z-]+$' ); do
 cd papers/$folder
 myst build --pdf
 cd ../..
done
cd editornote
myst build --pdf
cd ../
pdftk editornote/article.pdf papers/*/article.pdf cat output morganton2024.pdf