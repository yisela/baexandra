# Description:
# Some introductory exchanges to get started


module.exports = (robot) ->  
  
  # First Hello
  robot.hear /(h|H)(ello|ello)/i, (res) ->
    res.send "*I'm so glad you're here!* I'm _Baexandra_, but you can call me _Baex_. Type *Commands* to see what I can do, *Library* to explore components or *Styleguide* to download documentation."

  # Download styleguide
  robot.hear /(s|S)tyleguide|SG/, (res) ->
    res.send "You can download the *Styleguide* here: http://tinyurl.com/hag6kuq."
  
  # Commands
  robot.hear /(c|C)omm(s|ands)/, (msg) ->
    msg.send "These are the commands I know:"
    msg.send "• I can answer any _YES/NO_ questions (don't question my wisdom.)"
    msg.send "• Type *cute me* for something nice, or *humanity* for something mean,"
    msg.send "• Type *library* to explore components, or *styleguide* to download documentation."

  robot.hear /(h|H)umanity/, (msg) ->
    msg.send "Welcome to _Cards Against Humanity!_"
    msg.send "• Type *q card* for a question, *card me* for one answer or *card 2* for two."

  # Library
  robot.hear /(l|L)ibrary|(c|C)omponent/, (msg) ->
    msg.send "Welcome to the *Library*. Here you can access all Quantum documentation."
    msg.send "Type *Show me all* or *Show me one* followed by the name of the component you want to explore. For example, *Show me all Teasers* or *Show me one Teaser*."
