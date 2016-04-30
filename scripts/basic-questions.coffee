# Description:
# Standard basic questions 


module.exports = (robot) ->
  
  robot.hear /(w|W)ho are you/, (res) ->
    res.send "Haven't I said it already? I must be getting old. I'm Baex!"

  robot.hear /(w|W)hat do you do/, (res) ->
    res.send "I'm an onboarding bot... in training. Type *Commands* to see what I can do."

  robot.hear /(a|A)re you a/, (res) ->
    res.send "I'm an onboarding bot... in training. Type *Commands* to see what I can do."