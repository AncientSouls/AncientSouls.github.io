find ./doc/ ! -name '.git' ! -name 'doc' -exec rm -rf {} +

typedoc --name "AncientSouls Documentation" --module commonjs --out ./doc/ --excludeExternals --exclude "**/+(node_modules|tests)/**" --disableOutputCheck --ignoreCompilerErrors ./packages

for p in ./packages/*
do
node_modules/.bin/typedoc --theme markdown --module commonjs --out $p/doc --mode file --excludeExternals --externalPattern "**/node_modules/**" --exclude "**/node_modules/**" --disableOutputCheck --ignoreCompilerErrors $p
done