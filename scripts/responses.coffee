# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
  robot.respond /PONG$/i, (msg) ->
    msg.send "PING"
