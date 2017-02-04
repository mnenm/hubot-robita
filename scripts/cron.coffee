cron = require('cron').CronJob

module.exports = (robot) ->
  new cron('00 20 * * * *', () =>
    d = new Date
    robot.send(
      { room: "#alias-talking" },
      "Hi! Why don't you have a break? #{d.getHours()}:#{d.getMinutes()}"
    )
  ).start()
