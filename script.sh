cd /Users/christinalisaloidolt/AndroidStudioProjects/flutter_app_way/WAY_APP/assets
for f in **/ ; do
    echo "$f"
    echo "$f" > tmp
    sed 's/ /_/g' tmp > tmp2
    cat tmp2
    mv "$f" $(cat tmp2)
done

for f in **/** ; do
    echo "$f"
    echo "$f" > tmp
    sed 's/ /_/g' tmp > tmp2
    cat tmp2
    mv "$f" $(cat tmp2)
done

rm tmp
rm tmp2