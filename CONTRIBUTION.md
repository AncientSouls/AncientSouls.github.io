# How to Contribute

## Automation

- any commits tests localy current package with `npm run test`
- in `master` commits call auto npm publishing

## Branches

We use default git-flow branch names.

- `master` only for pull requests commits equal with release one version, accepts changes only from `release` branch
- `release` for prepare package to publish (package.json version changes, merge from `master` and from `develop`)
- `develop` for for hot development and gettings pull from other branches

## Simple sequence

```sh
git clone -b dev git@github.com:AncientSouls/AncientSouls.github.io.git dev && cd dev

# Operations on the dev environment

# Safely repetitive operations
B="develop" npm run dev-init # install all npm deps, load all packages from D branch/commit/tag, compile, lint and test all packages
npm run dev-install # npm install && npm run dev-install-packages && npm run dev-set-links && npm run dev-use-links (install all deps for all packages, link all ancient packages together)
npm run dev-check # lint, compile, test all packages
npm run dev-tslint # lint all packages
npm run dev-tsc # compile all packages
npm run dev-test # test all packages

# Not safe, change the packages operations
npm run dev-build # dev-check, dev-normalize, dev-doc
npm run dev-normalize # copies the same .travis and sh packages to all packages
npm run dev-doc # regenerate ./doc

# Not safe, commits
M="message" npm run dev-acp # add, commit, push all
M="message" npm run dev-acp-dev # add, commit, push dev repo
M="message" npm run dev-acp-doc # add, commit, push doc repo
M="message" npm run dev-acp-packages # add, commit, push all packages

# Tips and helpers

# useful cicle for apply sh to packages
for p in ./packages/* ; do (cd $p && your-command); done

# Operations on the one package

npm run tsc # compile ./src/lib and ./src/tests to ./lib and ./tests
npm run test # run tests only for current package
npm run tslint # run tslint only for current package
npm run dev-test # clone dev env into ./.dev directory, and dev-init it but relink current package for use it for other packages (dev env clone all packages last dev branch versions for test)
npm run dev-link # use npm link for needed to this package ancient-* dependencies
```