require('rspec')
require('devoweler')

describe("String#devoweler") do

  # Tests for replacement of single char vowel strings
  it("replaces 'a' with '-'") do
    expect("a".devoweler).to(eq("-"))
  end

  it("replaces 'e' with '-'") do
    expect("e".devoweler).to(eq("-"))
  end

  it("replaces 'i' with '-'") do
    expect("i".devoweler).to(eq("-"))
  end

  it("replaces 'o' with '-'") do
    expect("o".devoweler).to(eq("-"))
  end

  it("replaces 'u' with '-'") do
    expect("u".devoweler).to(eq("-"))
  end

  it("does not alter chars that are not vowels") do
    expect("qwrtypsdfghjklzxcvbnm1234567890-=,./;'[]'!@#$%^&*()_{}").to(eq("qwrtypsdfghjklzxcvbnm1234567890-=,./;'[]'!@#$%^&*()_{}"))
  end
end
