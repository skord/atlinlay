RSpec.describe Atlinlay::Word do
  let(:subject) { Atlinlay::Word.new("foobar") }
  it "should have a word" do
    expect(subject).to respond_to(:word)
  end

  context "#translate" do
    it "should properly convert words starting with vowels" do
      subject.word = "Awful"
      expect(subject.translate).to eq("Awfulway")
    end
    it "should properly convert words starting with qu" do
      subject.word = "Queensland"
      expect(subject.translate).to eq("Eenslandquay")
    end
    it "should properly convert words starting with consonants" do
      expect(subject.translate).to eq("oobarfay")
    end
  end
end
