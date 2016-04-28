# Description:
#   Standard basic questions - introductions, bot questioning...


module.exports = (robot) ->
  
  # WHO ARE YOU
  
  robot.hear /who are/!, (res) ->
    res.send "Haven't I said it already? I must be getting old. I'm Baex!"
