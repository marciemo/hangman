class Display

  def initialize(wordlist)
    @wordlist = wordlist
    @picture = []
    make_empty_display
  end

  def make_empty_display
    @picture[0] =  '    ________________      \n'
    @picture[1] =  '                    |     \n'
    @picture[2] =  '                    |     \n'
    @picture[3] =  '                    |     \n'
    @picture[4] =  '                    |     \n'
    @picture[5] =  '                    |     \n'
    @picture[6] =  '                    |     \n'
    @picture[7] =  '                    |     \n'
    @picture[8] =  '                    |     \n'
    @picture[9] =  '              ______|_____\n'
    @picture[10] = '                          \n'
    @picture[11] = '                          \n'
  end

  def to_s
    @picture.join  
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

  # def make_empty_display
  #   @picture[0] =  '    ________________      \n'
  #   @picture[1] =  '   /\               |     \n'
  #   @picture[2] =  '   \/               |     \n'
  #   @picture[3] =  '    |               |     \n'
  #   @picture[4] =  ' -------            |     \n'
  #   @picture[5] =  '    |               |     \n'
  #   @picture[6] =  '    |               |     \n'
  #   @picture[7] =  '   /\               |     \n'
  #   @picture[8] =  '  /  \              |     \n'
  #   @picture[9] =  '              ______|_____\n'
  #   @picture[10] = '                          \n'
  #   @picture[11] = '                          \n'
  # end

end