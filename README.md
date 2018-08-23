# README

##Prerequisites:

* npm or yarn
https://blog.risingstack.com/yarn-vs-npm-node-js-package-managers/
* Postgresql installed with a database named evil_chat_development
- `psql`
- `create database evil_chat_development;`

* Overmind
https://github.com/DarthSim/overmind
- lightweight alternative: https://github.com/DarthSim/hivemind

Overmind (process manager) is used to run the dev server and webpack-dev-server. It is configurable through the Procfile.


##Getting started:

To run: `overmind start` or `overmind s`

##Linting:

Precommit linting:
https://www.npmjs.com/package/git-pre-commit

Lint-staged:
https://github.com/okonet/lint-staged#configuration

*Linting Rules:*
eslint
(air-bnb and prettier)

stylelint


Configured in package.json to autorun as part of `git commit` for \*.js, \*.scss and \*.css files. The commit will be applied if the linting passes.
