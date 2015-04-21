require ('rspec')
require ('numbers_to_words.rb')

describe('Fixnum#numbers_to_words') do
  it("takes the numbers 0-19 and returns their written form") do
    expect(7.numbers_to_words()).to(eq("seven"))
  end

  it("takes the numbers 20-99 and returns their written form") do
    expect(25.numbers_to_words()).to(eq("twenty-five"))
  end

  it("takes the numbers 100-999 and returns their written form") do
    expect(333.numbers_to_words()).to(eq("three hundred thirty-three"))
  end

  it("takes the numbers 1000-9999 and returns their written form") do
    expect(1100.numbers_to_words()).to(eq("one thousand one hundred "))
  end
end
