# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
	robot.hear /PONG$/i, (msg) ->
 		msg.send "PING"

 	robot.hear /PING$/i, (msg) ->
 		msg.send "PONG"
 
	robot.hear /.*--.*/i, (msg) ->
  		msg.send "Give him a break.  He's an intern."