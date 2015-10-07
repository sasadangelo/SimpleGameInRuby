require 'rubygems'
require 'gosu'
require './Player'
require './Star'

module ZOrder
  Background, Stars, Player, UI = *0..3
end

class GameWindow < Gosu::Window
    def initialize
        super 640, 480, false
        self.caption = 'Hello World!'

        @background_image = Gosu::Image.new("media/space.png", :tileable => true)

        @player = Player.new
        @player.warp(320, 240)

        @star_anim = Gosu::Image::load_tiles("media/star.png", 25, 25)
        @stars = Array.new    
    end

    def update
        if Gosu::button_down? Gosu::KbLeft or Gosu::button_down? Gosu::GpLeft then
            @player.turn_left
        end
        if Gosu::button_down? Gosu::KbRight or Gosu::button_down? Gosu::GpRight then
            @player.turn_right
        end
        if Gosu::button_down? Gosu::KbUp or Gosu::button_down? Gosu::GpButton0 then
            @player.accelerate
        end
        @player.move
        @player.collect_stars(@stars)

        if rand(100) < 4 and @stars.size < 25 then
            @stars.push(Star.new(@star_anim))
        end
    end

    def draw
        @player.draw
        @background_image.draw(0, 0, 0)
        @stars.each { |star| star.draw }
    end

    def button_down(id)
        if id == Gosu::KbEscape
            close
        end
    end
end

window = GameWindow.new
window.show