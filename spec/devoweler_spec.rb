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

  it("handles words with vowels and other chars properly") do
    expect("welcome".devoweler).to(eq("w-lc-m-"))
    expect("hello".devoweler).to(eq("h-ll-"))
    expect("interesting".devoweler).to(eq("-nt-r-st-ng"))
    expect("underrated".devoweler).to(eq("-nd-rr-t-d"))
  end

  it("handles multiple word strings properly") do
    expect("ruby is an underrated language, which isn't very hard to learn".devoweler).to(eq("r-by -s -n -nd-rr-t-d l-ng--g-, wh-ch -sn't v-ry h-rd t- l--rn"))
  end
end
