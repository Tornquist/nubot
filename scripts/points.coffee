# Description:
#   Comments on points given and taken
#
# Commands:

badMessages = [
  "Give him a break.  He's an intern."
  "I really don't think that was fair."
  "Take him down."
  "Taking points from interns shouldn't be allowed."
  "Get it together guys."
  "And another one bites the dust."
  "lol n00b"
  "hahahahahaha"
  "It's about time."
]

goodMessages = [
  "It really wasn't that good.  You're being too generous."
]

lost_points = (msg) ->
  msg.send msg.random badMessages

gain_points = (msg) ->
  msg.send msg.random goodMessages

module.exports = (robot) ->
  r = new RegExp ".*--.*", "i"
  robot.hear r, gain_points