require ('rspec')
require('numbers_to_words')

describe('Fixnum#numbers_to_words')do
  it('converts one digit to written form')do
   expect(2.numbers_to_words()).to(eq('two'))
  end

  it('converts two digits to written form')do
    expect(99.numbers_to_words()).to(eq('ninety nine'))
  end

  it('converts two digits to written form if teen')do
    expect(17.numbers_to_words()).to(eq('seventeen'))
  end

  it('converts three digits to written form')do
    expect(317.numbers_to_words()).to(eq('three hundred seventeen'))
    expect(571.numbers_to_words()).to(eq('five hundred seventy one'))
  end

  it('converts four digits to written form')do
    expect(3171.numbers_to_words()).to(eq('three thousand one hundred seventy one'))
    expect(5710.numbers_to_words()).to(eq('five thousand seven hundred ten'))
  end

  it('converts five digits to written form')do
    expect(31715.numbers_to_words()).to(eq('thirty one thousand seven hundred fifteen'))
    expect(57108.numbers_to_words()).to(eq('fifty seven thousand one hundred eight'))
  end

  it('converts six digits to written form')do
    expect(317154.numbers_to_words()).to(eq('three hundred seventeen thousand one hundred fifty four'))
    expect(571080.numbers_to_words()).to(eq('five hundred seventy one thousand eighty'))
  end

  it('converts seven digits to written form')do
    expect(3171548.numbers_to_words()).
      to(eq('three million one hundred seventy one thousand five hundred forty eight'))
    expect(5710801.numbers_to_words()).
      to(eq('five million seven hundred ten thousand eight hundred one'))
    expect(1000000.numbers_to_words()).
      to(eq('one million'))
  end

  it('converts eight digits to written form')do
    expect(57108016.numbers_to_words()).
      to(eq('fifty seven million one hundred eight thousand sixteen'))
    expect(10000000.numbers_to_words()).
      to(eq('ten million'))
  end
end
