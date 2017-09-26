# coding: utf-8
require 'dxruby'
font = Font.new(32)
count = 0

require_relative 'player'
require_relative 'enemy'

Window.width  = 1280
Window.height = 720

player_img = Image.load("player2.png")
player_img.setColorKey([0, 0, 0])

enemy_img = Image.load("stone.png")
enemy_img.setColorKey([0, 0, 0])

player = Player.new(1000, 280, player_img)

enemies = []

100.times do
   enemies << Enemy.new(rand(1280), rand(70), enemy_img)
end

Window.loop do

  count += 1

  break if Input.keyPush?(K_ESCAPE)

  Sprite.update(enemies)
  Sprite.draw(enemies)
   
  player.update
  player.draw
  # 当たり判定

  if player === enemies
    Window.draw_font(100, 100, "hit!", font)
    count = 0
  end

  Sprite.check(player, enemies)
  
  Window.draw_font(100, 50, "count : #{count}", font)
  
end