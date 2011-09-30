require 'rubygems'
require 'bundler/setup'

Bundler.require

module SystemSetup
  def init_display(resolution=nil)
    max_resolution = Rubygame::Screen.get_resolution
    puts "You can handle a resolution up to #{max_resolution.join(' x ')}"
    default_depth = 0
    
    display_settings = [Rubygame::HWSURFACE, Rubygame::DOUBLEBUF]
    display_settings << Rubygame::FULLSCREEN if resolution.nil? or resolution == max_resolution
    
    @screen = Rubygame::Screen.open (resolution || max_resolution), default_depth, display_settings
    @screen.title = "Simple Ruby Game"
  end
  
  def init_other
    @event_queue = Rubygame::EventQueue.new
    @event_queue.enable_new_style_events
  
    @clock = Rubygame::Clock.new
    @clock.target_framerate = 60
  end
end
