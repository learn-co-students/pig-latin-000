describe "to_pig_latin" do
  it "converts a word with one consonant in the begining to pig_latin" do
    expect(to_pig_latin("happy")).to eql("appyhay")
  end

  it "converts a word with many consonants in the begining to pig_latin" do
    expect(to_pig_latin("scraper")).to eql("aperscray")
  end

  it "converts a word a vowel in the begining to pig_latin" do
    expect(to_pig_latin("egg")).to eql("eggay")
  end

  it "does not convert an exception word to pig latin" do
    expect(to_pig_latin("to")).to eql("to")
  end

  it "converts a whole sentence to correct pig latin" do
    normal_sentence = "larry page is a great dude"
    piglatinized_sentence = "arrylay agepay isay a eatgray udeday"
    expect(to_pig_latin(normal_sentence)).to eql(piglatinized_sentence)
  end
end