# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - Reply with pong
#   hubot die - End hubot process

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send "PONG"

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /DIE$/i, (msg) ->
    msg.send "It's not that easy to get rid of me."
    #process.exit 0
  robot.respond /SHUTDOWN$/i, (msg) ->
    msg.send "Shutting Down."
    process.exit 0

