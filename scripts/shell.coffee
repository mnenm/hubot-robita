module.exports = (robot) ->
  robot.respond /\$ test/, (res) ->
    @exec = require('child_process').exec
    command = "sh /home/mnenm/hubot/hubot-robita/scripts/shell/test.sh"
    res.send "Command: #{command}"
    @exec command, (error, stdout, stderr) ->
      res.send error  if error?
      res.send stdout if stdout?
      res.send stderr if stderr?
