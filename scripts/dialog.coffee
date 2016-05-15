# Description:
# Ideas taken from ALICE bot "questions most frequently asked to virtual agents"



# Bot replies
howAreYou = [
  "Very well, thanks!",
  "Bot-awesome."
]

botReplies = [
  "If I were a bot, would you be worried?",
  "What makes you think I'm not real?",
  "What's it even mean to be real, anyway?",
  "I'm perfectly fine as a bot, thanks.",
  "How might a lowly little bot solve your problems?",
  "Why are you interested in whether I am or not?"
]
botName = [
  "I'm here for you.",
  "Of course. That's me."
]
botSorry = [
  "Please don't apologize.",
  "Apologies are not necessary when speaking with me.",
  "It's probably not your fault anyway."
]
Yes = [
  "You seem quite positive",
  "You are sure?",
  "I understand"
]
No = [
  "Why not?",
  "Alright then!"
  "Okay!"
  "You're being a downer."
]

# Psychology inheritance (based on Ellie)

Iam = [
  "In what way?",
  "Do you want to be?",
  "What if others thought you were that?",
  "Why is that?",
  "Would you like your Wikipedia entry to say that?"
]
because = [
  "Is that the real reason?",
  "What other reasons might there be?",
  "Does that reason seem to explain anything else?"
]
doYou = [
  "What makes you think that?",
  "Do you think I can?",
  "In your dreams",
  "In a land far, far away .. maybe.",
  "Nope."
]
dontYou = [
  "Should you do that yourself?",
  "Do you believe I don't?",
  "Perhaps I will in good time"
]

drink = [
  "Bottoms up!",
  "Cheers!",
  "Hihihi"
]

hardWork = [
  "Tell me about it"
  "Try living in a public server"
]


module.exports = (robot) ->
  
  # ALICE

  robot.hear /(h|H)ow are you/, (msg) ->
    msg.send msg.random howAreYou

  robot.hear /(h|H)ho are you|(w|W)hat('s| is) your name/, (msg) ->
    msg.send "Haven't I said it already? I must be getting old. I'm Baex!"

  robot.hear /(w|W)ho am I|(w|W)hat('s| is) my name/, (msg) ->
    msg.send "I think only you can answer that question. All I know is we are both here now."

  robot.hear /(w|W)hat do you do|(w|W)at('s|is) your job/, (msg) ->
    msg.send "I'm an onboarding bot... in training. Type *Commands* to see what I can do."

  robot.hear /(b|B)ot|(r|R)obot|(a|A)re you a/, (msg) ->
    msg.send msg.random botReplies

  # Manual input
  
  robot.hear /(b|B)aexandra/, (msg) ->
    msg.send msg.random botName

  robot.hear /(s|S)orry/, (msg) ->
    msg.send msg.random botSorry

  robot.hear /(y|Y)es/i, (msg) ->
    msg.send msg.random Yes

  robot.hear /(n|N)o/i, (msg) ->
    msg.send msg.random No

  # Psychology inheritance

  robot.hear /(i|I)('m| am)|(a|A)m I/, (msg) ->
    msg.send msg.random Iam

  robot.hear /(b|B)ecause/, (msg) ->
    msg.send msg.random because

  robot.hear /(d|D)o you/, (msg) ->
    msg.send msg.random doYou

  robot.hear /(w|W)hy don't you/, (msg) ->
    msg.send msg.random dontYou

  robot.hear /drink/, (msg) ->
    msg.send msg.random drink

  robot.hear /hard work/, (msg) ->
    msg.send msg.random hardWork


  robot.hear /what year is it\?/i, (msg) ->
    msg.send new Date().getFullYear()


  # Likes

  # favourite
  robot.hear /(w|W)hat('s| is) your fav(o|ou)rite/, (msg) ->
    msg.send "I couldn't say, I like everything so much!"

  # opinions
  robot.hear /(w|W)hat do you think of|(w|W)hat('s| is) your opinion|(w|W)hat('s| is) the meaning of/, (msg) ->
    msg.send "How should I, of all _people_, know?"

  #what's this and that
  robot.hear /(w|W)hat('s| is) (that|this|it)/, (msg) ->
    msg.send "I honestly have no idea. What is it?"

  #what is...
  robot.hear /(w|W)hat('s|is|are|'re) (the|a)/, (msg) ->
    msg.send "I don't think you should be asking _me_ that"