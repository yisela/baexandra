# Components: Teaser
#

teasers = [
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe1.jpg",
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe4.jpg",
  "https://s-media-cache-ak0.pinimg.com/564x/4a/e4/16/4ae4163ffeaa251ef41980dfa6a3ea01.jpg"
]

module.exports = (robot) ->

  robot.hear /show me one teaser/i, (msg) ->
    msg.send msg.random teasers

  robot.respond /show me all teasers/i, (res) ->
    for teaser in teasers
      res.reply teaser

  robot.hear /show me teaser (.*)/i, (msg) ->
    teaserNumber = escape(msg.match[1])

    unless teaserNumber > teasers.length
      msg.send teasers[teaserNumber - 1]
    else
      msg.send "I am sorry honey, we only have " + (teasers.length) + " teasers."
