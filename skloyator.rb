class Sklonyator

  def self.sklonenie(number, krokodil, krokodila, krokodilov, with_number = false)
    if(number == nil || !number.is_a?(Numeric))
      number = 0
    end

    prefix = ''
    prefix = "#{number} " if with_number

    ostatok = number % 10
    ostatok100 = number % 100

    if (ostatok100 >= 11 && ostatok100 <= 14)
      return "#{prefix}#{krokodilov}"
    end

    if (ostatok == 1)
      return "#{prefix}#{krokodil}"
    end

    if (ostatok >= 2 && ostatok <= 4)
      return "#{prefix}#{krokodila}"
    end

    if ((ostatok >= 5 && ostatok <= 9) || ostatok == 0)
      return "#{prefix}#{krokodilov}"
    end
  end

end