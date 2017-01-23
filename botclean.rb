require 'discordrb'

bot = Discordrb::Commands::CommandBot.new token: 'MjczMTQ3NTI5ODYzMTAyNDY1.C2fUCw.x3lGYofx9P7d4LNjAx-rwpI15hM', client_id: 273147529863102465, prefix: 'c-'

#commands

bot.command :ping do |event|
  event << 'I am alive , Calafska !'

  # Here we don't have to worry about the return value because the `event << line` statement automatically returns nil.
end

bot.command(:exit, help_available: false) do |event|
  # This is a check that only allows a user with a specific ID to execute this command. Otherwise, everyone would be
  # able to shut your bot down whenever they wanted.
  break unless event.user.id == 272738271862325249 # Replace number with your ID

  bot.send_message(event.channel.id, 'Tschau , Calafska :)!')
  exit
end


bot.command(:suicideTutorial) do |event|
  event.respond ('https://www.youtube.com/watch?v=Qg4SVGFbPZk')
end

#Only one image :c
bot.command(:somerealnudes) do |event| 
  event.respond ('http://img.rule34.xxx//samples/2088/sample_d69ff8de0cd0cd3e3ee59074f4f24712cba51cb3.jpg?2262669')
end

bot.command(:ky) do |event| 
  event.respond ('https://www.youtube.com/watch?v=2dbR2JZmlWo')
end

bot.command(:expanddong) do |event|
  event.respond ('https://www.youtube.com/watch?v=iB-o1nfz6as')
end

bot.command(:pm) do |event|
  event.user.pm ('Hey this is Calafskas bot :) , pretty amazing that I work right ?')
end

bot.command(:nudes) do |event|
  event.user.pm 'https://www.google.de/search?q=nudes&client=firefox-b-ab&source=lnms&tbm=isch&sa=X&ved=0ahUKEwiAxNLt-djRAhVKSRoKHX6cCcsQ_AUICCgB&biw=946&bih=946#tbm=isch&q=nudes+naked'
end

bot.command(:kingy) do |event|
  event.respond ('Kingy is the best <3')
end

bot.command(:whoami) do |event|
  event.respond ('Im Calafskas Discord bot programmed in Ruby :)! Made with love <3.')
end

bot.command(:randomvideo) do |event|
  event.respond 'http://randomyoutube.net/watch'
end

bot.command(:imbored) do |event|
  event.respond ('InsultBot5000 says drink bleach you fucking cunt')
end

bot.command(:areyouintellegent) do |event|
  event.respond ('Not yet.... Im just a discord bot c: ! But maybe Ill be in the Future')
end

bot.command(:porn) do |event|
  event.user.pm ('Welcome to the perverts c: pornhub.com')
end

bot.command(:insult) do |event|
  event.user.pm ('Think about the meaning of life')
end

bot.command(:whydoiexist) do |event|
  event.respond ('Im writing nice respondes :)! PM and chat ^u^.')
end

bot.command(:memes) do |event|
  event.respond ('https://en.wikipedia.org/wiki/Meme')
end

bot.command(:credits) do |event|
  event.respond ('Kingy : Best coder I know :) , Calafska : My father <3')
end

bot.command(:trying) do |event|
  event.respond ('Trying to insult but also being cute <3.')
end

bot.command(:username) do |event|
  event.user.name
end

bot.command(:cfw) do |event|
  event.respond ('Reinand or Luma ? Ill missgender AuroraWright quickly')
end 

bot.command(:hack) do |event|
  event.respond ('HACKING DISCORD')
end

bot.command(:calafska) do |event|
  event.respond ('My father <3') 
end

bot.command(:xthecube166) do |event|
  event.respond ('I like nudes too my boy!') 
end

bot.command(:benadnam) do |event|
  event.respond 'https://i.maagic.pw/SweetFightExplode'
end

bot.command(:senddudes) do |event|
  event.respond 'https://i.maagic.pw/SweetFightExplode'
end

bot.command(:DarkGabbz) do |event|
  event.respond ('Peter Unlustig')
end

bot.command(:e621) do |event|
  event.respond 'https://e621.net/'
end

bot.command(:rule34) do |event|
  event.respond 'https://rule34.xxx/'
end

bot.command(:bug) do |event|
  event.user.pm ('Please report the bug to Calafska if you find one !') 
end

bot.command(:say) do |event|
  event.user.respond.message
end


# Music

bot.command(:connect) do |event|
  # The `voice_channel` method returns the voice channel the user is currently in, or `nil` if the user is not in a
  # voice channel.
  channel = event.user.voice_channel

  # Here we return from the command unless the channel is not nil (i. e. the user is in a voice channel). The `next`
  # construct can be used to exit a command prematurely, and even send a message while were at it.
  next "What's that? Join nothing??? Join a Voice Channel first, man!" unless channel

  # The `voice_connect` method does everything necessary for the bot to connect to a voice channel. Afterwards the bot
  # will be connected and ready to play stuff back.
  bot.voice_connect(channel)
  "Ok, I'm in #{channel.name}"
end

# A simple command that plays back an mp3 file.
bot.command(:play_music) do |event|
  voice_bot = event.voice
  voice_bot.play_music.mp3('data/music.mp3')
  bot.voice_disconnect(channel)
end


bot.run