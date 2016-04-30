# Commands
#

module.exports = (robot) ->

  robot.hear /commands/, (msg) ->
    msg.send "I can't do much yet, but I can answer any YES/NO questions you have (only those!), and I can entertain you in two ways: Type *cute me* for something nice, or *humanity* for a game."

  robot.hear /humanity/, (msg) ->
    msg.send "Welcome to Cards Against Humanity! Type *q card* for a question, *card me* for one answer, or *card 2* for two."