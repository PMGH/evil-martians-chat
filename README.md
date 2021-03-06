# README

>Follows a tutorial by EvilMartians.
https://evilmartians.com/chronicles/evil-front-part-1

The application is a **Ruby on Rails** real-time Chat application that uses **ActionCable** (websockets) to broadcast messages to listeners.

It uses a component-based file structure (see frontend directory) with Webpack (no sprockets) for the asset pipeline.

![Login](public/login.png)

![Chat](public/chat.png)


## Where can I try it out?

The application is currently available on Heroku at:
https://evilchat-test.herokuapp.com/


---

## Getting started:

### Prerequisites:

* npm or yarn https://blog.risingstack.com/yarn-vs-npm-node-js-package-managers/
* Postgresql installed with a database named **evil_chat_development**

   ```sql
   psql
   ```  
   ```sql
   create database evil_chat_development;
   ```  
   ```sql
   \q
   ```

   >`psql` starts Postgresql on the command line and `\q`  quits out of it.

* Overmind
https://github.com/DarthSim/overmind

  >Note: Hivemind is a lightweight alternative: https://github.com/DarthSim/hivemind  



### To run:
```shell script
overmind s -f Procfile.dev
```

**Ensure you have the Prerequisites above.**

>Overmind (process manager) is used to run the dev server and webpack-dev-server. It is configurable through the Procfile.dev

>Note: there are 2 Procfiles. One for Production `Procfile` and one for Development `Procfile.dev` environments. `Procfile.dev` includes the webpack-dev-server.*


---

## Precommit Linting:

* Precommit linting:
https://www.npmjs.com/package/git-pre-commit

* Lint-staged:
https://github.com/okonet/lint-staged#configuration

  >Precommit and lint-staged are configured in package.json to autorun as part of `git commit` for \*.js, \*.scss and \*.css files. The commit will be applied if the linting passes.

### Linting Rules:
* eslint
(air-bnb and prettier)

* stylelint

## Prepush Testing

* Prepush testing:
https://github.com/sturdynut/git-prepush-hook

  >Prepush is configured in package.json to run `rails test` when `git push` is used.

---
