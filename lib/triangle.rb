class Triangle
  # write code here
  attr_accessor :lengthA,:lengthB,:lengthC

  def initialize lengthA, lengthB, lengthC
    @lengthA = lengthA
    @lengthB = lengthB
    @lengthC = lengthC
  end

  def kind
    if @lengthA.is_a?(Numeric) && @lengthB.is_a?(Numeric) && @lengthC.is_a?(Numeric)
      # define which type of triangle this is
      if @lengthA>0 && @lengthB>0 && @lengthC>0
        if @lengthA+@lengthB>@lengthC && @lengthB+@lengthC>@lengthA && @lengthA+@lengthC>@lengthB
          if @lengthA==@lengthB && @lengthA==@lengthC
            :equilateral
          elsif @lengthA==@lengthB || @lengthA == @lengthC || @lengthC == @lengthB
            :isosceles
          else
            :scalene
          end
        else
          raise TriangleError
        end
      else
        raise TriangleError
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def err
      puts "error"
    end
  end

end
