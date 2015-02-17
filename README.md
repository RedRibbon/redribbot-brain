# redribbot-brain

A tiny brain for [redribbot](https://github.com/redribbon/redribbot) scripts.

## Install

```
npm install redribbot-brain
```

## Usage

`FIREBASE_TOKEN` should be on environemnt variable.

```coffee
B = require 'redribbot-brain'

# firebase root ref can be accessed via B.root
root   = B.root
keyRef = root.child 'key'

# callback will be called when authentication complete successfully
B.auth (auth) ->
  return unless auth
  # fetch data or other initialization process
```
