class Display

  def initialize(word_manager)
    @word_manager = word_manager
    @picture = []
    make_empty_display
    @winner = false
  end

  def make_empty_display
    @picture[0] =  "    ________________      \n"
    @picture[1] =  "                    |     \n"
    @picture[2] =  "                    |     \n"
    @picture[3] =  "                    |     \n"
    @picture[4] =  "                    |     \n"
    @picture[5] =  "                    |     \n"
    @picture[6] =  "                    |     \n"
    @picture[7] =  "                    |     \n"
    @picture[8] =  "                    |     \n"
    @picture[9] =  "              ______|_____\n"
    @picture[10] = "                          \n"
    @picture[11] = "                          \n"
  end

  def to_s
    "#{@picture.join}\n\n#{@word_manager}\n"
  end

  def add_body_part
    case @word_manager.wrong_guesses.length
    when 1
      add_head
    when 2
      add_neck
    when 3
      add_trunk
    when 4
      add_left_arm
    when 5
      add_right_arm
    when 6
      add_left_leg
    when 7
      add_right_leg
    end
  end

  def add_head
    @picture[1][3] = "/\\"
    @picture[2][3] = "\\/"
  end

  def add_neck
    @picture[3][4] = "|"
  end

  def add_left_arm
    @picture[4][1] = "----"
  end

  def add_right_arm
    @picture[4][5] = "---"
  end

  def add_trunk
    @picture[5][4] = "|"
    @picture[6][4] = "|"
  end

  def add_left_leg
    @picture[7][3] = "/"
    @picture[8][2] = "/"
  end

  def add_right_leg
    @picture[7][4] = "\\"
    @picture[8][5] = "\\"
  end

  def loser?
    @word_manager.wrong_guesses.length == 7
  end

  def winner?
    @winner
  end
end