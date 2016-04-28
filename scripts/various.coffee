# Components: Teaser
#

teaser = [
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe1.jpg",
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe4.jpg",
  "https://s-media-cache-ak0.pinimg.com/564x/4a/e4/16/4ae4163ffeaa251ef41980dfa6a3ea01.jpg"
]

wireframe = [
  "https://speckycdn-sdm.netdna-ssl.com/wp-content/uploads/2011/05/wireframe-sketch-12.jpg"
]
mockup = [""]

module.exports = (robot) ->

  robot.hear /show me one/i, (msg) ->
    msg.send msg.random teaser

  robot.respond /wireframe/i, (res) ->
    res.reply wireframe



# Description:
#   Cute me is a way to get pictures of cute things
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot cute me - Receive a cute thing
#   unicorn chaser - Receive a cute thing

module.exports = (robot) ->
  robot.respond /cute me/, (msg) ->
    cuteMe(msg)

  robot.hear /unicorn chaser/, (msg) ->
    cuteMe(msg)

  cuteMe = (msg) ->
    msg.http('http://www.reddit.com/r/aww/.json')
      .header('Accept', 'application/json')
      .get() (err, response, body) ->
        results = JSON.parse(body)
        msg.send (msg.random results.data.children).data.url.concat('.png')