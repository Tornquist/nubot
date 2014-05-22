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
		else if rand == 2
			msg.send "I really don't think that was fair."
		else if rand == 3
			msg.send "Take him down."
		else if rand == 4
			msg.send "Taking points from interns shouldn't be allowed."
		else if rand == 5
			msg.send "Get it together guys."
		else if rand == 6
			msg.send "And another one bites the dust."
		else if rand == 7
			msg.send "lol n00b"
		else if rand == 8
			msg.send "hahahahahaha"
		else
			msg.send "It's about time."

	robot.hear /.*\+\+.*/i, (msg) ->
		msg.send "It really wasn\'t that good.  You\'re being too generous."

    robot.hear /gnubot.*/i, (msg) ->
  		msg.send "DO NOT TRUST THE ENEMY"