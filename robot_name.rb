class Robot
  VERSION = 1

  @@names = []

  def name
    if @name
      @name
    else
      @name = get_name
      while name_taken?(@name)
        @name = get_name
      end
    end
    @@names << @name
    @name
  end

  def get_name
    letters = (0...2).map {('A'..'Z').to_a[rand(25)]}.join
    numbers = (0...3).map {('0'..'9').to_a[rand(9)]}.join
    letters + numbers
  end

  def reset
    @name = nil
  end

  def name_taken?(name)
    @@names.include?(name)
  end

end