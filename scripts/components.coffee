# Components: Teaser
#

teasers = [
  "http://imgur.com/mYPVriB",
  "http://imgur.com/IhrUoQW",
  "http://imgur.com/fKsgePR"
]

ctas = [
  "http://imgur.com/4LeiuGM",
  "http://imgur.com/brtAJr6",
  "http://imgur.com/NIaBSGH"
]

module.exports = (robot) ->

  # Show a random:
  # [teaser]
  robot.hear /(s|S)how me (a |one )(teaser|Teaser)/, (msg) ->
    msg.send msg.random teasers
  # [CTA]
  robot.hear /(s|S)how me (a |one )(cta|CTA|button|Button|link|Link)/, (msg) ->
    msg.send msg.random ctas

  # Show all:
  # [teasers]
  robot.hear /(s|S)how me all (teaser|Teaser)/, (msg) ->
    for teaser in teasers
      msg.send teaser
  # [ctas]
  robot.hear /(s|S)how me all (cta|CTA|ctas|CTAs|CTAS|button|Button|link|Link)/, (msg) ->
    for cta in ctas
      msg.send cta

  # Show [teaser] by number
  robot.hear /(s|S)how me (t|T)easer (.*)/i, (msg) ->
    teaserNumber = escape(msg.match[1])

    unless teaserNumber > teasers.length
      msg.send teasers[teaserNumber - 1]
    else
      msg.send "I am sorry, we only have " + (teasers.length) + " teasers."
