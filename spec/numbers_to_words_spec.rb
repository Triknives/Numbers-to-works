require "rspec"
require "numbers_to_words"

describe('#numbers_to_words') do
  it("Test input for number 1") do
    one = WordConvert.new(1)
    expect(one.word_convert).to(eq("one"))
  end
  it("Test input for number 9") do
    nine = WordConvert.new(9)
    expect(nine.word_convert).to(eq("nine"))
  end
  it("Test input for number 12") do
    twelve = WordConvert.new(12)
    expect(twelve.word_convert).to(eq("twelve"))
  end
  it("Test input for number 19") do
    nineteen = WordConvert.new(19)
    expect(nineteen.word_convert).to(eq("nineteen"))
  end
  it("Test input for number 21") do
    twenty_one = WordConvert.new(21)
    expect(twenty_one.word_convert).to(eq("twentyone"))
  end
  it("Test input for number 83") do
    eighty_three = WordConvert.new(22)
    expect(eighty_three.word_convert).to(eq("twentytwo"))
  end

end
