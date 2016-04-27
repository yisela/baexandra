# Description:
#   Some introductory exchanges to get started


module.exports = (robot) ->
  
  # HELLO
  
  robot.hear /Hello/, (res) ->
    res.send "Hello there! My name is Baexandra, but you can call me Baex. Feel free to look around and, when you are ready to get started, just write Baex Start"
    
  robot.hear /Hi/, (res) ->
    res.send "Hi there! My name is Baexandra, but you can call me Baex. Feel free to look around and, when you are ready to get started, just write Baex Start"
    
  robot.hear /Start/, (res) ->
    res.send "Excellent! Let me tell you a bit about the project. Type Baex Quantum to hear the story of the most marvelous design system ever conceived"
    
  robot.hear /Quantum/, (res) ->
    res.send "Well, then. I hope I don't disappoint you. Quantum is not just a set of templates, but a design system. It started about two years ago, and has been evolving ever since. Like most of our projects, the best way to get into it is by downloading the Steyleguide. Let's do that, shall we? Go ahead and type Baex Styleguide. Whenever you are ready."
    
  robot.hear /Styleguide/, (res) ->
    res.send "Excellent choice. You can get the Styleguide from the project fodler, just go to xxx/xxxx and copy the PDF to your local drive so you explore in peace. Take a look at the first ten pages, and come back when you are done. Just type Baex Continue to wake me up, I think I actually hibernate when I don't interact with humans"
    
  robot.hear /Continue/, (res) ->
    res.send "Well done! You are a bit more familiar with Quantum now. Unfortunately, my creator ran out of imagination so I won't be able to continue our tour just yet. It was a pleasure to help you, come back soon for more fulfilling experiences ;)"
  
