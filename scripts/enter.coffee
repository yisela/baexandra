# Components: Teaser
#

enterReplies = ['Hi', 'Target Acquired', 'Hello friend.', 'I see you']
leaveReplies = ['Are you still there?', 'Target lost', 'Searching']

module.exports = (robot) ->
  robot.enter (res) ->
    res.send res.random enterReplies
  robot.leave (res) ->
    res.send res.random leaveReplies