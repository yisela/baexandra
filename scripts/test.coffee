# Components: Teaser
#

teaser = [
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe1.jpg",
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe4.jpg",
  "https://s-media-cache-ak0.pinimg.com/564x/4a/e4/16/4ae4163ffeaa251ef41980dfa6a3ea01.jpg"
]

teasers = [
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe1.jpg",
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe4.jpg",
  "https://s-media-cache-ak0.pinimg.com/564x/4a/e4/16/4ae4163ffeaa251ef41980dfa6a3ea01.jpg"
]

module.exports = (robot) ->

  robot.hear /show me one/i, (msg) ->
    msg.send msg.random teaser

  robot.hear /show me all/i, (msg) ->
    msg.send teasers1

  robot.respond /all/i, (res) ->
    res.send teasers