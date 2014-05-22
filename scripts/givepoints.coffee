# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
	robot.hear /.*\+\+.*/i, (msg) ->
 		rand = Math.floor(Math.random() * 10) + 1
		if rand == 1
			msg.send "It really wasn't that good.  You're being too generous."
		else
			msg.send "It's about time."