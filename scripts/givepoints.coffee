# Description:
#   Responds to chat input in an annoying way
#
# Commands:

module.exports = (robot) ->
	robot.hear /.*\+\+.*/i, (msg) ->
  		msg.send "It's about time."