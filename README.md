# transit_bot
### UMass Transit Slack API Bot

Used for auto-linking GitHub issues only provided the issue/pull number of the github issue and the repo (full or shorthand)

Possible ways of referring to repos:

```ruby
{
'pvta-multiplatform': 
  ['pvta', 'multiplatform', 'pm', 'pmulti', 'multi', 'pvta-multiplatform'],
'round-three':
  ['r3', 'round3', 'roundthree', 'round-three'],
'jobapps':
  ['jobapps', 'ja', 'jobapp', 'japps']
}
```

Before attempting to use the bot, make sure you run a `bundle install` to get the Slackbot ruby API gem installed.

To activate this bot (it requires more than just running it with `rb`!), use the following command

```ruby
SLACK_API_TOKEN=token_here bundle exec slackbot.rb
```

If you are part of the UMTS Programmers slack chat, you will be able to access the SLACK_API_TOKEN I am referring to here. Feel free to ask me if you do not know how to (but a quick google search will probably yield the portion of the website where it is).