require ('rspec')
require ('numbers_to_words.rb')
require('pry')

describe('Fixnum#numbers_to_words') do
  it("takes the numbers 0-19 and returns their written form") do
    expect(7.numbers_to_words()).to(eq("seven"))
  end

  it("takes the numbers 20-99 and returns their written form") do
    expect(20.numbers_to_words()).to(eq("twenty"))
  end

  it("takes the numbers 100-999 and returns their written form") do
    expect(120.numbers_to_words()).to(eq("one hundred twenty"))
  end

  it("takes the numbers 1000-9999 and returns their written form") do
    expect(1123.numbers_to_words()).to(eq("one thousand one hundred twenty-three"))
  end
end
