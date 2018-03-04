# How to Contribute

## Automation

- any commits tests localy current package with `npm run pkg-test`
- in `dev`, `release` and `master` commits tests in dev environment with `npm run dev-test`
- in `master` commits also call auto publishing

## Branches

- `master` only for pull requests commits equal with release one version, accepts changes only from `release` branch
- `release` for prepare package to publish (package.json version changes, merge from `master` and from `dev`)
- `dev` for for hot development and gettings pull from other branches

## Simple sequence

```sh
git clone git@github.com:AncientSouls/AncientSouls.github.io.git dev && cd dev

# Operations on the dev environment

# Safely repetitive operations
npm run dev-init # install all npm deps, load all packages from dev branch, compile, lint and test all packages
npm run dev-install # npm install && npm run dev-install-packages && npm run dev-set-links && npm run dev-use-links (install all deps for all packages, link all ancient packages together)
npm run dev-check # lint, compile, test all packages
npm run dev-tslint # lint all packages
npm run dev-tsc # compile all packages
npm run dev-test # test all packages

# Not safe, change the packages operations
npm run dev-build # dev-check, dev-normalize, dev-doc
npm run dev-normalize # copies the same .travis and sh packages to all packages
npm run dev-doc # regenerate ./doc and ./package/*/doc, changes to file names are inevitable

# Not safe, commits
M="message" npm run dev-all-acp # if has changes, add, commit and push all with message into all repositories includes root dev repository (without doc submodule in root)

# Tips and helpers

# useful cicle for apply sh to packages
for p in ./packages/* ; do (cd $p && your-command); done

# Operations on the one package

npm run tsc # compile ./src/lib and ./src/tests to ./lib and ./tests
npm run test # run tests only for current package
npm run dev-test # clone dev env into ./.dev directory, and dev-init it but relink current package for use it for other packages (dev env clone all packages last dev branch versions for test)
npm run dev-link # use npm link for needed to this package ancient-* dependencies
```