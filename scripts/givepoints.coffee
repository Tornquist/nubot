# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
	robot.hear /.*\+\+.*/i, (msg) ->
 		rand = Math.floor(Math.random() * 10) + 1
		if rand == 1
			msg.send "It really wasn't that good.  You're being too generous."
		else if rand == 2
			msg.send "Make it rain"
		else if rand == 3
			msg.send "+1"
		else if rand == 4
			msg.send "Have a gold star!"
		else if rand == 5
			msg.send "Really? That was mediocre at best."
		else if rand == 7
			msg.send "Go team!"
		else if rand == 8
			msg.send "Boiler Up!"
		else
			msg.send "It's about time."