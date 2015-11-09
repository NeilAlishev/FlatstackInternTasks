class NumberSequence

  def self.start
    puts 'Enter the number of elements in sequence'
    count = gets.to_i
    number = "1"
    times = 1
    puts number
    while(count>1) do
        result = ""
        c = number[0]
        number = number[1..-1]+" "
        number.chars.each do |char|
          if(c!=char)
            result+= times.to_s+c
            times = 1
            c = char
          else
            times+=1
          end
        end
        number = result
        puts(result)
        count -=1
      end
    end
  end

  NumberSequence.start
