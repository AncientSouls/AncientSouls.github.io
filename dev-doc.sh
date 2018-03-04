find ./doc/ ! -name '.git' ! -name 'doc' -exec rm -rf {} +

typedoc --readme ./README.md --name "AncientSouls Documentation" --module commonjs --out ./doc/ --excludeExternals --exclude "**/+(node_modules|tests)/**" --disableOutputCheck --ignoreCompilerErrors ./packages

for p in ./packages/*
do
node_modules/.bin/typedoc --readme $p/README.md --theme markdown --module commonjs --out $p/doc --mode file --exclude "**/+(node_modules|tests)/**" --disableOutputCheck --ignoreCompilerErrors $p
done