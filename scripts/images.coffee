module.exports = (robot) ->
  robot.hear /(kannna|かんな|カンナ|つかれた)/i, (res) ->
    timestamp = (new Date()).toISOString().replace(/[^0-9]/g, "")
    res.send "https://dl.dropboxusercontent.com/u/22254437/images/kanna.jpeg?#{timestamp}"

