# Description:
#   "Makes your Hubot even more Clever™"
#
# Dependencies:
#   "cleverbot-node": "0.1.1"
#
# Configuration:
#   None
#
# Commands:
#
# Author:
#   ajacksified

cleverbot = require('cleverbot-node')

module.exports = (robot) ->
  c = new cleverbot()

  robot.respond /c (.*)/i, (msg) ->
    data = msg.match[1].trim()
    msg.send data
    c.write(data, (c) => msg.send(c.message))

