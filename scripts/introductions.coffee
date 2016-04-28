# Description:
# Some introductory exchanges to get started


module.exports = (robot) ->
  
  # INTRO
  
  enterReplies = ['Hi there',  'Hello friend!', 'Hello?']
  
  
  # HELLO
  
  robot.hear /Hello/, (res) ->
    res.send "*Oh, I'm so glad someone finally showed up!* Not that time matters for a bot, but a little company is always nice. My name is Baexandra, but you can call me Baex. When you are ready to get started, just type *Start*"
    
  robot.hear /Hi/, (res) ->
    res.send "*Oh, I'm so glad someone finally showed up!* Not that time matters for a bot, but a little company is always nice. My name is Baexandra, but you can call me Baex. When you are ready to get started, just type *Start*"
    
  #Step 1
  
  robot.hear /Start/, (res) ->
    res.send "Excellent! Why don't we begin by exploring *Quantum*, the most marvelous design system ever conceived? Type *Quantum* to hear the story."
    
  robot.hear /Quantum/, (res) ->
    res.send "Well, then. Let's see... Quantum is not just a set of templates, but a complete design system. It started about two years ago, and has been evolving ever since. I believe the best way to get into it is by taking a look at the Styleguide. Let's do that, shall we? Go ahead and type *SG*. No hurries..."
    
  robot.hear /SG/, (res) ->
    res.send "I knew you couldn't wait. Unfortunately, I'm a very limited bot, so I can't send you the Styleguide. Or tell you how to get it, as I am also hosted in a public site. Let's pretend we just went through the document and move on, shall we? Type *Continue*."
    
  robot.hear /Continue/, (res) ->
    res.send "Well done! You have managed to *complete this tutorial without learning anything at all!* Unfortunately, my creator ran out of time and imagination so we won't be able to continue our tour. It was a pleasure to help you, come back soon, I swear I will prepare some jokes. Have a nice day! *Bot OUT and OVER.*"
  
