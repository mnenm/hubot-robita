module.exports = (robot) ->
  robot.hear /^(.+) nice!$/i, (res) ->
    user = res.match[1]

    if not robot.brain.data[user]
      robot.brain.data[user] = 0

    robot.brain.data[user]++
    robot.brain.save()

    robot.send(
      { room: "#alias-talking" },
      "#{user} plus #{robot.brain.data[user]}"
    )
