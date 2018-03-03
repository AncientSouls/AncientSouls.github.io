npm install

for m in ./packages/*
do
(cd $m && npm i)
npm link $m
done

for m in ./packages/*
do
bash "${m}/dev-install-pkg.sh"
done