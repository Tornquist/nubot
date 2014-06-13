# Description:
#   Returns a random joke from jokels.com
#
# Dependencies:
#   None
#
# Commands:
#   hubot joke/jokel/jokels - Returns a random joke from jokels.com
#
# Author:
#   sylturner

say_joke = (msg) ->
  msg.http('http://jokels.com/random_joke').get() (err, res, body) ->
    joke = JSON.parse(body).joke
    vote = joke.up_votes - joke.down_votes
    if (joke.is_kid_safe == true)
      msg.send "#{ joke.question }"
      setTimeout ->
        msg.send "#{ joke.answer }"
       , 4000

module.exports = (robot) ->
  robot.respond /(jokel|jokels|joke)/i, (msg) ->
    say_joke(msg)
