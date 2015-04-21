class Fixnum

define_method (:numbers_to_words) do

number_hash_1={1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen", 20=>"twenty", 30=> "thirty", 40=> "forty", 50=>"fifty", 60=>"sixty", 70=>"seventy", 80=>"eighty", 90=>"ninety", 100=>"one hundred ", 200=>"two hundred ", 300=>"three hundred ", 400=>"four hundred ", 500=>"five hundred ", 600=>"six hundred ", 700=>"seven hundred ", 800=>"eight hundred", 900=>"nine hundred"}


number_hash_3=
{2=>"twenty-", 3=>"thirty-", 4=>"forty-", 5=>"fifty-", 6=>"sixty-", 7=>"seventy-", 8=>"eighty-", 9=>"ninety-"}


number_hash_5= {1=>"one hundred ", 2=>"two hundred ", 3=>"three hundred ", 4=>"four hundred ", 5=>"five hundred ", 6=>"six hundred ", 7=>"seven hundred ", 8=>"eight hundred", 9=>"nine hundred" }

result=" "
input_array = []
output_array = []
input_array = self.to_s.split('')
input_array.each() do |string|
  output_array.push(string.to_i())
end
  if number_hash_1.include?(self)
    result=number_hash_1.fetch(self)


  elsif (self.to_s()).length()==2

    result = number_hash_3.fetch(output_array.at(0)) +    number_hash_1.fetch(output_array.at(1))

  elsif (self.to_s).length()==3

      if output_array.at(1) ==1
        result = number_hash_5.fetch(output_array.at(0)) + number_hash_1.fetch(((output_array.at(1).to_s).concat((output_array.at(2).to_s))).to_i)
      elsif  output_array.at(2)!=0 && output_array.at(1)!=0
        result = number_hash_5.fetch(output_array.at(0)) + number_hash_3.fetch(output_array.at(1)) + number_hash_1.fetch(output_array.at(2))
      else
        result = number_hash_1.fetch(output_array.at(0))+number_hash_1.fetch(output_array(1))
      end

  elsif (self.to_s).length()==4

      if output_array.at(1)+output_array.at(2)+output_array.at(3)==0
        result = number_hash_1.fetch(output_array.at(0))+" thousand"
      elsif output_array.at(2)+output_array.at(3)==0
        result=number_hash_1.fetch(output_array.at(0))+ " thousand " +number_hash_5.fetch(output_array.at(1))

      end

  else

    end
  result
  end
end
