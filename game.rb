Dir["./lib/**/*.rb"].each { |src| require src }

class Game
  # Module includes
  include SystemSetup

  # Initialize the game object itself, including the display, event queue, system clock,
  # etc etc.  This is currently all handled in the SystemSetup module.
  def initialize
    init_display [1024,768]
    init_other
  end

  # Main game loop
  def run
    loop do
      handle_input
      update
      draw
      @clock.tick     
    end  
  end
  
  private
    # Handle input
    def handle_input
      @event_queue.each do |event|
        case event
          when Rubygame::QuitEvent
            Rubygame.quit
            exit
          when Rubygame::Events::KeyPressed
            Rubygame.quit
            exit
         end
      end
    end
        
    # Update the game state
    def update
      nil
    end
    
    # Draw the actual game to the screen
    def draw
      nil
    end
end

# Run the game.
Game.new.run
