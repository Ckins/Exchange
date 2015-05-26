crypto = require 'crypto'
config = require '../config.coffee'

util = exports

###
* encrypt password with sha1
* @param str: the original password
###
util.encrypt = (str)->
    sha1 = crypto.createHash 'sha1'
    sha1.update str
    sha1.digest 'hex'

###
* set locals user to recognize if logged in in the front-end
###
util.setLocalsUser = (req, res, next)->
    res.locals.user = req.session.user or null
    next()

