require 'slack-ruby-bot'

SlackRubyBot.configure do |config|
  config.aliases = ['umts', 'slackbot', 'sb']
  config.send_gifs = false
end

class SlackBot < SlackRubyBot::Bot
  repo_aliases = {
                  'pvta-multiplatform': 
                    ['pvta', 'multiplatform', 'pm', 'pmulti', 'multi', 'pvta-multiplatform'],
                  'round-three':
                    ['r3', 'round3', 'roundthree', 'round-three'],
                  'jobapps':
                    ['jobapps', 'ja', 'jobapp', 'japps']
                  }

  match /(?<repo>[\w-]*)\s#(?<issue>\d*)/ do |client, data, match|
    repo = repo_aliases.select{|k,v| v.include?(match[:repo])}.keys.first || match[:repo]
    client.say(
               channel: data.channel,
               text: "Detected GitHub link (repo: #{repo}): https://github.com/umts/#{match[:repo]}/issues/#{match[:issue]}"
              )
  end

  match /^roll (?<amt>\d*)$/ do |client, data, match|
    client.say(
               channel: data.channel, 
               text: "<@#{data.user}> rolled a #{rand(match[:amt].to_i)+1}"
               )
  end
end

SlackBot.run