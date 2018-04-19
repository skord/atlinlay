RSpec.describe Atlinlay do
  it "has a version number" do
    expect(Atlinlay::VERSION).not_to be nil
  end


  it "should preserve capitalization in words" do
    subject = Atlinlay::Translator.new("Kids Are cool")
    expect(subject.translate).to eq("Idskay Areway oolcay")
  end

  it "should preserve periods at the end of sentences" do
    subject = Atlinlay::Translator.new("Kids are cool.")
    expect(subject.translate).to eq("Idskay areway oolcay.")
  end

  it "should preserve other punctuation" do
    subject = Atlinlay::Translator.new("Kids, are, cool.")
    expect(subject.translate).to eq("Idskay, areway, oolcay.")
  end
end
