# Description:
#   Posts photos of sandwiches
#
# Dependencies:
#   None

# Commands:

sandwich = [
  "http://upload.wikimedia.org/wikipedia/commons/1/14/Ruben_sandwich.jpg",
  "http://www.frank151.com/storage/blog/interns/george/Sandwich_FRANK151.jpg",
  "http://gourmeteventscatering.com/wp-content/uploads/2013/01/catering.jpg",
  "http://www.liverightnowonline.com/wp-content/uploads/2012/01/sandwich.jpg",
  "http://4.bp.blogspot.com/-sdRzmxo-QZg/Ub-y9-QtQNI/AAAAAAAASX4/WMGU93A46c4/s1600/Ribbon+Sandwich+2.jpg",
  "http://justbento.com/files/bento/images/happy_sandwich.jpg",
  "http://www.foodpeoplewant.com/wp-content/uploads/2009/09/BELT-Sandwich.jpg",
  "http://i.huffpost.com/gen/1147099/thumbs/r-SANDWICH-MONSTERS-large570.jpg?6",
  "http://gregkihn.com/blog/wp-content/uploads/2012/11/turkey-sandwich.jpg"
]

module.exports = (robot) ->

  regex = /.*sudo make me a sandwich.*/i
  a = 0
  robot.hear regex, (msg) ->
    msg.send msg.random sandwich
    a = 1
  if (a == 0)
    regex = /^.*make me a sandwich.*/i

    robot.hear regex, (msg) ->
      msg.send "You have no authority here"
