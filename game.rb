require File.join(File.dirname(__FILE__), 'system.rb')
include System

class Game
  def initialize
    init_display
    init_event_queue
  end

  def run
    while event = @event_queue.wait
      p event
      break if event.is_a? Rubygame::Events::KeyPressed
    end  
  end
end

Game.new.run
