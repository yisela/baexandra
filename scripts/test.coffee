# Components
#

comps = [
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe1.jpg",
  "http://www.mlwebco.com/wp-content/uploads/2013/06/blue-wireframe4.jpg"
]

module.exports = (robot) ->

  robot.hear /comp-/i, (msg) ->
    msg.send msg.random comps