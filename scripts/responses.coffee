# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
  robot.hear /PONG$/i, (msg) ->
    msg.send "PING"
  robot.hear /gnubot*/i, (msg) ->
  	msg.send "DO NOT TRUST THE ENEMY"
  robot.hear /*--*/i, (msg) ->
  	msg.send "Give him a break.  He's an intern."
  robot.hear /*++*/i, (msg) ->
    msg.send "It really wasn't that good.  You're being too generous."