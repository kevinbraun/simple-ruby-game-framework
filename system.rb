require 'rubygems'
require 'rubygame'

module System    
  def init_display
    max_resolution = Rubygame::Screen.get_resolution
    puts "You can handle #{max_resolution.join(' x ')}"
    default_depth = 0
    @screen = Rubygame::Screen.open max_resolution, default_depth, [Rubygame::HWSURFACE, Rubygame::DOUBLEBUF, Rubygame::FULLSCREEN]
    @screen.title = "Ruby Game"
  end
  
  def init_event_queue  
    @event_queue = Rubygame::EventQueue.new
    @event_queue.enable_new_style_events
  end
end
