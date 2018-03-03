for p in ./packages/*
do
cp ./.gitignore $p/.gitignore
cp ./.npmignore $p/.npmignore
done