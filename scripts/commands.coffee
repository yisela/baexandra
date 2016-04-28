# Commands
#

module.exports = (robot) ->

  robot.hear /commands/, (msg) ->
    msg.send "I can't do much for now, but if you type *cute me* I'll show you something nice!"