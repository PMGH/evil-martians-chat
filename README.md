# README

Follows a tutorial by EvilMartians.
https://evilmartians.com/chronicles/evil-front-part-1


## Prerequisites:

* npm or yarn
https://blog.risingstack.com/yarn-vs-npm-node-js-package-managers/
* Postgresql installed with a database named **evil_chat_development**

   `psql`  
   `create database evil_chat_development;`  

* Overmind
https://github.com/DarthSim/overmind

   Hivemind is a lightweight alternative: https://github.com/DarthSim/hivemind  


## Getting started:

To run: `overmind start` or `overmind s`

*Overmind (process manager) is used to run the dev server and webpack-dev-server. It is configurable through the Procfile.*

## Linting:

* Precommit linting:
https://www.npmjs.com/package/git-pre-commit

* Lint-staged:
https://github.com/okonet/lint-staged#configuration

Precommit and lint-staged are configured in package.json to autorun as part of `git commit` for \*.js, \*.scss and \*.css files. The commit will be applied if the linting passes.

### Linting Rules:
* eslint
(air-bnb and prettier)

* stylelint
