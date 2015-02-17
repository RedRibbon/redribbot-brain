Rx = require 'rx'
FB = require 'firebase'

fb = new FB 'https://redribbot.firebaseio.com/'
token = process.env['FIREBASE_TOKEN']

authSource = Rx.Observable.create (observer) ->
  fb.authWithCustomToken token, (err, auth) ->
    if err
      observer.onError err
    else
      observer.onNext auth

published = authSource.publishValue (null)
published.connect()

exports.auth = published.subscribe.bind published

exports.root = fb

