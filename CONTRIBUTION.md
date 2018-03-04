# How to Contribute

## Workflow

### Init

```sh
git clone git@github.com:AncientSouls/AncientSouls.github.io.git dev && cd dev
npm run dev-init
```

> This operation can be safely repeated many times. If no changes were made to the packages, there should be nothing to commit after it command has been executed.

### Global dev scripts

```sh
# Install packages dependencies, and link with each other, for convenient development
npm run dev-install
```

```sh
# Check tslint, recompile typescript, run tests
npm run dev-check

# or:

# Lint all packages
npm run dev-tslint

# Recompile all packages from src to lib and tasks directories
npm run dev-tsc

# Run compiled tests for all packages
npm test
```

```sh
# Build for push and publish
npm run dev-build

# or:

npm run dev-check

# Copy standard .gitignore and .npmignore files
npm run dev-normalize

# Generate html ./doc and markdown ./package/package-name/doc documentations
npm run dev-doc
```

> Calling all sequentially identical with: `npm run dev-init`

### Local package scripts

```sh
# Go into
cd packages/ancient-mixins

# Install all one package dependencies
npm i

# Recompile package from src to lib and tasks directories
npm run tsc

# Run compiled tests for package
npm test
```

> All packages can be cloned and development alone, or inside dev environment.

### Tips

#### Autom

```sh
# add, commit and push dev repo and all packages (if has something to add, commit and push)
M="message" npm run dev-all-acp
# attempt! you must build before
```

#### Manual

```sh
# add, commit and push dev environment
git add . -A && git commit -m "message" && git push

# add, commit and push generated doc
(cd doc && git add . -A && git commit -m "message" && git push)

# add, commit and push all packages
for d in ./packages/* ; do (cd $d && git add . -A && git commit -m "message" && git push); done
```