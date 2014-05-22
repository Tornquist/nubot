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
		rand = Math.floor(Math.random() * 10) + 1
		if rand == 1
			msg.send "Give him a break.  He's an intern."
		else
			msg.send "It's about time."

 	robot.hear /.*\+\+.*/i, (msg) ->
  		msg.send "It really wasn't that good.  You're being too generous."

    robot.hear /gnubot.*/i, (msg) ->
  		msg.send "DO NOT TRUST THE ENEMY"