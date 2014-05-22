# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
  robot.hear /PONG$/i, (msg) ->
    msg.send "PING"

module.exports = (robot) ->
  robot.hear /gnubot/i, (msg) ->
  	msg.send "DO NOT TRUST THE ENEMY"

module.exports = (robot) ->
  robot.hear /--/i, (msg) ->
  	msg.send "Give him a break.  He's an intern."

 module.exports = (robot) ->
   robot.hear /++/i, (msg) ->
     msg.send "It really wasn't that good.  You're being too generous."