class Equation
  def self.solve_quadratic(a, b, c)
    if a == 0
    	if b == 0
    		if c != 0
    			return nil
            end
    	else
    		return [-c/b.to_f]
        end
    else
    	d = b*b-4*a*c

    	if d < 0
    		return nil
    	elsif d == 0
    		return [-b/(2*a)]
    	else
            d = Math.sqrt(d)
    		x1 = (-b+d)/(2*a)
    		x2 = (-b-d)/(2*a)
    		return [x1, x2]
        end
    end
  end
end
