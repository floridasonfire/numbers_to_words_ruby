class Fixnum

define_method (:numbers_to_words) do

hash_1={0 => "", 1=>"one", 2=>"two", 3=>"three", 4=>"four", 5=>"five", 6=>"six", 7=>"seven", 8=>"eight", 9=>"nine", 10=>"ten", 11=>"eleven", 12=>"twelve", 13=>"thirteen", 14=>"fourteen", 15=>"fifteen", 16=>"sixteen", 17=>"seventeen", 18=>"eighteen", 19=>"nineteen" ,20=>"twenty"}


hash_2=
{2=>"twenty-", 3=>"thirty-", 4=>"forty-", 5=>"fifty-", 6=>"sixty-", 7=>"seventy-", 8=>"eighty-", 9=>"ninety-"}

hash_3 =
{1 =>"ten", 2=>"twenty", 3=>"thirty", 4=>"forty", 5=>"fifty", 6=>"sixty", 7=>"seventy", 8=>"eighty", 9=>"ninety"}

result=" "
input_array = []
output_array = []
input_array = self.to_s.split('')

input_array.each() do |string|
  output_array.push(string.to_i())
end

  if hash_1.include?(self)
    result=hash_1.fetch(self)

##Two digit numbers
  elsif (self.to_s()).length()==2
    first_digit2= hash_2.fetch(output_array.at(0))
    second_digit2= hash_1.fetch(output_array.at(1))

    last_two_digits_unique2= hash_3.fetch(output_array.at(0))
    if output_array.at(1)!=0
    result = first_digit2 + second_digit2
    else
      result=last_two_digits_unique2
    end

##Three digit numbers
  elsif (self.to_s).length()==3
    first_digit3= hash_1.fetch(output_array.at(0))
    second_digit3= hash_2.fetch(output_array.at(1))
    third_digit3= hash_1.fetch(output_array.at(0))

    last_two_digits_unique3= (hash_1.fetch(output_array.at(0)) + "hundred" + hash_1.fetch((input_array.at(1) +
    input_array.at(2)).to_i))

      if output_array.at(1) !=0 && output_array.at(2) == 0
        result = hash_1.fetch(output_array.at(0)) + " hundred " + hash_3.fetch(output_array.at(1))
      elsif  output_array.at(2)!=0 && output_array.at(1)!=0
        result = hash_1.fetch(output_array.at(0)) + " hundred " + hash_2.fetch(output_array.at(1)) + hash_1.fetch(output_array.at(2))
      else
        result = hash_1.fetch(output_array.at(0)) + " hundred"
      end

##Four digit numbers
  elsif (self.to_s).length()==4

    third_digit4= hash_2.fetch(output_array.at(2))
    fourth_digit4= hash_1.fetch(output_array.at(3))

    last_two_digits_unique4= (hash_1.fetch(output_array.at(0))+ " thousand " + hash_1.fetch(output_array.at(1)) + "hundred" + hash_1.fetch((input_array.at(2) + input_array.at(3)).to_i))

    last_two_digits_unique_4_dashes= (hash_1.fetch(output_array.at(0))+ " thousand " + hash_1.fetch(output_array.at(1)) + "hundred" + hash_2.fetch(output_array.at(2))+hash_1.fetch(output_array.at(3)))

## if suffix is -000
  if output_array.at(1)+output_array.at(2)+output_array.at(3)==0
        result = hash_1.fetch(output_array.at(0))+" thousand"
## if suffix is -00
    elsif output_array.at(2)+output_array.at(3)==0
        result=hash_1.fetch(output_array.at(0))+ " thousand " +hash_1.fetch(output_array.at(1)) + " hundred"
##if number is -00-
    elsif output_array.at(1)+output_array.at(2)
## if last 3 are greater than 100
      elsif output_array.at(1)!=0
          result=hash_1.fetch(output_array.at(0))+ " thousand " + hash_2.fetch(output_array.at(2)) + hash_1.fetch(output_array.at(3))
##if last is greater than 0
        elsif output_array.at(3)!=0
          result=hash_1.fetch(output_array.at(0))+ " thousand "+ hash_1.fetch(output_array.at(1)) + " hundred " + hash_3.fetch(output_array.at(2))
        elsif output_array.at(2)==1
          result=hash_1.fetch(output_array.at(0))+ " thousand "+ hash_1.fetch(output_array.at(1)) + " hundred " +hash_1.fetch(input_array.at(2).concat(input_array.at(3)).to_i)
        else
          result=hash_1.fetch(output_array.at(0))+ " thousand "+ hash_1.fetch(output_array.at(1)) + " hundred " +hash_3.fetch(output_array.at(2)) + hash_1.fetch(output_array.at(3))
        end

      else

      end


  result
  end
end
