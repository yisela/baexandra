# Description:
# Some introductory exchanges to get started


module.exports = (robot) ->  
  
  # HELLO
  
  robot.hear /Hello/, (res) ->
    res.send "*I'm so glad you're here!* I'm Baexandra, but you can call me Baex. Type *commands* to see what I can do, or let me show and type *Start*."
    
  robot.hear /Hi/, (res) ->
    res.send "*I'm so glad you're here!* I'm Baexandra, but you can call me Baex. Type *commands* to see what I can do, or *Start* to get things going."
    
  #Step 1
  
  robot.hear /Start/, (res) ->
    res.send "Excellent! Why don't we begin by exploring *Quantum*? Go ahead and type that. By the way, words in bold are things I know about, so you can type those any time."
    
  robot.hear /Quantum/, (res) ->
    res.send "Well, then. Let's see... Quantum is not just a set of templates, but a complete style system. I believe the best way to get into it is by taking a look at the *Styleguide*. No hurries..."
    
  robot.hear /SG/, (res) ->
    res.send "I knew you couldn't wait. Unfortunately, I'm a very limited bot, so for now I can just tell you where to get the Styleguide: https://mrm.egnyte.com/loginDomain.do?redirectUrl=%2Fdl%2Fp91HRfvyzd%2Fquantum_1_Styleguide_V2.pdf_%3Fr%3D1. Let's pretend we just went through the document and move on, shall we? Type *Continue*."
    
  robot.hear /Continue/, (res) ->
    res.send "Well done! You have managed to *complete this tutorial without learning anything at all!* Unfortunately, my creator ran out of time and imagination so we won't be able to continue our tour. It was a pleasure to help you, come back soon, I swear I will prepare some jokes. Have a nice day! Bot out and over."
  
