for p in ./packages/*
do
cp ./.gitignore $p/.gitignore
cp ./.npmignore $p/.npmignore
cp ./.travis.yml $p/.travis.yml
done