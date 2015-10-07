require 'rubygems'
require 'gosu'

class GameWindow < Gosu::Window
    def initialize
        super 640, 480, false
        self.caption = 'Hello World!'

        @background_image = Gosu::Image.new("media/space.png", :tileable => true)
    end

    def update
    end

    def draw
        @background_image.draw(0, 0, 0)
    end
end

window = GameWindow.new
window.show