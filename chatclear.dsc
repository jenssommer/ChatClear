chatclear:
  type: Command
  name: cc
  description: Hiermit kannst du denn Chat leeren.
  usage: /cc
  aliases:
  - chatclear
  - clearchat
  - cclear
  - chatc
  - chatcc
  permission: chatclear.cc
  permission message: Sorry, <player.name>, du bist nicht berechtigt den Chat zu leeren!
  script:
  - wait 1s
  - if !<player.has_permission[chatclear.admin]>:
    - announce <n.repeat[100]>
  - wait 1s
  - narrate targets:<server.online_players> "<&a>Terraeko <&7> <&gt><&gt> Der Chat wurde von <&e><player.name><&7> geleert!"
  - actionbar "<&6>Du hast den Chat geleert!"
