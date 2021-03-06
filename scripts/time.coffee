# Description:
#   Returns local time in given city.
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_WWO_API_KEY
#   HUBOT_WWO_API_URL
#
# Commands:
#   hubot time in <city> - Get current time in city
#
# Notes
#   Request an WWO API KEY in http://www.worldweatheronline.com/
#   The url is likely to be something like http://api.worldweatheronline.com/free/v1/tz.ashx
#
#   City parameter can be:
#     city
#     city, country
#     ip address
#     latitude and longitude (in decimal)
#
# Author:
#   gtoroap
#

say_joke = (msg) ->
  msg.http('http://jokels.com/random_joke').get() (err, res, body) ->
    joke = JSON.parse(body).joke
    vote = joke.up_votes - joke.down_votes
    if (joke.is_kid_safe == true)
      msg.send "#{ joke.question }"
      setTimeout ->
        msg.send "#{ joke.answer }"
       , 4000
    else
      msg.send "Time to get a watch."

process_time = (msg,location) ->
  msg.http(process.env.HUBOT_WWO_API_URL)
    .query({
      q: location
      key: process.env.HUBOT_WWO_API_KEY
      format: 'json'
    })
    .get() (err, res, body) ->
      try
        result = JSON.parse(body)['data']
        city = result['request'][0]['query']
        currentTime = result['time_zone'][0]['localtime'].slice 11
        min = parseInt(currentTime.split(':')[1])
        if min > 25 && min < 35
          msg.send "It's joke-thirty!"
          say_joke(msg)
        else
          msg.send "Current time in #{city} ==> #{currentTime}"
      catch error
        msg.send "Sorry, no city found. Please, check your input and try it again"

module.exports = (robot) ->
  robot.respond /time in (.*)/i, (msg) ->
    unless process.env.HUBOT_WWO_API_KEY
      msg.send 'Please, set HUBOT_WWO_API_KEY environment variable'
      return
    unless process.env.HUBOT_WWO_API_URL
      msg.send 'Please, set HUBOT_WWO_API_URL environment variable'
      return
    location = msg.match[1]
    process_time(msg, location)
  robot.respond /what time is it?/i, (msg) ->
    process_time(msg, "Chicago")
